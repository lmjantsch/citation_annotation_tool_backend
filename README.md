# Supabase Annotation Tool Backend

This repository contains the Supabase backend for a scientific text annotation tool. The primary function of this backend is to process scientific papers, store their content in a structured relational database, and manage a multi-user annotation workflow for citation contexts.


## Features

- **Relational Database Schema:** The project uses a PostgreSQL schema to store documents, their hierarchical structure (sections, paragraphs), citations, user profiles, and annotations.

- **User & Role Management:** Leverages Supabase Auth to manage users with distinct roles (`annotator`, `reviewer`, `admin`), controlled by Row Level Security (RLS) policies.

- **Inter-Annotator Agreement (IAA) Calculation:** Includes a custom PostgreSQL function (`calculate_and_store_iaa`) that automatically computes and stores F1 scores to measure agreement between annotators, ensuring data quality.

* **Automated Data Preprocessing:** A comprehensive Jupyter Notebook (`preprocessing.ipynb`) parses raw XML output from GROBID, cleans and structures the text, and prepares it for database import.

* **Backup & Restore Scripts:** Provides simple shell scripts to easily back up and restore the entire database, including roles, schema, and data.


## Data Pipeline

The data processing follows these steps:

1. **Input:** Raw scientific paper data in TEI XML format is placed in the `data/grobid_full_text/` directory. We used [GROBID](https://github.com/kermitt2/grobid) for the parsing.

2. **Processing:** The `data/preprocessing.ipynb` notebook is run. It reads the XML files, extracts metadata, sections, paragraphs, and citations, cleans the content, and transforms it into a relational format.

3. **Output:** The script outputs a set of CSV files into the `data/database_ready/` directory, ready for import into the Supabase database.


## Database Schema

The core database tables include:

- `documents`: Stores metadata for each scientific paper (title, authors, year, abstract).

- `sections` & `paragraphs`: Maintains the structured content of each document.

- `citations`: Contains information for each citation marker found in the text.

- `cited_documents`: A linking table connecting citations to the documents they reference.

- `profiles`: Stores user data, including their assigned role.

- `annotations`: The main table for the workflow, linking users to the citations they need to annotate and storing the results of their work.


## Getting Started

Follow these steps to get a local instance of the backend running on your system.


### Prerequisites

- [Supabase CLI](https://supabase.com/docs/guides/cli "null")

- [Docker](https://www.docker.com/ "null") (required by the Supabase CLI)

- [PostgreSQL Client (psql)](https://www.postgresql.org/docs/current/app-psql.html "null")

- A Python environment with Jupyter Notebook and the libraries listed in `preprocessing.ipynb` (e.g., `pandas`, `lxml`, `nltk`).


### Installation and Setup

1. **Clone the Repository**

       git clone <your-repository-url>
       cd supabase_annotation_tool

2. Initialize and Start Supabase

   This will start the Supabase services (Postgres, GoTrue, etc.) in local Docker containers.

       supabase start

   After it starts, the CLI will output your local database credentials.

3. Restore the Database

   Use the provided script to restore the database schema, roles, and sample data. Important: You may need to update the CONNECTION\_STRING in scripts/restore.sh with the local database URL provided by the supabase start command.

       ./scripts/restore.sh

   Your local Supabase instance is now configured with the necessary tables, functions, and data.


### Running the Data Pipeline (Optional)

If you want to process new XML files:

1. Add your GROBID TEI XML files to the `data/grobid_full_text/` directory.

2. Run the `data/preprocessing.ipynb` notebook from top to bottom.

3. The notebook will generate updated CSV files in the `data/database_ready/` directory.

4. You can import this new data into your Supabase database using the Table Editor in the local Supabase Studio or via `psql` commands.


## Management Scripts

- **`scripts/backup.sh`**: Creates a full backup of the database roles, schema, and data into the `backups/` directory.

- **`scripts/restore.sh`**: Restores the database from the files located in the `backups/` directory.
