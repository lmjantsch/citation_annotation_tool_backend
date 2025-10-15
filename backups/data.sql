SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	1006eab0-447f-4ef2-8dfa-b4123a600559	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"max@muster.mann","user_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","user_phone":""}}	2025-10-13 08:51:58.322327+00	
00000000-0000-0000-0000-000000000000	563de163-37bf-4f5e-b167-351ab70815dd	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"erika@muster.mann","user_id":"907f4be7-ac0e-480c-8e51-a99f52011653","user_phone":""}}	2025-10-13 08:52:30.524184+00	
00000000-0000-0000-0000-000000000000	1fd40642-9129-47a6-b222-d617fccd6beb	{"action":"login","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-13 13:06:30.204091+00	
00000000-0000-0000-0000-000000000000	759cf5e4-4804-4b86-80c3-2cf99ea70b1b	{"action":"login","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-13 13:06:32.97581+00	
00000000-0000-0000-0000-000000000000	1bc93d57-45a7-4996-a3f4-9766ef9ed4ff	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-13 14:14:37.961696+00	
00000000-0000-0000-0000-000000000000	a71c2407-b30a-4b9d-8779-8a9262af7741	{"action":"token_revoked","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-13 14:14:37.966225+00	
00000000-0000-0000-0000-000000000000	14d04dd6-6182-4fe9-bb38-71dc5016fe2b	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 00:55:11.188635+00	
00000000-0000-0000-0000-000000000000	380fe690-16b4-49fc-8fdb-552762e4bea7	{"action":"token_revoked","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 00:55:11.193575+00	
00000000-0000-0000-0000-000000000000	c9f4e05d-7c74-456b-b947-34e96c501a54	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 00:55:13.988224+00	
00000000-0000-0000-0000-000000000000	7e95dd8b-52aa-4a44-a81e-6da6be4d6a21	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 00:55:21.461638+00	
00000000-0000-0000-0000-000000000000	5055a926-95f5-4a19-921d-9b6d6237ddd2	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"reviewer@muster.mann","user_id":"1b72e486-49a7-4ea9-b150-1bde29d73318","user_phone":""}}	2025-10-14 01:21:43.428624+00	
00000000-0000-0000-0000-000000000000	87c9a8b1-c142-4f70-98e4-533d57a05651	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"admin@muster.mann","user_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","user_phone":""}}	2025-10-14 01:22:40.13534+00	
00000000-0000-0000-0000-000000000000	884b57c9-7bb3-4764-a6b5-5f203d0f3568	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 01:59:06.267229+00	
00000000-0000-0000-0000-000000000000	7c2f0516-ce43-4143-a7f6-7810e760111b	{"action":"token_revoked","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 01:59:06.275813+00	
00000000-0000-0000-0000-000000000000	12f7f64d-1b86-4b18-98ed-bc9faebd3f33	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 02:59:22.848273+00	
00000000-0000-0000-0000-000000000000	4a9173bb-1984-4b49-893a-7eeebf6f0a99	{"action":"token_revoked","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 02:59:22.853179+00	
00000000-0000-0000-0000-000000000000	e30a8d27-b7b9-4b8a-b371-70e5522e7cb1	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 04:06:15.992157+00	
00000000-0000-0000-0000-000000000000	22e61ca5-35df-4b23-a9ed-c8d5ee3f5058	{"action":"token_revoked","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 04:06:15.995753+00	
00000000-0000-0000-0000-000000000000	046cbfa6-e178-4b18-8f62-c1f774804f7b	{"action":"logout","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"account"}	2025-10-14 04:36:24.691628+00	
00000000-0000-0000-0000-000000000000	2165d2cc-b8bb-45ac-925d-210e56e506fb	{"action":"login","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-14 04:36:36.439646+00	
00000000-0000-0000-0000-000000000000	32cdc2a9-2c1e-4a47-86b7-0ffc51caf640	{"action":"logout","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"account"}	2025-10-14 04:44:57.032919+00	
00000000-0000-0000-0000-000000000000	a9aebd3d-b411-4b72-ba6c-c5ed27ec7c32	{"action":"login","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-14 04:45:06.523041+00	
00000000-0000-0000-0000-000000000000	b0c6772d-c094-49a9-8e19-eb06f33346cd	{"action":"token_refreshed","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 06:07:09.014258+00	
00000000-0000-0000-0000-000000000000	693eee21-2438-4d74-9b55-902b8ef2708c	{"action":"token_revoked","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 06:07:09.019043+00	
00000000-0000-0000-0000-000000000000	83594bce-20c2-4a9c-8bbd-0551d6a02ab9	{"action":"token_refreshed","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 07:07:45.692273+00	
00000000-0000-0000-0000-000000000000	9f6de1a2-d6c1-4c86-921e-755c7bb0a3ea	{"action":"token_revoked","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 07:07:45.697405+00	
00000000-0000-0000-0000-000000000000	ee22ee6a-887d-4843-bdbd-8c0ed90d4dd9	{"action":"token_refreshed","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 08:10:52.971756+00	
00000000-0000-0000-0000-000000000000	b9a0904a-f1a1-44dd-9b56-d8f330047e17	{"action":"token_revoked","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 08:10:52.976617+00	
00000000-0000-0000-0000-000000000000	ae268b5f-1d39-445b-a85d-870589ab3e4b	{"action":"token_refreshed","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 12:08:12.253783+00	
00000000-0000-0000-0000-000000000000	a6150c12-dd6b-4d38-bfc1-96539b72944a	{"action":"token_revoked","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 12:08:12.26124+00	
00000000-0000-0000-0000-000000000000	662998cd-fa44-4833-ac10-1f4c18cec159	{"action":"logout","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"account"}	2025-10-14 12:08:22.658528+00	
00000000-0000-0000-0000-000000000000	34ba2adf-ba7f-441e-9114-baf82807670a	{"action":"login","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-14 12:08:37.020733+00	
00000000-0000-0000-0000-000000000000	59a9abbc-8677-4520-bcf9-c5443294f7c2	{"action":"token_refreshed","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 14:25:15.2369+00	
00000000-0000-0000-0000-000000000000	ba48f0cb-5846-4c27-bc87-61cef3080636	{"action":"token_revoked","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-14 14:25:15.240094+00	
00000000-0000-0000-0000-000000000000	6dd2bd3b-6d03-4746-9722-817c11b44db8	{"action":"logout","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"account"}	2025-10-14 14:25:18.503903+00	
00000000-0000-0000-0000-000000000000	c5ab3aa5-6aa3-4580-ba48-85d4dc5e789a	{"action":"login","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-14 14:25:27.02386+00	
00000000-0000-0000-0000-000000000000	2d509e33-41ec-4455-80e6-038ce5679981	{"action":"token_refreshed","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 00:34:12.774228+00	
00000000-0000-0000-0000-000000000000	3abd9ceb-0971-4dcb-81b3-24b9904e70b4	{"action":"token_revoked","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 00:34:12.779322+00	
00000000-0000-0000-0000-000000000000	897ec909-9765-4039-9410-7a4ba27a3308	{"action":"token_refreshed","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 01:39:04.589521+00	
00000000-0000-0000-0000-000000000000	ae835a4a-a6f8-4558-8148-91e7de8478d7	{"action":"token_revoked","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 01:39:04.592606+00	
00000000-0000-0000-0000-000000000000	ce96ad79-c377-43e0-901c-1f67cae08b15	{"action":"logout","actor_id":"907f4be7-ac0e-480c-8e51-a99f52011653","actor_username":"erika@muster.mann","actor_via_sso":false,"log_type":"account"}	2025-10-15 02:30:48.682377+00	
00000000-0000-0000-0000-000000000000	0a9495d3-5a6a-4e71-a799-1b3a6846577a	{"action":"login","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-15 02:31:04.129739+00	
00000000-0000-0000-0000-000000000000	683cfad2-1be3-4427-ac0f-0b4f7085feea	{"action":"token_refreshed","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 04:11:53.471516+00	
00000000-0000-0000-0000-000000000000	776b58e8-d1a8-42de-b498-c556899e66aa	{"action":"token_revoked","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 04:11:53.474747+00	
00000000-0000-0000-0000-000000000000	38478d37-9791-4d43-ae41-668332967b77	{"action":"logout","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"account"}	2025-10-15 04:53:32.317941+00	
00000000-0000-0000-0000-000000000000	8804b935-671b-4204-8aed-e1800ebcf5b1	{"action":"login","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-15 04:53:54.006896+00	
00000000-0000-0000-0000-000000000000	d904836c-a2e3-42c0-82f9-fad34e623a6d	{"action":"token_refreshed","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 07:50:32.583292+00	
00000000-0000-0000-0000-000000000000	e91b19d3-d1d2-4dc3-935c-4e490b10845b	{"action":"token_revoked","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 07:50:32.598102+00	
00000000-0000-0000-0000-000000000000	9a609d1f-3089-4877-9b23-eb926a1824e7	{"action":"token_refreshed","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 08:50:36.777916+00	
00000000-0000-0000-0000-000000000000	a096328c-3299-4a0a-ba49-43006c816f4c	{"action":"token_revoked","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"token"}	2025-10-15 08:50:36.781743+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	1b72e486-49a7-4ea9-b150-1bde29d73318	authenticated	authenticated	reviewer@muster.mann	$2a$10$ypjeG1APpwsbbixB47Sv0e.iHe7LG6C1RPRL/GEc3r6cSFg59zdEO	2025-10-14 01:21:43.431073+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-10-14 01:21:43.423737+00	2025-10-14 01:21:43.431688+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	907f4be7-ac0e-480c-8e51-a99f52011653	authenticated	authenticated	erika@muster.mann	$2a$10$Mk.DEQggUai7Aq1Ay0/XdudL2EAJP7dVVl4wBT.LjHShYHmFiczNa	2025-10-13 08:52:30.537619+00	\N		\N		\N			\N	2025-10-14 14:25:27.024958+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-10-13 08:52:30.521689+00	2025-10-15 01:39:04.59652+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	17a7019f-4eb1-40fb-8c66-e2953af5f4be	authenticated	authenticated	max@muster.mann	$2a$10$KutE5RioJKMFLsxEDHQ2OuGm6eZQUh2YQHHtHY7MDBn9V4TSbQ/Xq	2025-10-13 08:51:58.325301+00	\N		\N		\N			\N	2025-10-15 02:31:04.131009+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-10-13 08:51:58.316123+00	2025-10-15 04:11:53.480192+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	23a359b5-a3c7-4b99-8088-2e23f679df7f	authenticated	authenticated	admin@muster.mann	$2a$10$P3ryiCrBBcL/hw0T1VDyBurXZNnxH.faxch0G5db3mJZk/.rQE2p2	2025-10-14 01:22:40.136546+00	\N		\N		\N			\N	2025-10-15 04:53:54.008217+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-10-14 01:22:40.133121+00	2025-10-15 08:50:36.792763+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
17a7019f-4eb1-40fb-8c66-e2953af5f4be	17a7019f-4eb1-40fb-8c66-e2953af5f4be	{"sub": "17a7019f-4eb1-40fb-8c66-e2953af5f4be", "email": "max@muster.mann", "email_verified": false, "phone_verified": false}	email	2025-10-13 08:51:58.321034+00	2025-10-13 08:51:58.3211+00	2025-10-13 08:51:58.3211+00	195fab91-baca-455a-ad72-885a610cc15d
907f4be7-ac0e-480c-8e51-a99f52011653	907f4be7-ac0e-480c-8e51-a99f52011653	{"sub": "907f4be7-ac0e-480c-8e51-a99f52011653", "email": "erika@muster.mann", "email_verified": false, "phone_verified": false}	email	2025-10-13 08:52:30.523123+00	2025-10-13 08:52:30.523373+00	2025-10-13 08:52:30.523373+00	901edfc2-6df7-42cb-9334-0c5332d84409
1b72e486-49a7-4ea9-b150-1bde29d73318	1b72e486-49a7-4ea9-b150-1bde29d73318	{"sub": "1b72e486-49a7-4ea9-b150-1bde29d73318", "email": "reviewer@muster.mann", "email_verified": false, "phone_verified": false}	email	2025-10-14 01:21:43.427337+00	2025-10-14 01:21:43.427367+00	2025-10-14 01:21:43.427367+00	79cd7cf3-0261-46e4-b621-9693aa367fc5
23a359b5-a3c7-4b99-8088-2e23f679df7f	23a359b5-a3c7-4b99-8088-2e23f679df7f	{"sub": "23a359b5-a3c7-4b99-8088-2e23f679df7f", "email": "admin@muster.mann", "email_verified": false, "phone_verified": false}	email	2025-10-14 01:22:40.134666+00	2025-10-14 01:22:40.134693+00	2025-10-14 01:22:40.134693+00	160e1c62-ac7f-4883-8be0-b7f8617fc6a2
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id") FROM stdin;
fb637b65-4371-4254-8f8e-61f7041d0348	23a359b5-a3c7-4b99-8088-2e23f679df7f	2025-10-15 04:53:54.008338+00	2025-10-15 08:50:36.794952+00	\N	aal1	\N	2025-10-15 08:50:36.794917	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36	172.217.161.42	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
fb637b65-4371-4254-8f8e-61f7041d0348	2025-10-15 04:53:54.016077+00	2025-10-15 04:53:54.016077+00	password	c2e57fde-e26d-4bb0-868d-559f28231294
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	21	uh3agmwoabby	23a359b5-a3c7-4b99-8088-2e23f679df7f	t	2025-10-15 04:53:54.012458+00	2025-10-15 07:50:32.601128+00	\N	fb637b65-4371-4254-8f8e-61f7041d0348
00000000-0000-0000-0000-000000000000	22	tpfuh3juvt5r	23a359b5-a3c7-4b99-8088-2e23f679df7f	t	2025-10-15 07:50:32.610075+00	2025-10-15 08:50:36.782804+00	uh3agmwoabby	fb637b65-4371-4254-8f8e-61f7041d0348
00000000-0000-0000-0000-000000000000	23	seufywzhw4lr	23a359b5-a3c7-4b99-8088-2e23f679df7f	f	2025-10-15 08:50:36.789723+00	2025-10-15 08:50:36.789723+00	tpfuh3juvt5r	fb637b65-4371-4254-8f8e-61f7041d0348
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."documents" ("id", "created_at", "title", "authors", "pub_year", "abstract") FROM stdin;
8ff548f3-8f25-4236-a5a6-84e051aa44ea	2025-10-13 13:00:59.327066+00	unknown	unknown	unknown	unknown
3f136bed-096a-4f74-9455-0f2fdbe14d38	2025-10-13 13:00:59.327066+00	FINECITE: A Novel Approach For Fine-Grained Citation Context Analysis	Lasse Jantsch ,Dong-Jae Koh ,Seonghwan Yoon ,Jisu Lee ,Anne Lauscher ,Young-Kyoon Suh	2025	Citation context analysis (CCA) is a field of research studying the role and purpose of citation in scientific discourse. While most of the efforts in CCA have been focused on elaborate characterization schemata to assign function or intent labels to individual citations, the citation context as the basis for such a classification has received rather limited attention. This relative neglect, however, has led to the prevalence of vague definitions and restrictive assumptions, limiting the citation context in its expressiveness. It is a common practice, for example, to restrict the context to the citing sentence. While this simple context conceptualization might be sufficient to assign intent or function classes, it fails to cover the rich information of scientific discourse. To address this concern, we analyze the context conceptualizations of previous works and, to our knowledge, construct the first comprehensive context definition based on the semantic properties of the citing text. To evaluate this definition, we construct and publish the FINECITE corpus containing 1,056 manually annotated citation contexts. Our experiments on established CCA benchmarks demonstrate the effectiveness of our fine-grained context definition, showing improvements of up to 25% compared to state-of-the-art approaches. We make our code and data publicly available.
9abad173-cf92-4f9f-98e4-13af0b00becb	2025-10-13 13:00:59.327066+00	Purpose and polarity of citation: Towards NLPbased bibliometrics	Amjad Abu-Jbara ,Jefferson Ezra ,Dragomir Radev	unknown	\N
014340db-4e43-4bd9-bd5c-9b5e049ec378	2025-10-13 13:00:59.327066+00	Reference scope identification in citing sentences	Amjad Abu ,-Jbara unk ,Dragomir Radev	unknown	\N
423b3ae1-7199-45fc-8993-ab1d60ad508e	2025-10-13 13:00:59.327066+00	unknown	Josh Achiam ,Steven Adler ,Sandhini Agarwal ,Lama Ahmad ,Ilge Akkaya ,Florencia Leoni Aleman ,Diogo Almeida ,Janko Altenschmidt ,Sam Altman	unknown	\N
d444d507-7f14-47ce-a71d-3c3e94339464	2025-10-13 13:00:59.327066+00	Detection of implicit citations for sentiment detection	Awais Athar ,Simone Teufel	unknown	\N
75df7824-a99c-4f22-860b-3484709cb7ec	2025-10-13 13:00:59.327066+00	SciB-ERT: A pretrained language model for scientific text	Iz Beltagy ,Kyle Lo ,Arman Cohan	unknown	\N
2bcaafd9-0741-408f-9fcb-527af21ccfe8	2025-10-13 13:00:59.327066+00	Language Models are Few-Shot Learners	Tom Brown ,Benjamin Mann ,Nick Ryder ,Melanie Subbiah ,Jared Kaplan ,Prafulla Dhariwal ,Arvind Neelakantan ,Pranav Shyam ,Girish Sastry ,Amanda Askell	unknown	\N
a5944ff2-6513-432e-b2f1-c9502d5ef4cf	2025-10-13 13:00:59.327066+00	Structural scaffolds for citation intent classification in scientific publications	Arman Cohan ,Waleed Ammar ,Madeleine Van Zuylen ,Field Cady	unknown	\N
783487b0-7e5d-4d5f-851f-40bee7a5bc5b	2025-10-13 13:00:59.327066+00	A coefficient of agreement for nominal scales	Jacob Cohen	unknown	\N
3c11bb83-f7da-4bbd-a4c3-b8dbf73a0731	2025-10-13 13:00:59.327066+00	A dataset of information-seeking questions and answers anchored in research papers	Pradeep Dasigi ,Kyle Lo ,Iz Beltagy ,Arman Cohan ,Noah Smith ,Matt Gardner	unknown	\N
105dfc42-7606-401a-b47d-c43c9a3cda3a	2025-10-13 13:00:59.327066+00	From local to global: A graph rag approach to query-focused summarization	Darren Edge ,Ha Trinh ,Newman Cheng ,Joshua Bradley ,Alex Chao ,Apurva Mody ,Steven Truitt ,Jonathan Larson	unknown	\N
e9ffc682-2ae4-48f8-95e1-1b754ec9c5ab	2025-10-13 13:00:59.327066+00	Structured Semantic Modeling of Scientific Citation Intents	Roger Ferrod ,Luigi Caro ,Claudio Schifanella	unknown	\N
82f6b3ab-7dea-4667-a19c-ea906c25a458	2025-10-13 13:00:59.327066+00	Citation analysis as a tool in journal evaluation	Eugene Garfield	unknown	\N
77b6bf97-1392-4be6-a724-fc57df5756c5	2025-10-13 13:00:59.327066+00	Long short-term memory	Sepp Hochreiter ,Jürgen Schmidhuber	unknown	\N
6ef7acd2-4774-4768-86ee-256b7552bfb4	2025-10-13 13:00:59.327066+00	Technical brief: Agreement, the f-measure, and reliability in information retrieval	George Hripcsak ,Adam Rothschild	unknown	\N
5b199f71-ed8e-4075-acaf-15e8ce051da5	2025-10-13 13:00:59.327066+00	Measuring the evolution of a scientific field through citation frames	David Jurgens ,Srijan Kumar ,Raine Hoover ,Dan Mc-Farland ,Dan Jurafsky	unknown	\N
f8bae953-e1de-451a-b07e-bd294d3de9d1	2025-10-13 13:00:59.327066+00	A meta-analysis of semantic classification of citations	N Suchetha ,Drahomira Kunnath ,David Herrmannova ,Petr Pride ,unk Knoth	unknown	\N
ffbd34d6-f4ae-454c-aff0-a508598b4189	2025-10-13 13:00:59.327066+00	Conditional random fields: Probabilistic models for segmenting and labeling sequence data	John Lafferty ,Andrew Mccallum ,Fernando Pereira	unknown	\N
7681421c-91d0-4f96-b4ef-cf97759b1505	2025-10-13 13:00:59.327066+00	An argument-annotated corpus of scientific publications	Anne Lauscher ,Goran Glavaš ,Simone Paolo ,Ponzetto unk	unknown	\N
5e4b2bdc-e051-42be-af87-8d733ea0b18b	2025-10-13 13:00:59.327066+00	Investigating convolutional networks and domain-specific embeddings for semantic classification of citations	Anne Lauscher ,Goran Glavaš ,Simone Paolo Ponzetto ,Kai Eckert	unknown	\N
5bfcec5b-6783-4b9a-98db-a0bfc8449ab6	2025-10-13 13:00:59.327066+00	MultiCite: Modeling realistic citations requires moving beyond the single-sentence singlelabel setting	Anne Lauscher ,Brandon Ko ,Bailey Kuehl ,Sophie Johnson ,Arman Cohan ,David Jurgens ,Kyle Lo	unknown	\N
9e690ec4-c4aa-41a9-b708-12aa782e4da2	2025-10-13 13:00:59.327066+00	Retrieval-augmented generation for knowledgeintensive nlp tasks	Patrick Lewis ,Ethan Perez ,Aleksandara Piktus ,Fabio Petroni ,Vladimir Karpukhin ,Naman Goyal ,Heinrich Kuttler ,Mike Lewis ,Wen Tau Yih ,Tim Rocktäschel ,Sebastian Riedel ,Douwe Kiela	unknown	\N
e4fbb4b1-94ac-4d73-9921-2cac46236090	2025-10-13 13:00:59.327066+00	Decoupled weight decay regularization	Ilya Loshchilov ,Frank Hutter	unknown	\N
2c420f36-0f0a-4949-8cdb-e52ef460c039	2025-10-13 13:00:59.327066+00	SciBERT sentence representation for citation context classification	Himanshu Maheshwari ,Bhavyajeet Singh ,Vasudeva Varma	unknown	\N
507ff961-262e-4f4b-b143-2a270b121be9	2025-10-13 13:00:59.327066+00	Overview of the 2021 SDP 3C citation context classification shared task	N Suchetha ,David Kunnath ,Drahomira Pride ,Petr Herrmannova ,unk Knoth	unknown	\N
78eaf296-9b0b-4d53-ad77-64f77e4597c3	2025-10-13 13:00:59.327066+00	Dynamic context extraction for citation classification	Nambanoor Suchetha ,David Kunnath ,Petr Pride ,unk Knoth	unknown	\N
9eb749c7-e1ae-4b1a-a223-2e655b908917	2025-10-13 13:00:59.327066+00	An authoritative approach to citation classification	David Pride ,Petr Knoth	unknown	\N
339bcec8-031f-4f70-b727-42266ce6c649	2025-10-13 13:00:59.327066+00	The ACL Anthology network corpus	R Dragomir ,Pradeep Radev ,Vahed Muthukrishnan ,unk Qazvinian	unknown	\N
587a225b-2c74-422d-a29d-98d4c7d9128b	2025-10-13 13:00:59.327066+00	Fine-tuning language models on multiple datasets for citation intention classification	Zeren Shui ,Petros Karypis ,Daniel Karls ,Mingjian Wen ,Saurav Manchanda ,B Ellad ,George Tadmor ,unk Karypis	unknown	\N
ec6c4c38-a509-448b-80ca-ca6dd2bc1dca	2025-10-13 13:00:59.327066+00	Scientific argumentation detection as limited-domain intention recognition	Simone Teufel	unknown	\N
af8cdb44-5c50-471c-9aa2-cb0edb991947	2025-10-13 13:00:59.327066+00	Automatic classification of citation function	Simone Teufel ,Advaith Siddharthan ,Dan Tidhar	unknown	\N
523e8165-23c4-4303-9d4f-7cc3c28f8fb8	2025-10-13 13:00:59.327066+00	Attention is all you need	Ashish Vaswani ,Noam Shazeer ,Niki Parmar ,Jakob Uszkoreit ,Llion Jones ,Aidan Gomez ,Lukasz Kaiser ,Illia Polosukhin	unknown	\N
3b5144d4-850f-4a49-afa3-3ba18a9248a3	2025-10-13 13:00:59.327066+00	Sciriff: A resource to enhance language model instruction-following over scientific literature	David Wadden ,Kejian Shi ,Jacob Daniel Morrison ,Aakanksha Naik ,Shruti Singh ,Nitzan Barzilay ,Kyle Lo ,Tom Hope ,Luca Soldaini ,Shannon Shen ,Doug Downey ,Hanna Hajishirzi ,Arman Cohan	unknown	\N
7977fbe1-8ab0-44bb-b35f-023d8c4ef5cc	2025-10-13 13:00:59.327066+00	HuggingFace's Transformers: Stateof-the-art Natural Language Processing	Thomas Wolf ,Lysandre Debut ,Victor Sanh ,Julien Chaumond ,Clement Delangue ,Anthony Moi ,Pierric Cistac ,Tim Rault ,Rémi Louf ,Morgan Funtowicz	unknown	\N
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sections" ("id", "created_at", "section_title", "document_id") FROM stdin;
80f4b1bb-60a1-481f-9ac7-49c3af026b3d	2025-10-13 13:01:15.407535+00	Introduction	3f136bed-096a-4f74-9455-0f2fdbe14d38
897ac9a9-e59d-4821-9b8f-ed290e0eda2f	2025-10-13 13:01:15.407535+00	Related Work	3f136bed-096a-4f74-9455-0f2fdbe14d38
d0ac446b-c55a-4afd-a710-1ca130b39eff	2025-10-13 13:01:15.407535+00	Fine-Grained Citation Context	3f136bed-096a-4f74-9455-0f2fdbe14d38
a0797452-a744-48bb-abbf-ec37d73fe5c0	2025-10-13 13:01:15.407535+00	Dataset Construction	3f136bed-096a-4f74-9455-0f2fdbe14d38
f71ed9d1-87ba-44e9-bf12-b366f5f17c90	2025-10-13 13:01:15.407535+00	Citation Context Extraction	3f136bed-096a-4f74-9455-0f2fdbe14d38
84ad10c6-cf56-419d-857b-87859de4a9b0	2025-10-13 13:01:15.407535+00	Citation Context Classification	3f136bed-096a-4f74-9455-0f2fdbe14d38
337b0093-2a56-4346-b3a4-700b58eca2d5	2025-10-13 13:01:15.407535+00	Classification model.	3f136bed-096a-4f74-9455-0f2fdbe14d38
0b335556-f5f4-497b-92d8-4cc666e8d1d7	2025-10-13 13:01:15.407535+00	Conclusion	3f136bed-096a-4f74-9455-0f2fdbe14d38
8330dad8-0575-4985-859d-78c3fb34ac09	2025-10-13 13:01:15.407535+00	E.2.1 What does the annotation task look like?	3f136bed-096a-4f74-9455-0f2fdbe14d38
3cbbf86f-ff91-420f-84fd-9542d6dcac48	2025-10-13 13:01:15.407535+00	E.3 What is the citation context?	3f136bed-096a-4f74-9455-0f2fdbe14d38
ee3dd63a-9651-4421-a600-26114e242624	2025-10-13 13:01:15.407535+00	E.4 General Rules	3f136bed-096a-4f74-9455-0f2fdbe14d38
ff6d4df0-f51c-4987-be00-326da2f921cf	2025-10-13 13:01:15.407535+00	5.	3f136bed-096a-4f74-9455-0f2fdbe14d38
6948964f-6c89-4658-b089-37bbc1cf349e	2025-10-13 13:01:15.407535+00	SCAFFOLDS	3f136bed-096a-4f74-9455-0f2fdbe14d38
347f8481-f796-4ef6-a6b9-879b8a3b25f9	2025-10-13 13:01:15.407535+00	CONTRIBUTION + FACT	3f136bed-096a-4f74-9455-0f2fdbe14d38
5295ab27-65b6-486b-be53-c1ea936e932a	2025-10-13 13:01:15.407535+00	CONTRIBUTION + PURPOSE	3f136bed-096a-4f74-9455-0f2fdbe14d38
22d53094-bdd4-418c-be4e-98e42fea3d74	2025-10-13 13:01:15.407535+00	JUDGMENT + COMPARISON	3f136bed-096a-4f74-9455-0f2fdbe14d38
e2f32985-d93b-406f-84fd-051b72745f3e	2025-10-13 13:01:15.407535+00	PROCESS	3f136bed-096a-4f74-9455-0f2fdbe14d38
abddca14-5dc0-4a3a-9d0f-34f05577c1f8	2025-10-13 13:01:15.407535+00	RELATIONAL JUDGEMENT	3f136bed-096a-4f74-9455-0f2fdbe14d38
4b803923-fd13-4b89-8bff-04b392b6dfb1	2025-10-13 13:01:15.407535+00	JUDGMENT + COMPARISON	3f136bed-096a-4f74-9455-0f2fdbe14d38
23b09248-aa77-4d76-b789-9b063c870441	2025-10-13 13:01:15.407535+00	CONCEPT + USE	3f136bed-096a-4f74-9455-0f2fdbe14d38
9d141a14-aaa4-45a7-b6c4-92b0baa47848	2025-10-13 13:01:15.407535+00	CONCEPT + JUDGEMENT	3f136bed-096a-4f74-9455-0f2fdbe14d38
dd1e2c0f-8626-41d2-97ea-82f6ce4f8d2d	2025-10-13 13:01:15.407535+00	LOCATION, PERSONA, TIME of BACKGROUND	3f136bed-096a-4f74-9455-0f2fdbe14d38
\.


--
-- Data for Name: paragraphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."paragraphs" ("id", "created_at", "section_id", "text") FROM stdin;
e29adf0f-4774-40d1-bdee-f099318ea3be	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	Scientific;research;is;inherently;collaborative,;with;each;discovery;building;upon;a;foundation;of;prior;studies.;To;acknowledge;previous;work;and;provide;credit,;it;is;standard;practice;to;include;citations;that;connect;past;findings;to;new;contributions.;By;embedding;scientific;progress;and;argumentation,;citations;serve;a;critical;function;that;has;been;extensively;examined-a;research;field;known;as;citation;context;analysis;(CCA);<ref type="group">(Kunnath et al., 2022; Swales, 1986)</ref>;.;In;computational;linguistics,;CCA;is;mainly;concerned;with;the;automatic;classification;of;citations;along;various;dimensions,;such;as;citation;function;<ref type="group">(Lauscher et al., 2022; Cohan et al., 2019; Jurgens et al., 2018; Teufel et al., 2006)</ref>;,;sentiment;<ref type="group">(Lauscher et al., 2017; Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;,;or;influence;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019)</ref>;.;Given;a;passage;of;text;surrounding;a;citation;marker-referred;to;as;the;citation;context-one;or;more;classes;from;a;predefined;citation;classification;scheme;are;assigned.
582c909b-6203-47b9-9a03-c45797618cce	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	Although;a;considerable;amount;of;research;has;explored;different;classification;schemes;and;methods,;the;citation;context;has;received;relatively;little;attention.;This;lack;of;focus;has;led;to;an;absence;of;a;comprehensive;definition;and;datasets;with;overly;simplistic;and;coarse-grained;citation;contexts;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019)</ref>;.
a86a85cb-ea76-4eb8-8fc9-33f590582189	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	To;address;this;concern,;we;analyze;different;context;conceptualizations;in;previous;work;and;provide;a;new;comprehensive;definition;based;on;the;semantic;information;of;the;citing;text.;A;visual;comparison;is;provided;in;Figure;1.
efc601e8-0dc1-4a66-8e0d-50c9543752d9	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	With;our;research;and;artifacts,;we;hope;to;spark;new;interest;in;the;exploration;of;citation;context;information.;Given;the;drastic;capabilities;of;LLMs;in;zero-shot;text;understanding;<ref type="group">(Brown et al., 2020; Lewis et al., 2020; Vaswani et al., 2017)</ref>;,;and;the;emergence;of;advanced;language;processing;systems;<ref type="group">(Lewis et al., 2020; Edge et al., 2024)</ref>;,;we;argue;that;an;improved;understanding;of;contextual;citation;information;is;essential;for;improving;interactive;exploration;of;scientific;argumentation.
e213bd81-2763-442d-b91a-54ba886104a6	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	Our;contributions;are;the;following:
de50aec7-0fb8-41b2-92c1-0edc5f4cb92c	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	•;We;analyze;and;formalize;citation;context;conceptualizations;in;previous;work.
a21103e8-aaff-4073-816f-7027b670f0e1	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	•;We;propose,;to;our;knowledge,;the;first;finegrained;citation;context;definition;based;on;the;semantic;structure;of;the;citing;text.
8f58395b-f980-4bc8-82fc-18ebee4f71ec	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	•;We;construct;and;publish;the;FINECITE;corpus;comprising;1,056;manually;annotated;fine-grained;citation;contexts.
dd5ddc07-da70-46c3-865f-6673db98532a	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	•;We;evaluate;our;context;definition;in;two;experiments;and;demonstrate;its;effectiveness;on;established;benchmarks.
7a8f7bc7-1510-4b87-befc-ab86149c1370	2025-10-13 13:01:31.016745+00	80f4b1bb-60a1-481f-9ac7-49c3af026b3d	The;rest;of;the;paper;is;organized;as;follows.;The;subsequent;section;reviews;relevant;literature;in;the;field;of;CCA;and;provides;a;formalization;of;task;and;context;conceptualization.;Section;3;introduces;our;citation;context;definition.;In;Section;4,;we;describe;the;curation;process;of;the;FINECITE;corpus;and;provide;core;statistics.;In;Section;5,;we;assess;the;effectiveness;of;our;context;definition;in;both;context;extraction;and;citation;classification.;Section;6;summarizes;our;contributions;and;outlines;directions;for;future;research.
38a554e8-7e78-48e7-bd13-f12f4f3dc42f	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	CCA;is;the;subject;of;a;substantial;body;of;research;with;<ref type="single">(Garfield, 1972)</ref>;often;mentioned;as;one;of;the;pioneering;works.;Reaching;back;to;<ref type="single">(Teufel et al., 2006)</ref>;,;CCA;research;in;computational;linguistics;is;commonly;conceptualized;as;learning;a;function;F;C;representing;the;relationship;of;a;citation;context;spanning;s;∈;S;to;a;set;of;classes;c;∈;C.;The;task;can;thus;be;formalized;as;F;C;(s);=;arg;max;c∈C;P;F;C;(c;|;s),;where;P;F;C;are;the;class;probabilities;emitted;by;F;C;.;The;classes;C;can;represent;various;citation;attributes,;such;as;function;<ref type="group">(Lauscher et al., 2022; Jurgens et al., 2018; Teufel et al., 2006)</ref>;,;purpose;<ref type="group">(Pride and Knoth, 2020; Abu-Jbara et al., 2013)</ref>;,;sentiment;<ref type="single">(Athar and Teufel, 2012)</ref>;,;or;intent;<ref type="single">(Cohan et al., 2019)</ref>;.;For;a;comprehensive;survey;on;CCA,;refer;to;<ref type="single">(Kunnath et al., 2022)</ref>;.
bb693b4a-e88b-468e-95ad-c0357b91a5eb	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	Despite;the;continued;research;in;CCA,;the;introduction;of;new;and;larger;datasets;<ref type="group">(Cohan et al., 2019; Jurgens et al., 2018)</ref>;,;and;updated;methodology;<ref type="group">(Shui et al., 2024; Lauscher et al., 2022; Cohan et al., 2019)</ref>;,;the;simple;modeling;paradigm;as;described;in;Equation;1;prevailed.;The;popular;SCICITE;benchmark;<ref type="single">(Cohan et al., 2019)</ref>;even;further;simplifies;the;task;by;reducing;the;commonly;used;six-class;framework;of;<ref type="single">(Jurgens et al., 2018)</ref>;to;a;three-class;schema.;This;simplicity;leads;to;a;low;task;complexity,;however,;it;often;fails;to;adequately;represent;the;rich;information;present;in;the;scientific;texts;<ref type="single">(Lauscher et al., 2022)</ref>;.;To;capture;a;wider;range;of;information,;it;is;necessary;to;move;beyond;prevalent;context;span;constraints;and;conceptualization;on;mutually;exclusive;classes.;Table;1;compares;the;relevant;research.
dc07a107-0e39-40d8-9e67-223ac36aec6c	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	Context;Span;Constraints.;The;optimal;context;spans;S;*;can;be;defined;such;that;S;*;=;arg;max;s;i;∈S;i;P;F;(c;i;|;s;i;);|;i;∈;I;(2);where;S;i;is;the;set;of;all;possible;context;spans;for;one;citation;instance;i;∈;I,;and;P;F;is;the;probabilities;assigned;by;a;function;F;representing;some;relationship;between;S;and;C.
cd235036-8c6b-4c11-bc83-f6c86601e737	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	Formal;Definition.;To;formalize;our;finegrained;citation;context,;we;expand;upon;Equation;2;by;removing;the;task;dependency;and;incorporating;semantic;dimensions;outlined;above.;Specifically,;we;define;the;task-independent,;approximately;optimal;citation;context;Ŝ;*;as:;Ŝ;*;:=;{s;*;i;|;i;∈;I};,;where;s;*;i;=;{s;i;∈;S;i;|;∃d;∈;D;:;F;D;(s;i;);=;d};,
b7de4ce5-5eda-4c17-8e6d-959cd67c5321	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	is;the;set;of;semantic;dimensions;defined;in;this;Section,;and;F;D;represents;the;semantic;relationship;of;the;surrounding;text;to;the;citation.;We;further;formalize;three;structural;properties;of;citation;context;spans;ŝ;*;∈;Ŝ;*;:
44f57b34-6287-4817-9b4f-7126717f61cb	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	•;Dynamicity:;The;length;|;ŝ;*;|;is;dynamic;and;adapts;to;the;situated;structure;of;the;enclosing;argumentation.
0d5cd5b1-9f9a-4cd9-8a2a-40503574aa58	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	•;Non-Contiguity:;ŝ;*;may;consist;of;multiple;disjoint;spans;allowing;for;skip-structured;selection;of;relevant;information.
7eed646d-6eee-48f1-88c9-0b82d359a3a7	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	•;Sub-Sentence;Granularity:;ŝ;*;is;constructed;on;sub-sentence;granularity,;enabling;a;finegrained;representation;of;the;argumentative;structure.
0c365433-b10d-4075-9717-8fbdf85248d0	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	As;it;is;infeasible;to;solve;Equation;2,;previous;work;uses;various;assumptions;to;extract;an;approximate;optimal;context;Ŝ;*;.;The;first;common;assumption;is;that;S;*;can;be;approximated;by;a;fixed-sized;window;surrounding;the;citation;marker.;The;size;of;the;context;window;varies;between;one;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019)</ref>;,;or;multiple;sentences;<ref type="group">(Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;,;a;specific;number;of;characters;<ref type="single">(Jurgens et al., 2018)</ref>;,;or;the;whole;paragraph;<ref type="single">(Teufel et al., 2006)</ref>;.;Some;approaches;<ref type="group">(Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;allow;for;a;non-context;classification;of;context-window;subsets,;introducing;a;simple;form;of;dynamic;context;spans.;Only;recent;publications;stress;the;importance;of;a;fully;dynamic;approximation;of;S;*;<ref type="group">(Lauscher et al., 2022; Nambanoor Kunnath et al., 2022)</ref>;to;conform;to;the;situated;structure;of;scientific;argumentation.;The;second;common;assumption;is;that;S;*;stretches;continuously;from;the;citation;marker.;Even;though;a;notable;number;of;publications;technically;allow;for;the;extraction;of;non-contiguous;contexts;<ref type="group">(Lauscher et al., 2022; Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;,;only;one;study;<ref type="single">(Nambanoor Kunnath et al., 2022)</ref>;particularly;investigated;the;phenomenon.;They;directly;compared;a;non-contiguous;context;window;with;a;smaller;contiguous;version;and;found;that;the;former;slightly;outperforms;the;latter.
fef38e4f-7920-4997-837c-f9a32f9b5ea6	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	Thirdly,;S;*;is;often;conceptualized;with;the;sentence;assumed;to;be;the;atomic;unit;of;information;<ref type="group">(Cohan et al., 2019; Nambanoor Kunnath et al., 2022; Lauscher et al., 2022)</ref>;.;In;certain;cases,;however,;this;is;not;necessarily;the;case.;<ref type="single">Abu-Jbara and Radev (2012)</ref>;,;for;instance,;shows;evidently;that;sub-sentence;segmentation;is;necessary;to;approximate;S;*;for;sentences;with;multiple;citations.;While;their;focus;lies;on;the;multi-citation;setting,;we;also;observe;sub-sentence;context;granularity;in;other;settings.
2e441b7f-2500-45af-841f-fdfbeb4287bc	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	Conceptual;Restraints.;Next;to;the;restrictive;assumptions;imposed;on;the;context;span,;there;are;conceptual;restraints;limiting;the;expressiveness;of;citation;contexts.;In;nearly;all;previous;work,;the;context;is;conceptualized;as;Ŝ;*;C;≈;arg;max;s;i;∈S;′;i;P;F;C;(c;i;|;s;i;);|;i;∈;I;,;where;S;′;i;=;{s;i;∈;S;i;|;∃c;∈;C;:;F;C;(s;i;);=;c};.;(4);This;formulation;captures;that;the;context;approximation;Ŝ;*;C;only;contains;spans;S;′;that;have;a;clear;association;with;a;class;in;C.;In;other;words,;the;citation;context;is;conceptualized;based;on;the;classification;schema;represented;through;F;C;and;not;based;on;the;semantic;information;of;the;text.
b9341ab9-be16-4437-9e3d-67186fe772a2	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	Most;previous;works;additionally;restrain;their;conceptualization;by;defining;the;relationship;between;S;and;C;as;mutually;exclusive;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019; Jurgens et al., 2018)</ref>;.;This;restricts;the;citation;context;further,;as;scientific;discourse;is;faceted;and;can;have;multiple;explanations;<ref type="single">(Lauscher et al., 2022)</ref>;.;<ref type="single">Lauscher et al. addressed</ref>;this;by;creating;the;MULTICITE;dataset,;designed;for;multi-sentence,;multi-function;classification.;They;find;that;nearly;one;in;five;citations;have;at;least;two;classes,;with;some;reaching;up;to;four.;While;this;represents;a;step;forward,;it;does;not;resolve;the;underlying;limitation;of;defining;citation;context;solely;through;the;lens;of;the;classification;schema.
3035da4d-36ee-45d8-b997-47b094540c64	2025-10-13 13:01:31.016745+00	897ac9a9-e59d-4821-9b8f-ed290e0eda2f	The;only;previous;publication;that;defines;a;context;based;on;semantic;information;from;the;vicinity;of;the;citation;marker;is;from;<ref type="single">Ferrod et al. (2021)</ref>;.;They;distinguish;between;the;citation;object;and;the;context,;where;the;former;is;the;cited;concept;and;the;latter;background;information,;or;constraints;on;the;citation;object.;While;this;goes;in;a;similar;direction;to;this;work,;their;definition;lags;in;completeness;and;only;works;on;a;subset;of;instances.;To;our;knowledge,;we;are;the;first;to;propose;a;comprehensive;citation;context;definition;that;is;disjoint;from;the;classification;task.
5def9e47-6e67-4c13-bde1-1605056b79e1	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	In;this;section,;we;propose;and;formalize;our;fine-grained;context;definition.
81cde6f6-9fc6-4c08-a329-ce09cc5470cd	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	Semantic;Dimensions.;We;base;our;context;definition;on;previous;research;on;argumentative;structures;in;scientific;texts.;<ref type="single">Teufel (2014)</ref>;categorizes;scientific;argumentation;along;four;principal;dimensions:;(i);statements;about;the;author's;own;work;(citing;paper),;(ii);properties;of;existing;solutions;(cited;papers),;(iii);the;relationships;between;existing;solutions;and;the;author's;contribution,;and;(iv);general;properties;of;the;research;space.;We;apply;this;framework;to;the;field;of;CCA;and;define;the;following;three;context;dimensions.
62bbc01d-43d0-45a8-96d6-f54a4f19c26c	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	The;first;dimension;of;the;citation;context;is;the;information;the;citing;author;references;from;the;cited;paper.;In;the;example;"Our;paper;extends;the;citation;labeling;scheme;of;&lt,CITATION&gt,;and;then;reports;similarities...";the;phrase,;"the;citation;labeling;scheme;of;&lt,CITATION&gt,,";describes;here;what;information;from;the;cited;paper;the;author;is;referring;to.;This;dimension;highly;correlates;with;(ii)-the;properties;of;existing;solutions,;and;is;somewhat;related;to;the;citation;object;of;<ref type="single">Ferrod et al. (2021)</ref>;.;In;the;following,;we;refer;to;this;dimension;as;the;Information;Dimension;(INF).
5869e577-2058-4231-9b05-6b92eee8a570	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	The;second;dimension;describes;the;relationship;between;the;citing;and;the;cited;work;and;corresponds;to;(iii);in;<ref type="single">Teufel (2014)</ref>;.;In;the;excerpt;";::;Our;:::::;paper;:::::::;extends;the;citation;labeling;scheme;of;&lt,CITATION&gt,;and;then;reports;similarities...";the;passage;"our;paper;extends";describes;how;the;author;uses;the;cited;information;in;their;work.;While;use;constitutes;a;substantial;fraction;of;occurring;relations,;this;dimension;also;includes;other;forms;of;perception,;such;as;comparison,;evaluation,;and;judgment.;In;the;following,;we;refer;to;it;as;the;Perception;Dimension;(PERC).
37c5a484-ccd9-4848-bcce-b8f64a1ad13b	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	While;these;two;dimensions;cover;the;most;critical;aspects;of;a;citation;context,-what;is;cited;and;how;is;it;perceived;or;used-they;do;not;necessarily;include;the;information;of;why;the;author;chose;to;include;a;citation.
1d2e5cc9-9e6d-4c37-bdfd-9f55d53ecb8b	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	"Unlike;recent;language;representation;models;&lt,CITATION&gt,,;...;....;BERT;...;.;is;...;.....;....;designed;..;..;to;....;.....;..;pretrain;.;..;..;.;.;deep;.;.;.;.;.;.;.;.;.;.;.;.;.;.;.;bidirectional;..;.....;....;.....;..;representations;.;....;....;from..."
3caae3b1-4cb2-4f7f-bd64-b08cc0d070c2	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	Here,;the;reason;the;author;included;this;citation;is;to;emphasize;a;novel;property;of;the;citing;paper's;contribution.;In;<ref type="single">Teufel's (2014)</ref>;framework,;this;falls;under;the;semantic;class;(i)-properties;of;the;citing;work-and;is;neither;considered;in;the;INF;nor;the;PERC;dimension.;In;other;instances,;such;a;motivating;factor;could;be;related;to;a;property;of;the;research;space;(iv);or;other;direct;citations;(ii,;iii).;We;categorize;these;passages,;which;explain;why;a;citation;was;included,;as;the;Background;Dimension;(BACK);of;a;citation.
8646b484-d761-4212-accb-1a7c62151a31	2025-10-13 13:01:31.016745+00	d0ac446b-c55a-4afd-a710-1ca130b39eff	These;properties;collectively;define;a;flexible;and;semantically;motivated;citation;context;that;diverges;from;the;constrained;approximations;of;previous;works.;We;provide;a;detailed;empirical;discussion;of;their;relevance;in;Section;4.2;and;5.
602515de-5b85-4ebb-8103-a17b5f0c9684	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	We;construct;the;corpus;in;the;following;steps.
d1507a6d-0e05-4667-b76e-035cdd95685a	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	Step;1:;Procurement.;The;FINECITE;dataset;was;built;from;a;subset;of;ACL;Anthology;Network;Corpus;<ref type="single">(Radev et al., 2009)</ref>;.;The;ACL;Anthology;Network;contains;over;80K;papers;from;several;ACL;conferences;and;other;venues;in;computational;linguistics.;We;extracted;the;full;paper;text,;including;citations,;using;GROBID;(GROBID,;2024).;Documents;containing;faulty;meta-information,;languages;other;than;English,;and;miscellaneous;documents;with;&lt,3;sections;and;&lt,5;references;were;excluded.
f0e87cdd-b443-4712-8d3f-9f375fc205fb	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	From;the;remaining;documents,;we;sampled;1,056;paragraphs,;each;containing;one;citation;marker;highlighted;for;annotation.
2ef52a59-ccd2-46fa-90a9-d114db631b03	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	Step;2:;Guideline;creation.;The;annotation;guidelines;comprise;best;practices;and;rules;for;the;context;annotation.;The;instructions;were;created;based;on;the;definition;presented;in;Section;3;and;further;iteratively;refined;to;better;handle;ambiguous;cases.;For;each;iteration,;several;annotators;completed;five;to;ten;tasks;separately;and;subsequently;discussed;differences.;Afterwards,;the;guidelines;were;updated;to;reduce;ambiguity;for;the;next;iteration.;In;total,;five;iterations;were;performed.;The;complete;Annotation;Guidelines;can;be;found;in;Appendix;E.
58520995-2727-4b95-8649-c5d216dfa2b3	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	Step;3:;Annotation.;The;annotation;was;performed;for;each;paragraph;separately.;The;annotator;was;asked;to;read;the;paragraph;carefully;and;annotate;the;context;of;the;highlighted;citation;based;on;the;guidelines.;To;provide;further;information;in;case;of;ambiguity,;additional;information,;like;the;surrounding;paragraphs;and;metadata;about;citing;and;cited;papers,;was;provided;in;the;annotation;tool.;A;detailed;description;of;the;annotation;platform;is;provided;in;Appendix;A.
074687d7-4559-46ab-a144-36ba481009ae	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	All;annotators;had;previous;experience;with;scientific;literature;and;were;carefully;trained;on;the;Annotation;Guidelines.;The;compensation;followed;locally;typical;rates;for;research;assistants.
89e9cc60-bf22-4937-867e-05a8625861d8	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	Step;4:;Validation.;To;ensure;the;annotation;quality,;we;monitored;several;inter-annotator;agreement;(IAA);metrics;on;10%;of;the;annotations.;We;measured;both;F-measure;commonly;used;for;span;annotations;with;open;bounds;<ref type="single">(Hripcsak and Rothschild, 2005)</ref>;,;and;Cohens;κ;<ref type="single">(Cohen, 1960)</ref>;for;the;agreement;on;label;assignment;above;that;expected;by;chance.;To;capture;different;aspects;of;the;annotation;process;separately,;we;provide;IAA;for;the;whole;context;(F;1;total;),;and;for;each;scope;separately;(F;1;inf;,;F;1;perc;,;F;1;back;).;The;F;1;macro;is;the;mean;over;F;1;inf;,;F;1;perc;,;and;F;1;back;.;While;the;metrics;follow;the;standard;definition,;we;provide;a;formal;definition;in;Appendix;B.
c2e49137-023c-436d-85ca-300edfd0a5af	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	The;F;1;total;after;the;annotation;process;was;0.75,;indicating;an;overall;good;agreement.;The;separate;IAA;on;the;context;dimensions,;however,;is;considerably;lower.;While;the;F;1;inf;is;with;a;score;of;0.65;the;highest,;the;F;1;perc;is;at;0.42;and;the;F;1;back;at;0.34.;The;F;1;macro;lies;at;0.48;and;the;κ;on;the;validation;samples;was;0.55.
731c4c59-bdbb-4cb8-a751-36282421a006	2025-10-13 13:01:31.016745+00	a0797452-a744-48bb-abbf-ec37d73fe5c0	While;these;values;are;in;the;typical;range;for;annotation;of;scientific;literature;<ref type="group">(Lauscher et al., 2022; Ferrod et al., 2021; Lauscher et al., 2018)</ref>;,;they;highlight;the;task;complexity.;The;moderate;F;1;macro;,;despite;a;rather;high;F;1;total;,;indicates;that;while;annotators;often;struggle;to;clearly;distinguish;between;the;dimensions,;they;have;a;good;sense;of;what;constitutes;relevant;information.;PERC;and;BACK;seem;especially;ambiguous.
74809c4a-9ff1-41cf-bfe5-fe8b02f2766d	2025-10-13 13:01:31.016745+00	f71ed9d1-87ba-44e9-bf12-b366f5f17c90	Ensuring;that;common;extraction;models;can;reliably;learn;to;identify;citation;contexts;is;crucial;for;the;effective;application;of;the;presented;fine-grained;context;definition.
1deabb94-bf58-43c4-b5e3-b984605933f2	2025-10-13 13:01:31.016745+00	f71ed9d1-87ba-44e9-bf12-b366f5f17c90	Data;preparation.;We;utilized;the;same;samples;used;in;the;evaluation;of;the;annotation;process;as;the;test;set,;with;the;remaining;samples;reserved;for;training;and;validation.;We;evaluate;extraction;on;(i);uniform;token;labels;and;(ii);commonly;used;IOB;(Inside-Outside-Beginning);labels.
7aab243f-5638-4f6d-ac28-037b4957fc24	2025-10-13 13:01:31.016745+00	f71ed9d1-87ba-44e9-bf12-b366f5f17c90	Extraction;model.;For;all;extraction;approaches,;we;use;a;SCIBERT;<ref type="single">(Beltagy et al., 2019)</ref>;encoder;model.;SCIBERT;is;a;BERT-like;encoder-only;transformer,;pre-trained;on;scientific;literature.;To;cover;several;common;sequence;extraction;approaches,;we;evaluate;three;different;classification;heads:;a;linear,;a;Bi-LSTM;<ref type="single">(Hochreiter and Schmidhuber, 1997)</ref>;,;and;a;conditional;random;field;(CRF);<ref type="single">(Lafferty et al., 2001)</ref>;classifier.
3ffc2c28-dbb2-44f6-9c59-4eed48582291	2025-10-13 13:01:31.016745+00	f71ed9d1-87ba-44e9-bf12-b366f5f17c90	Experiment;setup.;We;used;the;pre-trained;weights;of;SCIBERT;from;huggingface;transformers;<ref type="single">(Wolf et al., 2020)</ref>;and;finetuned;the;whole;model;(encoder;+;cls-head);using;AdamW;<ref type="single">(Loshchilov and Hutter, 2019)</ref>;linear;warm-up;ratio;of;5%;and;a;peak;learning;rate;of;5e-5.;All;models;were;fine-tuned;using;early;stopping;with;a;patience;of;three;epochs,;a;batch;size;of;4,;and;a;dropout;rate;of;0.1.;To;address;class;imbalance,;we;additionally;applied;weighted;cross-entropy;loss.;The;training;was;conducted;on;an;NVIDIA;A100;GPU.;We;evaluated;the;F1;scores;described;in;Section;4.1.
3e7cf0d7-fa0a-4c7a-bd1b-04f638f4feae	2025-10-13 13:01:31.016745+00	f71ed9d1-87ba-44e9-bf12-b366f5f17c90	Result.;Table;3;shows;the;results;of;F;1;total;and;F;1;macro;.;See;Appendix;D;for;extended;results.
c0ba328e-95b1-436b-a663-17a0df5fb59b	2025-10-13 13:01:31.016745+00	f71ed9d1-87ba-44e9-bf12-b366f5f17c90	We;observe;that;all;three;extraction;approaches;reach;higher;F1;scores;than;those;measured;during;the;annotation;process.;The;variance;between;the;different;classifiers;is;rather;small.;The;CRF;classifier;exhibits;the;highest;F;1;total;score;of;0.787,;while;the;Bi-LSTM;classifier;dominates;the;F;1;macro;metric;with;0.56.;The;linear;classifier;achieves;an;F;1;macro;of;0.557;and;an;F;1;total;of;0.77,;only;slightly;lower;than;the;other;approaches.
21f59b4b-dbcd-4035-b536-918a3f5bac5d	2025-10-13 13:01:31.016745+00	f71ed9d1-87ba-44e9-bf12-b366f5f17c90	The;best;results;were;achieved;using;IOB;labels;for;linear;and;Bi-LSTM;classifiers,;whereas;the;CRF;classifier;worked;better;with;uniform;labels.
80795494-263f-4296-a3ef-e8da136dc941	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	To;showcase;the;benefits;of;fine-grained;contexts;in;a;competitive;setting,;we;provide;a;broad;comparison;with;previous;work;using;the;citation;classification;task.
216bb8a0-34ea-4e18-9d1c-56ba984d6dfd	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	Data.;We;evaluate;fine-grained;contexts;on;four;commonly;used;CCA;benchmarks.
4115a456-094c-4a00-b409-d47a207709b5	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	•;ACL-ARC;<ref type="single">(Jurgens et al., 2018)</ref>;comprises;1,933;labeled;citations;following;a;six-label;classification;schema;introduced;in;the;paper.
347c3a0c-f671-42d6-9711-0adbf8aa2ff3	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	All;samples;originate;exclusively;from;the;computational;linguistics;domain.
a14ba571-97ad-443f-be1c-212b8a292030	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	•;ACT2;(N.;<ref type="single">Kunnath et al., 2021)</ref>;is;a;larger,;mixed-domain;collection;with;4,000;anno-tated;citations;labeled;with;the;schema;used;for;the;ACL-ARC;dataset.
7a36b42c-6124-4088-9333-7838ac54b9c1	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	•;SCICITE;<ref type="single">(Cohan et al., 2019)</ref>;,;also;multidomains,;contains;11,000;samples,;annotated;with;a;simple;three-class;annotation;schema.
1cd94ac2-ef29-4fee-bba9-8cfbaaf70ee0	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	•;MULTICITE;<ref type="single">(Lauscher et al., 2022</ref>;);is;a;multi-sentence,;multi-label;dataset;annotated;with;seven;citation;function;classes;based;on;the;scheme;used;in;ACL-ARC.;With;12,653;annotated;citations,;it;is;the;biggest;dataset.
834f5ac5-5754-4d62-9166-4b14e625c453	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	Although;ACL-ARC;and;ACT2;are;primarily;modeled;using;the;citing;sentence;alone,;we;perform;extraction;on;an;extended;window;containing;multiple;sentences;before;and;after;the;citation.;SCICITE;does;not;provide;text;exceeding;the;citing;sentence,;which;drastically;restricts;the;extraction;of;our;fine-grained;context.
7ed68462-329f-4a51-a4c4-5fded60cd16c	2025-10-13 13:01:31.016745+00	84ad10c6-cf56-419d-857b-87859de4a9b0	To;reduce;the;model's;tendency;to;memorize;author;names,;we;conceal;the;targeted;and;other;citations;behind;&lt,TARGET_CITATION/&gt,;and;&lt,CITATION/&gt,;tags,;respectively.;Each;dataset;is;divided;into;approximately;85%;training;and;15%;testing.;For;the;FINECITE;approaches,;we;extract;the;fine-grained;context;using;the;extraction;approach;presented;in;Section;5.1.
e598b757-93e2-43f6-8c9d-2e217f7989c4	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	We;considered;four;baselines;for;the;classification;task:;(i);the;scaffolding;approach;presented;in;<ref type="single">Cohan et al. (2019)</ref>;,;(ii);the;best-performing;citation;classification;model;from;the;3C;classification;task;2021;(N.;<ref type="single">Kunnath et al., 2021</ref>;)-a;SCIBERT;model;with;a;linear;classification;head;<ref type="single">(Maheshwari et al., 2021)</ref>;,;(iii);GPT-4o;<ref type="single">(Achiam et al., 2023)</ref>;,;and;(iv);SCITULU;70B;<ref type="single">(Wadden et al., 2024)</ref>;-an;instruction-tuned;LLM;for;scientific;literature.;(i);and;(ii);were;fine-tuned;on;the;training;split,;and;(iii);and;(iv);were;evaluated;in;a;zero-shot;setting.;The;FINECITE;approaches;use;SCIBERT;<ref type="single">(Beltagy et al., 2019)</ref>;embeddings;and;a;linear;classification;head;similar;to;(ii).;Instead;of;using;CLS;pooling,;we;use;mean;pooling;over;tokens;belonging;to;the;same;dimension.;The;resulting;dimension;embeddings;were;concatenated;and;passed;to;the;classification;head.
43e681cf-92ff-4751-965e-bd6a690b8bba	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	Experiment;setup.;We;utilized;the;pre-trained;SCIBERT;weights;as;mentioned;above.;The;best;performance;was;achieved;using;AdamW;<ref type="single">(Loshchilov and Hutter, 2019)</ref>;conducted;on;an;NVIDIA;A100;GPU.;The;optimal;learning;rate,;batch;size,;and;dropout;for;each;dataset;are;provided;in;Appendix;C.;For;all;fine-tuned;models,;the;performance;was;evaluated;over;five;consecutive;seeds.
2139d043-d6b8-431a-aa1e-9bc18ddef246	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	Result.;Table;4;exhibits;the;macro-F1;and;standard;deviation;for;each;dataset.;Detailed;results;including;class;scores;are;shown;in;Appendix;D.;Among;the;baselines,;SCIBERT;achieves;the;highest;average;macro-F1;(0.546),;followed;by;the;SCAFFOLDS;approach;(0.453).;Both;GPT-4o;(0.43);and;SCITULU;70B;(0.405);perform;lower.;These;results;show;that;finetuned;encoder;models;have;a;considerably;better;conceptualization;of;the;citation;task;than;LLMs;in;a;zero-shot;setting.;We;further;observe;that;the;SCAFFOLDS;approach;exhibits;a;high;standard;deviation;on;the;ACL-ARC;tasks,;as;it;struggles;to;predict;minority;labels;correctly;on;the;smaller;dataset.
d27ae5fd-5948-4d5f-bdec-fcb4663c1fc0	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	The;FINECITE;models;introduced;in;this;work;outperform;the;baselines;across;all;datasets.;Among;them,;the;context;extracted;with;the;Linear;classification;head;achieves;the;best;overall;performance,;with;an;average;macro-F1;of;0.579.;The;context;from;the;BiLST;and;CRF;classifier;only;perform;slightly;lower;with;an;average;macro-F1;of;0.574;and;0.571,;respectively.;Comparing;the;performance;on;a;per-dataset;basis;reveals;a;more;nuanced;pattern.;The;largest;increase;can;be;observed;on;the;ACT2;dataset;with;a;25%;increase;over;the;strongest;baseline,;followed;by;a;13%;increase;on;the;ACL-ARC;dataset.;We;explain;the;relatively;low;performance;increases;on;MULTICITE;by;considering;that;the;dataset;already;provides;a;dynamic;context,;leaving;limited;advantage;for;fine-grained;contexts.;The;performance
bfcbb2d1-41a8-4525-a8d5-54e2156b8161	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	APPROACH;ACL-ARC;ACT2;macro;st.;dev.;macro;st.;dev.;Context;Dimensions;w/o;INF;0.556;0.017;0.277;0.013;w/o;PERC;0.563;0.019;0.259;0.036;w/o;BACK;0.56;0.019;0.253;0.024;Mean;Pooling;Dimensions;0.584;0.014;0.302;0.02;Weighted;tok;0.542;0.013;0.281;0.019;Weighted;dim;0.573;0.015;0.28;0.015;Table;5:;Ablation;on;context;dimensions;and;pooling;on;the;SCICITE;benchmark;further;stresses;that;for;the;extraction;of;comprehensive;fine-grained;context,;the;citing;sentence;is;not;sufficient.;Overall,;the;results;demonstrate;that;the;fine-grained;citation;context;proposed;in;this;work;captures;a;more;comprehensive;citation;representation;than;other;conceptualizations;in;previous;work.
d77ec738-331f-4598-84c0-85dbed506618	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	Ablation.;We;provide;ablation;on;the;context;dimensions,;pooling;method,;and;domain;shift;for;a;further;analysis;of;the;proposed;fine-grained;citation;contexts.;The;dimension;and;pooling;ablation;were;done;on;the;ACL-ARC;and;ACT2;datasets.;We;create;two;new;datasets;(ACT;2,;ACT;2;′;D;);for;the;evaluation;on;domain;shift.
ca30f528-ce6f-4a83-94f3-796dfbf0f173	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	With;the;ablation;on;the;citation;dimensions;(Table;5);we;investigate;the;significance;of;the;INF,;PERC,;and;BACK;dimensions;for;classification;performance.;Our;analysis;shows;that;removing;any;of;the;three;citation;dimensions;leads;to;a;performance;drop;for;both;datasets.;While;the;decrease;in;performance;on;the;ACL;dataset;is;similar;for;all;three;dimensions,;for;the;ACT2;benchmark;PERC;and;BACK;exert;greater;influence.;This;highlights;that;despite;the;low;extraction;performance,;PERC;and;BACK;contain;essential;information;for;the;citation;classification;task.
4c188bcd-736b-45e5-bae7-c0516c40e1cc	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	The;ablation;on;pooling;strategies;(Table;5);evaluates;whether;pooling;citation;dimensions;separately;improves;performance;over;simpler;alternatives.;We;compare;this;approach;to;token-weighted;pooling,;which;ignores;citation;dimensions,;and;a;dimension-weighted;method.;On;both;datasets,;separate;dimension;pooling;yields;better;results.;Although;the;performance;gap;is;modest,;it;indicates;that;modeling;citation;dimensions;individually;enhances;representation;quality,;reinforcing;the;value;of;our;context;definition.
7eb4990a-4748-4091-8d50-3908a18e4383	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	As;the;FINECITE;dataset;only;consists;of;samples;from;the;computational;linguistics;domain,;there;might;be;a;domain;bias;in;the;context;extraction.;To;evaluate;whether;this;compromises;domain;adaptation;performance;on;the;classification;task,;we;provide;an;ablation;on;two;new;datasets;(ACT2;′;,;ACT2;′;D;);constructed;from;the;multi-domain;ACT2;benchmark;(Table;6).;The;ACT2;′;D;contains;samples;from;computational;linguistics;and;STEM;domains;in;its;training;split,;and;samples;from;medicine;and;social;sciences;in;its;test;split,;thus;evaluating;domain;adaptation.;The;ACT2;′;,;on;the;other;hand,;contains;samples;from;all;domains;in;both;splits;while;following;the;same;split;sizes.;We;provide;the;macro-F1;results;on;the;test;set;for;the;strongest;baseline;and;our;approach,;and;analyze;the;difference-in-difference;estimator;between;the;two;approaches.
78cb5ef2-b0f5-474b-a5fd-6bbfe5c75d8e	2025-10-13 13:01:31.016745+00	337b0093-2a56-4346-b3a4-700b58eca2d5	For;both;models,;we;observe;a;substantial;drop;in;performance;when;evaluated;out-of-domain.;Our;approach;retains;a;slightly;larger;margin,;leading;to;a;negative;difference-in-difference;estimate;of;-0.024.;Despite;this;indicating;that;our;model;approach;performs;slightly;worse;on;domain;adaptation,;the;performance;gains;of;using;fine-grained;contexts;outweigh;this;drawback;in;overall;effectiveness.
4a023641-3c0e-4ac5-af32-6e3e758b4a1c	2025-10-13 13:01:31.016745+00	0b335556-f5f4-497b-92d8-4cc666e8d1d7	In;this;paper,;we;introduced;a;novel;approach;to;defining;citation;contexts,;aiming;to;foster;new;research;in;citation;context;analysis.;We;proposed;a;conceptual;framework;that;characterizes;citation;context;based;on;semantic;dimensions;and;structural;properties.;Subsequently,;we;described;the;curation;of;the;FINECITE;corpus-a;first;resource;for;fine-grained;citation;contexts-and;analyzed;core;statistics.;Our;experiments;demonstrated;that;our;context;definition;is;practically;applicable;and;leads;to;improved;performance;on;established;CCA;benchmarks;compared;to;state-of-the-art;methods.
4562b909-13e2-4542-a876-eaed6e647148	2025-10-13 13:01:31.016745+00	0b335556-f5f4-497b-92d8-4cc666e8d1d7	In;future;work,;we;will;focus;on;expanding;the;dataset;to;a;wider;range;of;scientific;texts;and;domains;and;further;refining;our;context;definition.;Additionally,;we;plan;to;explore;applications,;such;as;retrieval-augmented;generation;(RAG);<ref type="group">(Lewis et al., 2020; Edge et al., 2024)</ref>;and;question-answering;(Q&amp,A);frameworks;<ref type="group">(Lauscher et al., 2022; Dasigi et al., 2021)</ref>;,;to;support;interactive;exploration;of;scientific;argumentation.
2cd3a709-ca12-44fb-b813-80d61ad3aa62	2025-10-13 13:01:31.016745+00	8330dad8-0575-4985-859d-78c3fb34ac09	The;task;is;to;classify;words;of;several;sentences;in;the;same;paragraph;and;determine;whether;they;relate;to;the;citation;marked;as;the;target;reference.;An;example;of;the;annotation;task;might;look;like;this:
07174024-93ad-4e7e-ab19-03621ee12562	2025-10-13 13:01:31.016745+00	8330dad8-0575-4985-859d-78c3fb34ac09	Attention;mechanisms;have;become;an;integral;part;of;compelling;sequence;modeling;and;transduction;models;in;various;tasks,;allowing;the;modeling;of;dependencies;without;regard;to;their;distance;in;the;input;or;output;sequences;<ref type="single">[GREF]</ref>;.;In;all;but;a;few;cases;<ref type="single">[TREF]</ref>;,;however,;such;attention;mechanisms;are;The;center;is;the;working;area;where;the;annotation;task;is;displayed;and;annotated.;On;the;right;side,;meta-information;regarding;the;citing;and;cited;papers;is;provided,;and;alternatively,;a;comment;section;can;be;accessed;to;leave;questions;or;notes.;The;navigation;bar;on;the;bottom;gives;(from;left;to;right);access;to;the;annotation;guidelines,;the;comment;section,;and;three;buttons;for;returning;to;the;previous;task,;skipping,;or;submitting;the;current;task.;APPROACH;F;1macro;F;1;total;F;1;inf;F;1perc;F
b07520c3-8265-400c-b199-77ae42b1d283	2025-10-13 13:01:31.016745+00	3cbbf86f-ff91-420f-84fd-9542d6dcac48	The;citation;context;is;the;text;span;in;the;citing;document;that;describes;the;information;used;from;the;cited;document,;the;way;it;is;used,;and;how;the;author;of;the;citing;document;perceives;it.;For;the;annotation;process,;we;distinguish;between;three;scopes:
a6a6165c-95e7-46de-9297-1e02be09b6b7	2025-10-13 13:01:31.016745+00	3cbbf86f-ff91-420f-84fd-9542d6dcac48	•;Citation;information;scope:;describes;the;information;of;the;cited;document.
48618768-1e78-4906-ac9e-e4e70401537d	2025-10-13 13:01:31.016745+00	3cbbf86f-ff91-420f-84fd-9542d6dcac48	It;answers;the;question;of;what;is;cited.;[GREEN];•;Citation;perception;scope:;describes;in;what;way;the;author;perceived,;used,;or;further;analyzed;the;document.;It;answers;the;question;of;how;something;is;cited.;[YELLOW];•;Citation;background;scope:;describes;additional;information;required;for;putting;the;two;previous;scopes;into;the;context;they;are;used.;APPROACH;BACKGR.;COMPARE;EXTENSION;FUTURE;MOTIVATION;USE;MACRO;P;R;F;P;R;F;P;R;F;P;R;F;P;R;F;P;R;F;P;R;F;Baseline;Approaches;<ref type="single">.682 .764 .720 .551 .311 .393 .285 .138 .177 .095 .160 .180 .147 .240 .180 .615 .745 .673 .396 .393 .377 SCIBERT .754 .849 .798 .613 .368 .460 .755 .807 .780 .475 0.237 .317 .196 .440 .272 .395 .600 .476 .534 .550</ref>;.;<ref type="single">535 .474 .495 .103 .186 .131 .475 .385 .414 .382 .554 .450 .296 .173 .208 .170 .087 .112 .327 .310 .302 SCIBERT (BiLSTM) .532 .428 .471 .100 .186 .125 .393 .385 .381 .374 .495 .422 .219 .154 .176 .120 .123 .119 .290 .295 .282 SCIBERT (CRF) .512 .320 .387 .087 .139 .104 .355 .354 .342 .324 .589 .417 .299 .250 .265 .113 .164 .128 .282 .303 .274</ref>;Table;10:;Extended;results;of;the;citation;classification;task;on;ACT2.
98bf65b7-d91d-4f27-a5c8-2898b624c03c	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	1.;Articles;(a,;this,;and;the);must;be;included;in;the;scope;of;the;following;noun.
db3defde-d932-494a-8d1d-8b287144ae0a	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	✘;The;architecture;of;the;system;is;very;similar;to;a;large;system;built;for;the;NIST;Arabic/English;task;[TREF]
9466c523-e3f9-4e5b-b7cc-8566386052e5	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	✔;The;architecture;of;the;system;is;very;similar;to;a;large;system;built;for;the;NIST;Arabic/English;task;[REF];2.;The;reference;marker;([REF],;[TREF],;etc.);must;be;marked;as;well;(adjacent;scope).
9d68b58d-d228-4be5-b1cc-ebbe0ea700c3	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	✘;BERT;is;a;large;language;model;(LLM)
45a5604a-e1d9-44b7-b497-7a1f5a987c6c	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	[TREF]
11e055fc-07bc-4ea3-82af-e4ee1e66b723	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	✔;BERT;is;a;large;language;model;(LLM)
d61e0d57-0c24-40a8-91c1-6455972890c9	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	[TREF]
0bfb5736-f352-4514-9dbe-a32777c9e515	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	✘;Following;[TREF],;the;loss;is;a;sum;of;binary;cross-entropy;losses;over;all;entity;types;T;over;all;training;examples;D.
5b7596de-c888-431c-80da-fb68042c5482	2025-10-13 13:01:31.016745+00	ee3dd63a-9651-4421-a600-26114e242624	✔;Following;[TREF],;the;loss;is;a;sum;of;binary;cross-entropy;losses;over;all;entity;types;T;over;all;training;examples;D.
2473ad94-dceb-4aa5-9f75-42d4dccf48f9	2025-10-13 13:01:31.016745+00	ff6d4df0-f51c-4987-be00-326da2f921cf	In;cases;where;it;is;unclear;whether;the;information;is;a;contribution;of;the;cited;paper;or;the;author,;it;should;be;marked;as;the;author's;contribution.;<ref type="single">.732 .762 .746 .140 .093 .106 .598 .670 .631 .303 .279 .285 .415 .356 .382 .573 .485 .523 .186 .200 .189 .421 .406 .409 SCIBERT .821 .799 .810 .241 .334 .280 .740 .758 .749 .482 .552 .515 .607 .529 .565 .695 .644 .669 .437 .564 .492 .584 .597 .584 GPT 4O .514 .715 .598 .053 .227 .086 .702 .554 .619 .436 .473 .454 .195 .556 .289 .667 .574 .617 .273 .600 .375 .406 .528 .434 SCITULU .489 .712 .580 .011 .100 .019 .728 .557 .632 .257 .743 .382 .054 .440 .096 .699 .438 .539 .182 .286 .222 .346 .468 .353 FINECITE Approaches SCIBERT (Linear) .840 .788 .812 .404 .294 .338 .789 .706 .744 .536 .507 .518 .652 .464 .539 .737 .576 .643 .652 .582 .641 .659 .560 .602 SCIBERT (BiLSTM) .830 .777 .802 .428 .323 .366 .753 .727 .739 .524 .525 .522 .622 .460 .526 .720 .601 .655 .600 .545 .571 .640 .564 .597 SCIBERT (CRF) .827 .776 .799 .388 .415 .395 .784 .685 .729 .545 .515 .529 .647 .443 .526 .722 .598 .654 .690 .545 .606 .658 .568 .606</ref>;Table;12:;Extended;results;of;the;citation;classification;task;on;MULTICITE.
c3928a3c-6f2b-41b4-81b7-4a05d025f407	2025-10-13 13:01:31.016745+00	6948964f-6c89-4658-b089-37bbc1cf349e	6.;Conjunctions;like;"however,";"in;fact,";"furthermore,";"hence,";"therefore,";"in;that,";"on;the;other;hand,";etc.,;should;not;be;included.
44adf8ef-4327-47ca-9669-508b400acb71	2025-10-13 13:01:31.016745+00	6948964f-6c89-4658-b089-37bbc1cf349e	✘;However,;BERT;is;a;large;language;model;(LLM);<ref type="single">[TREF]</ref>;✔;However,;BERT;is;a;large;language;model;(LLM);[TREF]
d056f95b-9409-4033-85f6-f8936055b532	2025-10-13 13:01:31.016745+00	6948964f-6c89-4658-b089-37bbc1cf349e	E.5;What;is;the;citation;information;scope?
3464a4e5-d388-4064-8830-87c8f6103598	2025-10-13 13:01:31.016745+00	6948964f-6c89-4658-b089-37bbc1cf349e	The;citation;Information;scope;of;the;target;citation;is;the;part;of;the;paragraph;that;describes;objective;facts;directly;from;the;cited;paper.;This;information;is;objectively;true;and;does;not;involve;any;judgment;from;the;author.;They;can;be;attributed;as;a;finding;of;the;cited;paper;or;describe;a;process;or;judgment;in;the;cited;paper.
cecfb646-0d1c-439f-bf19-cfd81f5c095d	2025-10-13 13:01:31.016745+00	347f8481-f796-4ef6-a6b9-879b8a3b25f9	BERT;is;a;large;language;model;(LLM);<ref type="single">[TREF]</ref>;.
d8a5a606-636e-4cd6-90d0-e5638890cf6a	2025-10-13 13:01:31.016745+00	5295ab27-65b6-486b-be53-c1ea936e932a	The;architecture;of;the;system;is;very;similar;to;a;large;system;built;for;the;NIST;Arabic/English;task;<ref type="single">[TREF]</ref>;.
dfadd0a7-275d-4ee0-b9fe-7667d3fe1696	2025-10-13 13:01:31.016745+00	22d53094-bdd4-418c-be4e-98e42fea3d74	They;show;their;model;works;better;than;the;BERT;model;<ref type="single">[TREF]</ref>;.
d23e4628-2124-4960-a5a2-24d47f9632a5	2025-10-13 13:01:31.016745+00	e2f32985-d93b-406f-84fd-051b72745f3e	We;use;a;BERT;model;pre-trained;on;classification;<ref type="single">[TREF]</ref>;.
c48253df-0bb7-47b3-b2e9-a1a9c9941393	2025-10-13 13:01:31.016745+00	abddca14-5dc0-4a3a-9d0f-34f05577c1f8	Recently,;Neural;Networks;have;been;getting;more;attention.;An;example;of;this;trend;is;BERT;<ref type="single">[TREF]</ref>;.
73d7ac74-31d2-4adc-9bd9-af5faa38dce1	2025-10-13 13:01:31.016745+00	4b803923-fd13-4b89-8bff-04b392b6dfb1	[TREF];shows;that;BERT;is;a;reliable;model.;Compared;to;RoBERTa;<ref type="single">[REF]</ref>;,;which;employs;other;metrics,;it;is;less;reliable.
f4cd8d7c-b228-42f5-9c6d-c76f8ad1158e	2025-10-13 13:01:31.016745+00	23b09248-aa77-4d76-b789-9b063c870441	We;analyze;automated;metrics;such;as;BLEU;<ref type="single">[TREF]</ref>;.
af4ce211-1a8b-4825-92f3-3bbbc5b1f236	2025-10-13 13:01:31.016745+00	9d141a14-aaa4-45a7-b6c4-92b0baa47848	We;consider;actual;human;judgments;to;be;preferable;to;automated;metrics;such;as;BLEU;<ref type="single">[TREF]</ref>;.
0cfd0e81-7086-4d65-ad0b-5f8db56e1bc7	2025-10-13 13:01:31.016745+00	dd1e2c0f-8626-41d2-97ea-82f6ce4f8d2d	In;2016,;<ref type="single">[REF]</ref>;published;Roberta;based;on;BERT;<ref type="single">[TREF]</ref>;.
04ebaabf-9cac-4c31-b401-28b01beebf24	2025-10-13 13:01:31.016745+00	dd1e2c0f-8626-41d2-97ea-82f6ce4f8d2d	on;LOCATION;of;non-attributed;facts;IN;PAPER;(it;is;not;sure;whether;the;part;is;from;the;paper);Following;the;SAMT;approach,;CCG-augmented;HPB;SMT;<ref type="single">[REF]</ref>;uses;CCG;<ref type="single">[TREF]</ref>;to;label;non-terminals.;This;section;gives;a;brief;introduction;to;CCG;followed;by;a;description;of;the;approach;of;extracting;non-terminal;labels;using;the;same.
\.


--
-- Data for Name: citations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."citations" ("id", "created_at", "paragraph_id", "marker_location", "annotation_count", "iaa_macro", "type", "iaa_total", "iaa_inf", "iaa_perc", "iaa_back") FROM stdin;
d195a555-af7d-4397-b973-00d8c37465a2	2025-10-13 13:01:41.079948+00	e29adf0f-4774-40d1-bdee-f099318ea3be	89	2	1	group	1	1	1	1
9e53b3cb-bbdc-4506-9d08-4ec1d7548a93	2025-10-13 13:01:41.079948+00	582c909b-6203-47b9-9a03-c45797618cce	43	2	1	group	1	1	1	1
3e717485-8c19-493c-96bc-f9cdd431246d	2025-10-13 13:01:41.079948+00	e29adf0f-4774-40d1-bdee-f099318ea3be	60	1	\N	group	\N	\N	\N	\N
ee29f142-860f-4ea4-8de8-df24d0fe0540	2025-10-13 13:01:41.079948+00	e29adf0f-4774-40d1-bdee-f099318ea3be	82	2	0.587	group	0.516	0.762	0	1
628b9f76-e331-4be9-bfdb-a3dee311d6c9	2025-10-13 13:01:41.079948+00	e29adf0f-4774-40d1-bdee-f099318ea3be	85	2	0.815	group	0.444	0.444	1	1
77b266a8-2baa-45a0-8508-44f37ad52392	2025-10-13 13:01:41.079948+00	efc601e8-0dc1-4a66-8e0d-50c9543752d9	38	1	\N	group	\N	\N	\N	\N
54423811-9098-4e41-9f02-246dd2cf5bb8	2025-10-13 13:01:41.079948+00	38a554e8-7e78-48e7-bd13-f12f4f3dc42f	23	0	\N	single	\N	\N	\N	\N
5a7ed88f-2568-4b80-b99b-7c0c468ef29c	2025-10-13 13:01:41.079948+00	38a554e8-7e78-48e7-bd13-f12f4f3dc42f	102	0	\N	group	\N	\N	\N	\N
3123d81c-a940-4075-95a9-f6a189f33c84	2025-10-13 13:01:41.079948+00	38a554e8-7e78-48e7-bd13-f12f4f3dc42f	105	0	\N	group	\N	\N	\N	\N
280e23d3-4e22-4660-b570-eacd453abd41	2025-10-13 13:01:41.079948+00	38a554e8-7e78-48e7-bd13-f12f4f3dc42f	108	0	\N	single	\N	\N	\N	\N
cc12a34b-1424-4053-b174-d35c77d5dc53	2025-10-13 13:01:41.079948+00	38a554e8-7e78-48e7-bd13-f12f4f3dc42f	112	0	\N	single	\N	\N	\N	\N
6b73dbb4-5ed7-4543-b5a1-3671a4ce0532	2025-10-13 13:01:41.079948+00	38a554e8-7e78-48e7-bd13-f12f4f3dc42f	122	0	\N	single	\N	\N	\N	\N
dc135147-6ae0-4375-8b44-9725bd2929c8	2025-10-13 13:01:41.079948+00	bb693b4a-e88b-468e-95ad-c0357b91a5eb	13	0	\N	group	\N	\N	\N	\N
95742118-6c00-40ef-9e42-6ee7e7d8a92c	2025-10-13 13:01:41.079948+00	bb693b4a-e88b-468e-95ad-c0357b91a5eb	18	0	\N	group	\N	\N	\N	\N
92fdd14f-3550-46f5-a4fe-8a58be09fdc7	2025-10-13 13:01:41.079948+00	bb693b4a-e88b-468e-95ad-c0357b91a5eb	34	0	\N	single	\N	\N	\N	\N
999dcdae-a5ba-4128-861f-dc8768de966e	2025-10-13 13:01:41.079948+00	bb693b4a-e88b-468e-95ad-c0357b91a5eb	48	0	\N	single	\N	\N	\N	\N
8db220c2-105b-42f4-bb63-45b6c872fe7c	2025-10-13 13:01:41.079948+00	bb693b4a-e88b-468e-95ad-c0357b91a5eb	76	0	\N	single	\N	\N	\N	\N
a24df439-a67c-49c1-908d-ac3c4b27ad2a	2025-10-13 13:01:41.079948+00	38a554e8-7e78-48e7-bd13-f12f4f3dc42f	11	1	\N	single	\N	\N	\N	\N
435c7d99-9b37-4e1d-b82a-964e3f2e1a10	2025-10-13 13:01:41.079948+00	0cfd0e81-7086-4d65-ad0b-5f8db56e1bc7	8	0	\N	single	\N	\N	\N	\N
ed76f87a-5b3e-4620-898d-9b5dc73f0749	2025-10-13 13:01:41.079948+00	04ebaabf-9cac-4c31-b401-28b01beebf24	25	0	\N	single	\N	\N	\N	\N
aab11d35-80fb-4a95-909e-bb07876dc6e2	2025-10-13 13:01:41.079948+00	04ebaabf-9cac-4c31-b401-28b01beebf24	28	0	\N	single	\N	\N	\N	\N
c771dc8a-3663-49a8-83ac-3e8271dfece7	2025-10-13 13:01:41.079948+00	efc601e8-0dc1-4a66-8e0d-50c9543752d9	28	2	0.652	group	0.88	0.957	0	1
78c93e14-4d3e-4fd6-a37f-5306ebc89701	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	50	0	\N	group	\N	\N	\N	\N
ab7cede6-58b3-4dab-92f4-725a9fb3cd50	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	55	0	\N	group	\N	\N	\N	\N
9ff606b0-8939-4187-8d1e-44f88d362895	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	62	0	\N	single	\N	\N	\N	\N
dca5457b-45f2-4a24-a67b-17298930a40f	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	68	0	\N	single	\N	\N	\N	\N
9b309d92-11b3-48c4-a349-2054eb0cd674	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	72	0	\N	group	\N	\N	\N	\N
9132f982-8774-40e9-b59d-0d4e2cb8e8fd	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	103	0	\N	group	\N	\N	\N	\N
a31d3d93-4761-4ff6-b3ef-0d9539682ae7	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	142	0	\N	group	\N	\N	\N	\N
d23522c3-a7f3-45a0-acb4-9fb412ed9d6c	2025-10-13 13:01:41.079948+00	0c365433-b10d-4075-9717-8fbdf85248d0	147	0	\N	single	\N	\N	\N	\N
ee4bc4ab-2731-465d-a89e-5c85ef2f6eed	2025-10-13 13:01:41.079948+00	fef38e4f-7920-4997-837c-f9a32f9b5ea6	17	0	\N	group	\N	\N	\N	\N
6dd2ed90-1b81-4aff-b92e-439bcccb1efd	2025-10-13 13:01:41.079948+00	fef38e4f-7920-4997-837c-f9a32f9b5ea6	29	0	\N	single	\N	\N	\N	\N
b9e0ce79-964b-4d65-82bd-a0acfc4fa203	2025-10-13 13:01:41.079948+00	b9341ab9-be16-4437-9e3d-67186fe772a2	18	0	\N	group	\N	\N	\N	\N
9bf3da6e-21c5-46f3-8e4f-8b318ba8352d	2025-10-13 13:01:41.079948+00	b9341ab9-be16-4437-9e3d-67186fe772a2	36	0	\N	single	\N	\N	\N	\N
db433235-1946-4a32-bc4b-d955c6cf33fb	2025-10-13 13:01:41.079948+00	b9341ab9-be16-4437-9e3d-67186fe772a2	38	0	\N	single	\N	\N	\N	\N
dd422538-15f0-4e14-870e-41477166a472	2025-10-13 13:01:41.079948+00	3035da4d-36ee-45d8-b997-47b094540c64	21	0	\N	single	\N	\N	\N	\N
a5ffeef8-e9f2-42ff-a522-44a302886971	2025-10-13 13:01:41.079948+00	81cde6f6-9fc6-4c08-a329-ce09cc5470cd	16	0	\N	single	\N	\N	\N	\N
dc5d070f-a8b9-4322-a1a6-dedc4653df86	2025-10-13 13:01:41.079948+00	62bbc01d-43d0-45a8-96d6-f54a4f19c26c	74	0	\N	single	\N	\N	\N	\N
cd912120-4d08-4047-81de-73734983916e	2025-10-13 13:01:41.079948+00	5869e577-2058-4231-9b05-6b92eee8a570	18	0	\N	single	\N	\N	\N	\N
820d4841-8ff6-4f38-b3af-60919e25f314	2025-10-13 13:01:41.079948+00	3caae3b1-4cb2-4f7f-bd64-b08cc0d070c2	20	0	\N	single	\N	\N	\N	\N
24777278-dbf8-4e18-adc3-140b43e25adf	2025-10-13 13:01:41.079948+00	d1507a6d-0e05-4667-b76e-035cdd95685a	16	0	\N	single	\N	\N	\N	\N
fced283a-24f1-4469-abf7-2392b93d75a8	2025-10-13 13:01:41.079948+00	89e9cc60-bf22-4937-867e-05a8625861d8	32	0	\N	single	\N	\N	\N	\N
ecd21a77-c188-41cf-89c7-c6c7c884b063	2025-10-13 13:01:41.079948+00	89e9cc60-bf22-4937-867e-05a8625861d8	37	0	\N	single	\N	\N	\N	\N
8267527e-43c3-4412-8e0c-eaf1021753dd	2025-10-13 13:01:41.079948+00	731c4c59-bdbb-4cb8-a751-36282421a006	13	0	\N	group	\N	\N	\N	\N
20777a91-4c10-429f-8ce7-9d6226796235	2025-10-13 13:01:41.079948+00	7aab243f-5638-4f6d-ac28-037b4957fc24	10	0	\N	single	\N	\N	\N	\N
5df0848d-928e-4220-a6b9-774a392be550	2025-10-13 13:01:41.079948+00	7aab243f-5638-4f6d-ac28-037b4957fc24	40	0	\N	single	\N	\N	\N	\N
7ced1ff9-3c7b-4c1a-b06c-ae604866a7de	2025-10-13 13:01:41.079948+00	7aab243f-5638-4f6d-ac28-037b4957fc24	48	0	\N	single	\N	\N	\N	\N
e64a2054-b2b2-46d1-9ece-21e9e997a012	2025-10-13 13:01:41.079948+00	3ffc2c28-dbb2-44f6-9c59-4eed48582291	12	0	\N	single	\N	\N	\N	\N
3903f928-cc2f-40cf-b617-2a39a3c88d26	2025-10-13 13:01:41.079948+00	3ffc2c28-dbb2-44f6-9c59-4eed48582291	23	0	\N	single	\N	\N	\N	\N
ee099f42-cc1d-4856-bd42-8331a96fb787	2025-10-13 13:01:41.079948+00	4115a456-094c-4a00-b409-d47a207709b5	2	0	\N	single	\N	\N	\N	\N
35403b6a-0e0b-43a2-a6b5-359dc1339a01	2025-10-13 13:01:41.079948+00	a14ba571-97ad-443f-be1c-212b8a292030	3	0	\N	single	\N	\N	\N	\N
1317af0d-2b7b-488a-987e-b47a54d36790	2025-10-13 13:01:41.079948+00	7a36b42c-6124-4088-9333-7838ac54b9c1	2	0	\N	single	\N	\N	\N	\N
e79bd980-82a4-4e5d-adc5-df1bda15e363	2025-10-13 13:01:41.079948+00	1cd94ac2-ef29-4fee-bba9-8cfbaaf70ee0	2	0	\N	single	\N	\N	\N	\N
51167122-eea7-4135-8559-d26846baf150	2025-10-13 13:01:41.079948+00	e598b757-93e2-43f6-8c9d-2e217f7989c4	14	0	\N	single	\N	\N	\N	\N
46f2068a-c3cd-4f8f-a306-95a75066c470	2025-10-13 13:01:41.079948+00	e598b757-93e2-43f6-8c9d-2e217f7989c4	29	0	\N	single	\N	\N	\N	\N
08af4fea-6a07-4e70-ad88-ddb3624842e3	2025-10-13 13:01:41.079948+00	e598b757-93e2-43f6-8c9d-2e217f7989c4	38	0	\N	single	\N	\N	\N	\N
a1dd00ca-60f9-4aaa-a132-b4c107f49ed7	2025-10-13 13:01:41.079948+00	e598b757-93e2-43f6-8c9d-2e217f7989c4	42	0	\N	single	\N	\N	\N	\N
7ad10b07-81a0-4b51-8f93-4f77cccfa82a	2025-10-13 13:01:41.079948+00	e598b757-93e2-43f6-8c9d-2e217f7989c4	48	0	\N	single	\N	\N	\N	\N
034c4407-6f53-41f0-888d-044f877e71f1	2025-10-13 13:01:41.079948+00	e598b757-93e2-43f6-8c9d-2e217f7989c4	79	0	\N	single	\N	\N	\N	\N
29a23830-959d-4a02-ae4a-2fe4d471f9b3	2025-10-13 13:01:41.079948+00	43e681cf-92ff-4751-965e-bd6a690b8bba	18	0	\N	single	\N	\N	\N	\N
8fef3d20-75d7-4aa1-9067-c4c675771f96	2025-10-13 13:01:41.079948+00	4562b909-13e2-4542-a876-eaed6e647148	36	0	\N	group	\N	\N	\N	\N
cab33795-bb2d-4b39-9462-e7487f59bd4b	2025-10-13 13:01:41.079948+00	4562b909-13e2-4542-a876-eaed6e647148	41	0	\N	group	\N	\N	\N	\N
fdd393d8-21fa-4ef6-9785-31197ea4526a	2025-10-13 13:01:41.079948+00	07174024-93ad-4e7e-ab19-03621ee12562	33	0	\N	single	\N	\N	\N	\N
4bbdc509-9e1b-4d5b-9921-4f386e9ad3ca	2025-10-13 13:01:41.079948+00	07174024-93ad-4e7e-ab19-03621ee12562	41	0	\N	single	\N	\N	\N	\N
aa75af7f-6204-4afb-9fa7-bb6898ec7273	2025-10-13 13:01:41.079948+00	48618768-1e78-4906-ac9e-e4e70401537d	87	0	\N	single	\N	\N	\N	\N
852e526a-c147-45be-84cd-2bb49a6c26c8	2025-10-13 13:01:41.079948+00	48618768-1e78-4906-ac9e-e4e70401537d	89	0	\N	single	\N	\N	\N	\N
8e2e24f9-cf07-4b17-80ae-275ff21467ca	2025-10-13 13:01:41.079948+00	9466c523-e3f9-4e5b-b7cc-8566386052e5	19	0	\N	single	\N	\N	\N	\N
08120524-fc6a-422e-af93-bfeb44a55bdd	2025-10-13 13:01:41.079948+00	2473ad94-dceb-4aa5-9f75-42d4dccf48f9	27	0	\N	single	\N	\N	\N	\N
aa10aff7-f499-4f72-8f0a-b62eb1d345fc	2025-10-13 13:01:41.079948+00	44adf8ef-4327-47ca-9669-508b400acb71	9	0	\N	single	\N	\N	\N	\N
6f8f7019-5b77-48ee-84a4-6afd9ceca82c	2025-10-13 13:01:41.079948+00	cecfb646-0d1c-439f-bf19-cfd81f5c095d	7	0	\N	single	\N	\N	\N	\N
8072df49-a378-496a-85be-8a25fbbc605a	2025-10-13 13:01:41.079948+00	d8a5a606-636e-4cd6-90d0-e5638890cf6a	18	0	\N	single	\N	\N	\N	\N
503cf07b-2fe8-41e0-9452-5b7369f872e7	2025-10-13 13:01:41.079948+00	dfadd0a7-275d-4ee0-b9fe-7667d3fe1696	10	0	\N	single	\N	\N	\N	\N
7839ff28-ba17-4c96-ab6a-5f03bd913905	2025-10-13 13:01:41.079948+00	d23e4628-2124-4960-a5a2-24d47f9632a5	8	0	\N	single	\N	\N	\N	\N
c852db80-7589-456e-9886-7eb81ccfd8ce	2025-10-13 13:01:41.079948+00	c48253df-0bb7-47b3-b2e9-a1a9c9941393	15	0	\N	single	\N	\N	\N	\N
101ca9a4-4be5-402b-af04-b7cf5f11288a	2025-10-13 13:01:41.079948+00	73d7ac74-31d2-4adc-9bd9-af5faa38dce1	11	0	\N	single	\N	\N	\N	\N
eca39458-2d34-49f3-a4a9-0d43266e2c7e	2025-10-13 13:01:41.079948+00	f4cd8d7c-b228-42f5-9c6d-c76f8ad1158e	7	0	\N	single	\N	\N	\N	\N
f97c018c-849d-4c7b-8804-21b193a36de5	2025-10-13 13:01:41.079948+00	af4ce211-1a8b-4825-92f3-3bbbc5b1f236	14	0	\N	single	\N	\N	\N	\N
2e2983e9-ad49-4ba1-8354-5f52dd3bec2e	2025-10-13 13:01:41.079948+00	0cfd0e81-7086-4d65-ad0b-5f8db56e1bc7	2	0	\N	single	\N	\N	\N	\N
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."profiles" ("id", "created_at", "first_name", "last_name", "role", "email") FROM stdin;
17a7019f-4eb1-40fb-8c66-e2953af5f4be	2025-10-13 08:54:41.224694+00	Max	Mustermann	annotator	max@muster.mann
907f4be7-ac0e-480c-8e51-a99f52011653	2025-10-13 08:54:14.814029+00	Erika	Mustermann	annotator	erika@muster.mann
1b72e486-49a7-4ea9-b150-1bde29d73318	2025-10-14 01:21:43.423251+00	Mustermann	Reviewer	reviewer	reviewer@muster.mann
23a359b5-a3c7-4b99-8088-2e23f679df7f	2025-10-14 01:22:40.132785+00	Mustermann	Admin	admin	admin@muster.mann
\.


--
-- Data for Name: annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotations" ("id", "created_at", "user_id", "citation_id", "status", "comment", "updated_at", "annotation_location") FROM stdin;
597b61f2-140e-4215-9aa7-23eaddacb1ee	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	77b266a8-2baa-45a0-8508-44f37ad52392	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b4e15fbb-c40c-416e-9f8b-f16e7ab5f1e3	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	a24df439-a67c-49c1-908d-ac3c4b27ad2a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ae365756-4880-4801-bf85-e3f0d2dd8d71	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	54423811-9098-4e41-9f02-246dd2cf5bb8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
1da5d4dd-b29e-41cb-bb1a-3fb14b5af390	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	54423811-9098-4e41-9f02-246dd2cf5bb8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
8f2eadb3-ee61-4ab2-bfb8-81919266473a	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	5a7ed88f-2568-4b80-b99b-7c0c468ef29c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
fc0c03c9-7e48-446f-b051-6d5bc01cc096	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	5a7ed88f-2568-4b80-b99b-7c0c468ef29c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
4112ffc6-fce8-4f61-b187-551d849a03bd	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	3123d81c-a940-4075-95a9-f6a189f33c84	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
f766de06-d260-41c4-bc35-81781ca06c5f	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	3123d81c-a940-4075-95a9-f6a189f33c84	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
4d7505f5-125c-41c2-8ede-2f8bbe9b220e	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	280e23d3-4e22-4660-b570-eacd453abd41	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
59de4b61-e18a-423b-ba71-56142f236183	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	280e23d3-4e22-4660-b570-eacd453abd41	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
76225273-a8da-4cc8-92a2-57f3d58bdd40	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	cc12a34b-1424-4053-b174-d35c77d5dc53	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
2e756f63-804d-436f-9503-4ad4c49cc6cf	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	cc12a34b-1424-4053-b174-d35c77d5dc53	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
2baf9b51-854d-458b-9fc7-c8965a401a20	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	6b73dbb4-5ed7-4543-b5a1-3671a4ce0532	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b1f5e362-3fea-4ee6-86d9-fae8cbb5ce4e	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	6b73dbb4-5ed7-4543-b5a1-3671a4ce0532	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
93e24158-ac64-4139-a750-85acdbe16f05	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	dc135147-6ae0-4375-8b44-9725bd2929c8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
cc006886-7718-4bd7-94a4-b1e65bb0200e	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	dc135147-6ae0-4375-8b44-9725bd2929c8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
33f97a6d-e283-45ba-97ca-ca2d75ec7961	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	95742118-6c00-40ef-9e42-6ee7e7d8a92c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
e9ab3c35-35b3-4167-827d-6594c25d6bc1	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	95742118-6c00-40ef-9e42-6ee7e7d8a92c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
cc604b2e-cf7b-491f-9556-5fee070f89e4	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	92fdd14f-3550-46f5-a4fe-8a58be09fdc7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
bd0f6f36-3cb1-48a9-89ba-e92f63f6fe65	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	92fdd14f-3550-46f5-a4fe-8a58be09fdc7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
3526629c-64ae-4f19-b276-c13e2983a8ed	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	999dcdae-a5ba-4128-861f-dc8768de966e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
cd0974f3-3d28-4f55-b3d3-be31036b582d	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	999dcdae-a5ba-4128-861f-dc8768de966e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
acd5cbd6-4aec-4351-9a71-bfd663537672	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	8db220c2-105b-42f4-bb63-45b6c872fe7c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6f1cf332-6929-4b65-854b-acac86ac3c9f	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	8db220c2-105b-42f4-bb63-45b6c872fe7c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
8693f076-10eb-4688-8a65-a6b418bfdc3d	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	78c93e14-4d3e-4fd6-a37f-5306ebc89701	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
3c1817a6-93d1-460c-851d-3ffac2f01f92	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	78c93e14-4d3e-4fd6-a37f-5306ebc89701	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
264b029b-da0a-422d-9da3-b2fcaaad6d1a	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	ab7cede6-58b3-4dab-92f4-725a9fb3cd50	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
3ddb888a-c634-44b5-8f4a-d3542dc604e4	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	ab7cede6-58b3-4dab-92f4-725a9fb3cd50	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
4461fd7d-bed5-46a4-b324-7738479beb3c	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	9ff606b0-8939-4187-8d1e-44f88d362895	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
119ca487-35c9-4644-a752-f01045e3cbc9	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	9ff606b0-8939-4187-8d1e-44f88d362895	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
230abce0-2db6-4ab8-a200-39db056de3e8	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	dca5457b-45f2-4a24-a67b-17298930a40f	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
67e32091-7b06-478d-bff0-2a11e2d0ffce	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	dca5457b-45f2-4a24-a67b-17298930a40f	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
d64acb23-7266-4714-8e6d-dfb505ad5046	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	9b309d92-11b3-48c4-a349-2054eb0cd674	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
eedc4580-3197-4c65-8eb2-a6fb92feb217	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	9b309d92-11b3-48c4-a349-2054eb0cd674	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
c64d7839-7ae6-4d4f-8dcd-2f904f0233cc	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	9132f982-8774-40e9-b59d-0d4e2cb8e8fd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
9953cef9-be93-426d-b1bf-06295182dabd	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	9132f982-8774-40e9-b59d-0d4e2cb8e8fd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
e2906b74-b00a-4c5a-9ed1-5b8cacb317cd	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	a31d3d93-4761-4ff6-b3ef-0d9539682ae7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b1f166cf-8223-4b83-990e-a4b39547744d	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	a31d3d93-4761-4ff6-b3ef-0d9539682ae7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
06c0d554-bbb0-4f18-aebb-3da7f50d02d6	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	d23522c3-a7f3-45a0-acb4-9fb412ed9d6c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ca2693ad-692d-4eb9-8179-ba9849e32c0e	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	d23522c3-a7f3-45a0-acb4-9fb412ed9d6c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6930d1ba-c274-4b1b-bb0f-f5bc5c5fe3a5	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	ee4bc4ab-2731-465d-a89e-5c85ef2f6eed	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b13d20d0-ffb0-43ef-a181-fce74ff80b6c	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	ee4bc4ab-2731-465d-a89e-5c85ef2f6eed	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a6cbed73-559a-4dd5-8c7e-471e5c7907f2	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	6dd2ed90-1b81-4aff-b92e-439bcccb1efd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
d04d5a71-bdd6-4e72-9c06-1980881f283a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	6dd2ed90-1b81-4aff-b92e-439bcccb1efd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
c9569170-36ca-48b6-8aa0-1871a84544d1	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	b9e0ce79-964b-4d65-82bd-a0acfc4fa203	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
1c4af0cb-57c7-4268-a61b-213e6617230d	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	b9e0ce79-964b-4d65-82bd-a0acfc4fa203	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6811c4a7-6fdb-4db6-96c2-8b71065c8f5c	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	9bf3da6e-21c5-46f3-8e4f-8b318ba8352d	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
25c80669-33a1-4ca6-8c88-2890869e1689	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	9bf3da6e-21c5-46f3-8e4f-8b318ba8352d	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a584fbbd-a58e-416b-b11a-63f21d5c8662	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	db433235-1946-4a32-bc4b-d955c6cf33fb	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b7387a8c-f073-4b59-88a6-b11dceabc064	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	db433235-1946-4a32-bc4b-d955c6cf33fb	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
67a87385-f626-4c0f-b54a-5d3dd2c0ae17	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	dd422538-15f0-4e14-870e-41477166a472	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
d5ca658a-b92f-462d-9a5e-1a10db3fd0a3	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	dd422538-15f0-4e14-870e-41477166a472	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
83708f80-8fe7-44f6-b011-ae5f2a9b9d85	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	a5ffeef8-e9f2-42ff-a522-44a302886971	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6d77346e-0a3a-4bb7-bef0-bd4e27ffc7ae	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	a5ffeef8-e9f2-42ff-a522-44a302886971	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
70a83070-3ab3-498e-935d-a252c0c902ad	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	dc5d070f-a8b9-4322-a1a6-dedc4653df86	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
509cdeb7-5183-40fd-9b68-d925e4c19ea3	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	dc5d070f-a8b9-4322-a1a6-dedc4653df86	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
bc1d12b5-3ad7-4200-8db4-06338d5b177b	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	cd912120-4d08-4047-81de-73734983916e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
1dada2ad-b4a9-45a0-877b-845d71980996	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	cd912120-4d08-4047-81de-73734983916e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
190490b6-a338-47cd-8971-ca514d1b652b	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	820d4841-8ff6-4f38-b3af-60919e25f314	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
f5838c6d-7439-4d21-8ede-c0d1b53a34e6	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	820d4841-8ff6-4f38-b3af-60919e25f314	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
c7a75aa2-c030-4b78-a287-538012d5b01c	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	24777278-dbf8-4e18-adc3-140b43e25adf	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
efc72171-dfa3-430a-a1d4-7f5a34f613a2	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	3e717485-8c19-493c-96bc-f9cdd431246d	skipped	I dont think I want to do this taks.	2025-10-13 13:02:28.525702+00	\N
e4fdf1a2-ca4e-4a6c-9934-d8201b5bfb0a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	24777278-dbf8-4e18-adc3-140b43e25adf	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
22047de2-8059-411b-b6e9-5c55d2c0b637	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	fced283a-24f1-4469-abf7-2392b93d75a8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a5d75eea-9ffb-43bb-b219-7f687423823a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	fced283a-24f1-4469-abf7-2392b93d75a8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
1c3b4bc2-0675-46fb-9237-46289f0139fe	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	ecd21a77-c188-41cf-89c7-c6c7c884b063	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6d9fcd18-1594-44da-94ff-76a98679820c	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	ecd21a77-c188-41cf-89c7-c6c7c884b063	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
433b711a-943f-4402-9250-e9ef0bc1e94b	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	8267527e-43c3-4412-8e0c-eaf1021753dd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
3488d200-3313-45ac-9d82-0db28e04372f	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	8267527e-43c3-4412-8e0c-eaf1021753dd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b3e88667-8914-490d-a3ad-ad65343b71f7	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	c771dc8a-3663-49a8-83ac-3e8271dfece7	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
dea7bb06-216c-4062-a9c4-7449596f27bb	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	20777a91-4c10-429f-8ce7-9d6226796235	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
c1f9b9c7-c0ae-47b4-b26b-91e2941ba349	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	20777a91-4c10-429f-8ce7-9d6226796235	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
d02ccbe8-17be-4480-bef7-525e14494d38	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	5df0848d-928e-4220-a6b9-774a392be550	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ebb0f893-80aa-48f6-9128-28274e6ee047	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	5df0848d-928e-4220-a6b9-774a392be550	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
37e2e7ca-3bea-4f08-bc90-d2dd6d25bb13	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	7ced1ff9-3c7b-4c1a-b06c-ae604866a7de	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b108f38b-cdf3-4a88-8d99-63bf740a1d6a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	7ced1ff9-3c7b-4c1a-b06c-ae604866a7de	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
3c40c7aa-9f5d-4206-a385-d56b5bc12da6	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	e64a2054-b2b2-46d1-9ece-21e9e997a012	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b7832a21-edb9-447d-96b1-33a9f87dd7a6	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	e64a2054-b2b2-46d1-9ece-21e9e997a012	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
7da3f8ee-b4e5-48d8-9f5f-5a084ac1248a	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	3903f928-cc2f-40cf-b617-2a39a3c88d26	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
fa51dda9-569e-453c-b9cb-335f541330b7	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	3903f928-cc2f-40cf-b617-2a39a3c88d26	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
c6528302-963e-4631-be93-b0449d2892be	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	ee099f42-cc1d-4856-bd42-8331a96fb787	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
678b24ff-5bde-4f06-b149-39ccc9fe879a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	ee099f42-cc1d-4856-bd42-8331a96fb787	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
8297e3c9-abd5-47e5-b5d5-6f5b025c5715	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	35403b6a-0e0b-43a2-a6b5-359dc1339a01	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
8e495856-bbe1-4f78-882a-f7dbab4f3165	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	35403b6a-0e0b-43a2-a6b5-359dc1339a01	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
7e5ebaea-fda4-4270-b6d7-f754f64683fa	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	1317af0d-2b7b-488a-987e-b47a54d36790	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
4688ed47-6aa1-47db-b1de-67d4af850c94	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	1317af0d-2b7b-488a-987e-b47a54d36790	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b8d0d606-6686-40b7-a6d2-52b38a8e0f26	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	e79bd980-82a4-4e5d-adc5-df1bda15e363	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
41114ba2-f4cb-4ed5-a4f7-955e674950ba	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	e79bd980-82a4-4e5d-adc5-df1bda15e363	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
1eebe3af-94ca-4f40-b9dd-a619dddd277d	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	51167122-eea7-4135-8559-d26846baf150	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
720860ca-a7a8-42d7-975f-47e073478200	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	51167122-eea7-4135-8559-d26846baf150	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a916ac70-528f-4e8d-91e4-de57c7b4cdfd	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	46f2068a-c3cd-4f8f-a306-95a75066c470	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
aa0e7b37-2236-46e0-87c0-bd644237e4e5	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	46f2068a-c3cd-4f8f-a306-95a75066c470	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a5c238f8-0409-418d-b11e-d54876c46e5c	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	08af4fea-6a07-4e70-ad88-ddb3624842e3	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
21264118-4844-4dc6-8fc2-6a83d09fa14e	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	08af4fea-6a07-4e70-ad88-ddb3624842e3	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
99d53a9d-b087-4c39-9b66-6ffd568142b8	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	a1dd00ca-60f9-4aaa-a132-b4c107f49ed7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a7d5af1f-785f-4a63-8606-e848a8a314ae	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	a1dd00ca-60f9-4aaa-a132-b4c107f49ed7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
7041ba6e-bae5-4cc9-94cc-c0d69870bed8	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	7ad10b07-81a0-4b51-8f93-4f77cccfa82a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6786e82d-2ae6-415a-b34f-109b58874acb	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	7ad10b07-81a0-4b51-8f93-4f77cccfa82a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
1ac98680-214f-4800-b2c9-695c2324272f	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	034c4407-6f53-41f0-888d-044f877e71f1	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a6297d5e-8d53-4303-b4b3-1048f29252dc	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	034c4407-6f53-41f0-888d-044f877e71f1	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ffb7ed31-308a-4494-bfe7-9289c5379e94	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	29a23830-959d-4a02-ae4a-2fe4d471f9b3	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6aaabfe3-8b9b-4f71-b8d1-a2f0aea29106	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	29a23830-959d-4a02-ae4a-2fe4d471f9b3	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
95d6122e-e09c-46de-8ebe-e8fb35050ab0	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	8fef3d20-75d7-4aa1-9067-c4c675771f96	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
afa94be9-9171-430d-8ef2-95b999b7cea8	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	8fef3d20-75d7-4aa1-9067-c4c675771f96	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
8c85389d-22ff-4050-9de2-ae1f9bc223e0	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	cab33795-bb2d-4b39-9462-e7487f59bd4b	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
fe70ceff-e094-438b-9fa2-c35a45c824ca	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	cab33795-bb2d-4b39-9462-e7487f59bd4b	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ba2e8ad3-4ccf-4a30-b094-3bcaeb47868e	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	fdd393d8-21fa-4ef6-9785-31197ea4526a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
e3b0b6a3-2f35-48f5-9709-8247863be446	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	fdd393d8-21fa-4ef6-9785-31197ea4526a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
5f5b613f-6930-4ca5-b8fd-1232348c1af3	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	4bbdc509-9e1b-4d5b-9921-4f386e9ad3ca	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
d80d78ab-4b37-4535-adea-a39e781733b5	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	4bbdc509-9e1b-4d5b-9921-4f386e9ad3ca	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b64e0d94-28f2-4e58-941d-d64ff32ca464	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	aa75af7f-6204-4afb-9fa7-bb6898ec7273	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
2a8156e4-452c-4993-91fc-375d55e025fe	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	aa75af7f-6204-4afb-9fa7-bb6898ec7273	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
9bd9f2a5-894e-44b2-a8a8-bd7066929806	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	852e526a-c147-45be-84cd-2bb49a6c26c8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
4207d754-5aef-4cd5-9184-74af36a91b60	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	852e526a-c147-45be-84cd-2bb49a6c26c8	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b4972438-7455-4817-a8ca-ddc43b7ce49b	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	8e2e24f9-cf07-4b17-80ae-275ff21467ca	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
c09ba3ac-4b2c-4c80-8240-5b467eb07470	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	8e2e24f9-cf07-4b17-80ae-275ff21467ca	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
0a06bd23-429e-47d7-8989-b77b0a0a1c61	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	08120524-fc6a-422e-af93-bfeb44a55bdd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ebf5d5a8-dbeb-4ee0-a9cb-11b30a8778c6	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	08120524-fc6a-422e-af93-bfeb44a55bdd	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
73e10632-773f-4951-b5d4-af2958e49aa9	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	aa10aff7-f499-4f72-8f0a-b62eb1d345fc	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
eaacd5f2-722a-4e31-8b0c-abd80457f9e7	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	aa10aff7-f499-4f72-8f0a-b62eb1d345fc	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
45335a27-88e5-449b-befb-d194769da2c3	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	6f8f7019-5b77-48ee-84a4-6afd9ceca82c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
95eac036-0103-4a11-94fa-2077e3d39d9a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	6f8f7019-5b77-48ee-84a4-6afd9ceca82c	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ee6ad330-a3af-468f-a17c-a4853acbfbdc	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	8072df49-a378-496a-85be-8a25fbbc605a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
13f9fc82-c035-4019-8cbd-8c765ddad14b	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	8072df49-a378-496a-85be-8a25fbbc605a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
255d0e04-de3e-4362-913a-d1aaa8fadbab	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	503cf07b-2fe8-41e0-9452-5b7369f872e7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
7dde3a0e-c57c-43bc-a7d9-cc2a585b0c87	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	503cf07b-2fe8-41e0-9452-5b7369f872e7	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
889b2062-f520-4dc4-930a-51feabfdb27d	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	7839ff28-ba17-4c96-ab6a-5f03bd913905	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
ca06f69d-d143-4619-8d83-e0023f1f74b8	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	7839ff28-ba17-4c96-ab6a-5f03bd913905	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
18853e30-5946-4cdc-8413-773392082f50	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	c852db80-7589-456e-9886-7eb81ccfd8ce	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
9ac5eef6-14da-40d3-ae38-e3a107f70f20	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	c852db80-7589-456e-9886-7eb81ccfd8ce	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
e8d28e01-cd33-447d-969e-80cf9d42975e	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	101ca9a4-4be5-402b-af04-b7cf5f11288a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a0b833a0-c4a7-4b8d-9d86-154216ee8b2a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	101ca9a4-4be5-402b-af04-b7cf5f11288a	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
f57c17a7-9e9c-4177-a206-f29f7a5206d6	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	eca39458-2d34-49f3-a4a9-0d43266e2c7e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
d3f17319-e75a-49a5-8eab-d39f0e472cc4	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	eca39458-2d34-49f3-a4a9-0d43266e2c7e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
54f6be2d-d9a2-4fad-9313-034d77e6b7ea	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	f97c018c-849d-4c7b-8804-21b193a36de5	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
796c6524-396f-48db-a4d3-c1835d5164ff	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	f97c018c-849d-4c7b-8804-21b193a36de5	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
3b2c70d6-69cd-4e3c-b0c0-2aad96776c89	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	2e2983e9-ad49-4ba1-8354-5f52dd3bec2e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
a4384bde-c2ee-4e36-8ff4-d26ca28b9c05	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	2e2983e9-ad49-4ba1-8354-5f52dd3bec2e	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
47be7b29-2176-4ee4-893c-6f444ab92d66	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	435c7d99-9b37-4e1d-b82a-964e3f2e1a10	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
af97f987-d335-494f-8f1e-99ec53ea24d4	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	435c7d99-9b37-4e1d-b82a-964e3f2e1a10	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
6442df6b-cf50-4214-a357-56c5317128b9	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	ed76f87a-5b3e-4620-898d-9b5dc73f0749	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
b5a46405-30dd-4754-a28c-b31225d4f1db	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	ed76f87a-5b3e-4620-898d-9b5dc73f0749	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
86204a1a-5356-4612-bca7-8150078623d5	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	aab11d35-80fb-4a95-909e-bb07876dc6e2	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
e807311f-53a2-4191-bce2-e61cf4a3bb85	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	aab11d35-80fb-4a95-909e-bb07876dc6e2	outstanding	\N	2025-10-13 13:02:28.525702+00	\N
1336e343-0287-49ba-af8e-842c06c6c481	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	3e717485-8c19-493c-96bc-f9cdd431246d	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
4cf3b2e8-0a46-4e6c-bb3f-9ddcb3f8150a	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	ee29f142-860f-4ea4-8de8-df24d0fe0540	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
a52371a1-9c20-432d-acae-b3afed14bcc8	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	628b9f76-e331-4be9-bfdb-a3dee311d6c9	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
d00ac181-743a-4717-8d86-a26481d54574	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	ee29f142-860f-4ea4-8de8-df24d0fe0540	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,1,1,1,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
58ea58c5-9c82-468d-bf20-b87f9a0e4ae4	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	628b9f76-e331-4be9-bfdb-a3dee311d6c9	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
89bea49f-057b-4632-9299-f7cb271077cd	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	d195a555-af7d-4397-b973-00d8c37465a2	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
14998cf2-95fb-4eea-acff-5bda19d0814b	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	c771dc8a-3663-49a8-83ac-3e8271dfece7	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
a282e61d-ca7f-4632-bee2-3614cc4ee39a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	77b266a8-2baa-45a0-8508-44f37ad52392	annotated	here	2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
3af81aea-8000-4152-b79e-28ded9e4f31a	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	a24df439-a67c-49c1-908d-ac3c4b27ad2a	annotated		2025-10-13 13:02:28.525702+00	{1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
f013b554-f1b8-4621-856f-355ee2e10190	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	d195a555-af7d-4397-b973-00d8c37465a2	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
c8d60137-0ca1-47e0-b7fc-a85993ba8cc3	2025-10-13 13:02:28.525702+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	9e53b3cb-bbdc-4506-9d08-4ec1d7548a93	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
de3d701a-635a-4158-ac72-f5fc75e84e20	2025-10-13 13:02:28.525702+00	907f4be7-ac0e-480c-8e51-a99f52011653	9e53b3cb-bbdc-4506-9d08-4ec1d7548a93	annotated		2025-10-13 13:02:28.525702+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
\.


--
-- Data for Name: cited_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."cited_documents" ("citation_id", "document_id") FROM stdin;
3e717485-8c19-493c-96bc-f9cdd431246d	8ff548f3-8f25-4236-a5a6-84e051aa44ea
3e717485-8c19-493c-96bc-f9cdd431246d	423b3ae1-7199-45fc-8993-ab1d60ad508e
ee29f142-860f-4ea4-8de8-df24d0fe0540	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
ee29f142-860f-4ea4-8de8-df24d0fe0540	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
ee29f142-860f-4ea4-8de8-df24d0fe0540	5b199f71-ed8e-4075-acaf-15e8ce051da5
ee29f142-860f-4ea4-8de8-df24d0fe0540	af8cdb44-5c50-471c-9aa2-cb0edb991947
628b9f76-e331-4be9-bfdb-a3dee311d6c9	5e4b2bdc-e051-42be-af87-8d733ea0b18b
628b9f76-e331-4be9-bfdb-a3dee311d6c9	9abad173-cf92-4f9f-98e4-13af0b00becb
628b9f76-e331-4be9-bfdb-a3dee311d6c9	d444d507-7f14-47ce-a71d-3c3e94339464
d195a555-af7d-4397-b973-00d8c37465a2	9eb749c7-e1ae-4b1a-a223-2e655b908917
d195a555-af7d-4397-b973-00d8c37465a2	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
9e53b3cb-bbdc-4506-9d08-4ec1d7548a93	9eb749c7-e1ae-4b1a-a223-2e655b908917
9e53b3cb-bbdc-4506-9d08-4ec1d7548a93	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
c771dc8a-3663-49a8-83ac-3e8271dfece7	2bcaafd9-0741-408f-9fcb-527af21ccfe8
c771dc8a-3663-49a8-83ac-3e8271dfece7	9e690ec4-c4aa-41a9-b708-12aa782e4da2
c771dc8a-3663-49a8-83ac-3e8271dfece7	523e8165-23c4-4303-9d4f-7cc3c28f8fb8
77b266a8-2baa-45a0-8508-44f37ad52392	9e690ec4-c4aa-41a9-b708-12aa782e4da2
77b266a8-2baa-45a0-8508-44f37ad52392	105dfc42-7606-401a-b47d-c43c9a3cda3a
a24df439-a67c-49c1-908d-ac3c4b27ad2a	82f6b3ab-7dea-4667-a19c-ea906c25a458
54423811-9098-4e41-9f02-246dd2cf5bb8	af8cdb44-5c50-471c-9aa2-cb0edb991947
5a7ed88f-2568-4b80-b99b-7c0c468ef29c	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
5a7ed88f-2568-4b80-b99b-7c0c468ef29c	5b199f71-ed8e-4075-acaf-15e8ce051da5
5a7ed88f-2568-4b80-b99b-7c0c468ef29c	af8cdb44-5c50-471c-9aa2-cb0edb991947
3123d81c-a940-4075-95a9-f6a189f33c84	9eb749c7-e1ae-4b1a-a223-2e655b908917
3123d81c-a940-4075-95a9-f6a189f33c84	9abad173-cf92-4f9f-98e4-13af0b00becb
280e23d3-4e22-4660-b570-eacd453abd41	d444d507-7f14-47ce-a71d-3c3e94339464
cc12a34b-1424-4053-b174-d35c77d5dc53	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
6b73dbb4-5ed7-4543-b5a1-3671a4ce0532	8ff548f3-8f25-4236-a5a6-84e051aa44ea
dc135147-6ae0-4375-8b44-9725bd2929c8	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
dc135147-6ae0-4375-8b44-9725bd2929c8	5b199f71-ed8e-4075-acaf-15e8ce051da5
95742118-6c00-40ef-9e42-6ee7e7d8a92c	587a225b-2c74-422d-a29d-98d4c7d9128b
95742118-6c00-40ef-9e42-6ee7e7d8a92c	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
95742118-6c00-40ef-9e42-6ee7e7d8a92c	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
92fdd14f-3550-46f5-a4fe-8a58be09fdc7	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
999dcdae-a5ba-4128-861f-dc8768de966e	5b199f71-ed8e-4075-acaf-15e8ce051da5
8db220c2-105b-42f4-bb63-45b6c872fe7c	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
78c93e14-4d3e-4fd6-a37f-5306ebc89701	9eb749c7-e1ae-4b1a-a223-2e655b908917
78c93e14-4d3e-4fd6-a37f-5306ebc89701	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
ab7cede6-58b3-4dab-92f4-725a9fb3cd50	9abad173-cf92-4f9f-98e4-13af0b00becb
ab7cede6-58b3-4dab-92f4-725a9fb3cd50	d444d507-7f14-47ce-a71d-3c3e94339464
9ff606b0-8939-4187-8d1e-44f88d362895	5b199f71-ed8e-4075-acaf-15e8ce051da5
dca5457b-45f2-4a24-a67b-17298930a40f	af8cdb44-5c50-471c-9aa2-cb0edb991947
9b309d92-11b3-48c4-a349-2054eb0cd674	9abad173-cf92-4f9f-98e4-13af0b00becb
9b309d92-11b3-48c4-a349-2054eb0cd674	d444d507-7f14-47ce-a71d-3c3e94339464
9132f982-8774-40e9-b59d-0d4e2cb8e8fd	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
9132f982-8774-40e9-b59d-0d4e2cb8e8fd	78eaf296-9b0b-4d53-ad77-64f77e4597c3
a31d3d93-4761-4ff6-b3ef-0d9539682ae7	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
a31d3d93-4761-4ff6-b3ef-0d9539682ae7	9abad173-cf92-4f9f-98e4-13af0b00becb
a31d3d93-4761-4ff6-b3ef-0d9539682ae7	d444d507-7f14-47ce-a71d-3c3e94339464
d23522c3-a7f3-45a0-acb4-9fb412ed9d6c	78eaf296-9b0b-4d53-ad77-64f77e4597c3
ee4bc4ab-2731-465d-a89e-5c85ef2f6eed	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
ee4bc4ab-2731-465d-a89e-5c85ef2f6eed	78eaf296-9b0b-4d53-ad77-64f77e4597c3
ee4bc4ab-2731-465d-a89e-5c85ef2f6eed	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
6dd2ed90-1b81-4aff-b92e-439bcccb1efd	014340db-4e43-4bd9-bd5c-9b5e049ec378
b9e0ce79-964b-4d65-82bd-a0acfc4fa203	9eb749c7-e1ae-4b1a-a223-2e655b908917
b9e0ce79-964b-4d65-82bd-a0acfc4fa203	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
b9e0ce79-964b-4d65-82bd-a0acfc4fa203	5b199f71-ed8e-4075-acaf-15e8ce051da5
9bf3da6e-21c5-46f3-8e4f-8b318ba8352d	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
db433235-1946-4a32-bc4b-d955c6cf33fb	8ff548f3-8f25-4236-a5a6-84e051aa44ea
dd422538-15f0-4e14-870e-41477166a472	e9ffc682-2ae4-48f8-95e1-1b754ec9c5ab
a5ffeef8-e9f2-42ff-a522-44a302886971	ec6c4c38-a509-448b-80ca-ca6dd2bc1dca
dc5d070f-a8b9-4322-a1a6-dedc4653df86	e9ffc682-2ae4-48f8-95e1-1b754ec9c5ab
cd912120-4d08-4047-81de-73734983916e	ec6c4c38-a509-448b-80ca-ca6dd2bc1dca
820d4841-8ff6-4f38-b3af-60919e25f314	ec6c4c38-a509-448b-80ca-ca6dd2bc1dca
24777278-dbf8-4e18-adc3-140b43e25adf	339bcec8-031f-4f70-b727-42266ce6c649
fced283a-24f1-4469-abf7-2392b93d75a8	6ef7acd2-4774-4768-86ee-256b7552bfb4
ecd21a77-c188-41cf-89c7-c6c7c884b063	783487b0-7e5d-4d5f-851f-40bee7a5bc5b
8267527e-43c3-4412-8e0c-eaf1021753dd	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
8267527e-43c3-4412-8e0c-eaf1021753dd	e9ffc682-2ae4-48f8-95e1-1b754ec9c5ab
8267527e-43c3-4412-8e0c-eaf1021753dd	7681421c-91d0-4f96-b4ef-cf97759b1505
20777a91-4c10-429f-8ce7-9d6226796235	75df7824-a99c-4f22-860b-3484709cb7ec
5df0848d-928e-4220-a6b9-774a392be550	77b6bf97-1392-4be6-a724-fc57df5756c5
7ced1ff9-3c7b-4c1a-b06c-ae604866a7de	ffbd34d6-f4ae-454c-aff0-a508598b4189
e64a2054-b2b2-46d1-9ece-21e9e997a012	7977fbe1-8ab0-44bb-b35f-023d8c4ef5cc
3903f928-cc2f-40cf-b617-2a39a3c88d26	e4fbb4b1-94ac-4d73-9921-2cac46236090
ee099f42-cc1d-4856-bd42-8331a96fb787	5b199f71-ed8e-4075-acaf-15e8ce051da5
35403b6a-0e0b-43a2-a6b5-359dc1339a01	507ff961-262e-4f4b-b143-2a270b121be9
1317af0d-2b7b-488a-987e-b47a54d36790	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
e79bd980-82a4-4e5d-adc5-df1bda15e363	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
51167122-eea7-4135-8559-d26846baf150	a5944ff2-6513-432e-b2f1-c9502d5ef4cf
46f2068a-c3cd-4f8f-a306-95a75066c470	507ff961-262e-4f4b-b143-2a270b121be9
08af4fea-6a07-4e70-ad88-ddb3624842e3	2c420f36-0f0a-4949-8cdb-e52ef460c039
a1dd00ca-60f9-4aaa-a132-b4c107f49ed7	8ff548f3-8f25-4236-a5a6-84e051aa44ea
7ad10b07-81a0-4b51-8f93-4f77cccfa82a	3b5144d4-850f-4a49-afa3-3ba18a9248a3
034c4407-6f53-41f0-888d-044f877e71f1	75df7824-a99c-4f22-860b-3484709cb7ec
29a23830-959d-4a02-ae4a-2fe4d471f9b3	e4fbb4b1-94ac-4d73-9921-2cac46236090
8fef3d20-75d7-4aa1-9067-c4c675771f96	9e690ec4-c4aa-41a9-b708-12aa782e4da2
8fef3d20-75d7-4aa1-9067-c4c675771f96	105dfc42-7606-401a-b47d-c43c9a3cda3a
cab33795-bb2d-4b39-9462-e7487f59bd4b	5bfcec5b-6783-4b9a-98db-a0bfc8449ab6
cab33795-bb2d-4b39-9462-e7487f59bd4b	3c11bb83-f7da-4bbd-a4c3-b8dbf73a0731
fdd393d8-21fa-4ef6-9785-31197ea4526a	8ff548f3-8f25-4236-a5a6-84e051aa44ea
4bbdc509-9e1b-4d5b-9921-4f386e9ad3ca	8ff548f3-8f25-4236-a5a6-84e051aa44ea
aa75af7f-6204-4afb-9fa7-bb6898ec7273	8ff548f3-8f25-4236-a5a6-84e051aa44ea
852e526a-c147-45be-84cd-2bb49a6c26c8	8ff548f3-8f25-4236-a5a6-84e051aa44ea
8e2e24f9-cf07-4b17-80ae-275ff21467ca	8ff548f3-8f25-4236-a5a6-84e051aa44ea
08120524-fc6a-422e-af93-bfeb44a55bdd	8ff548f3-8f25-4236-a5a6-84e051aa44ea
aa10aff7-f499-4f72-8f0a-b62eb1d345fc	8ff548f3-8f25-4236-a5a6-84e051aa44ea
6f8f7019-5b77-48ee-84a4-6afd9ceca82c	8ff548f3-8f25-4236-a5a6-84e051aa44ea
8072df49-a378-496a-85be-8a25fbbc605a	8ff548f3-8f25-4236-a5a6-84e051aa44ea
503cf07b-2fe8-41e0-9452-5b7369f872e7	8ff548f3-8f25-4236-a5a6-84e051aa44ea
7839ff28-ba17-4c96-ab6a-5f03bd913905	8ff548f3-8f25-4236-a5a6-84e051aa44ea
c852db80-7589-456e-9886-7eb81ccfd8ce	8ff548f3-8f25-4236-a5a6-84e051aa44ea
101ca9a4-4be5-402b-af04-b7cf5f11288a	8ff548f3-8f25-4236-a5a6-84e051aa44ea
eca39458-2d34-49f3-a4a9-0d43266e2c7e	8ff548f3-8f25-4236-a5a6-84e051aa44ea
f97c018c-849d-4c7b-8804-21b193a36de5	8ff548f3-8f25-4236-a5a6-84e051aa44ea
2e2983e9-ad49-4ba1-8354-5f52dd3bec2e	8ff548f3-8f25-4236-a5a6-84e051aa44ea
435c7d99-9b37-4e1d-b82a-964e3f2e1a10	8ff548f3-8f25-4236-a5a6-84e051aa44ea
ed76f87a-5b3e-4620-898d-9b5dc73f0749	8ff548f3-8f25-4236-a5a6-84e051aa44ea
aab11d35-80fb-4a95-909e-bb07876dc6e2	8ff548f3-8f25-4236-a5a6-84e051aa44ea
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("id", "type", "format", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."iceberg_namespaces" ("id", "bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."iceberg_tables" ("id", "namespace_id", "bucket_id", "name", "location", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

COPY "supabase_functions"."hooks" ("id", "hook_table_id", "hook_name", "created_at", "request_id") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 23, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
