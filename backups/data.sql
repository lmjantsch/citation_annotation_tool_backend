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
00000000-0000-0000-0000-000000000000	1c74e98e-963f-469a-bb47-4f2b9740ae9e	{"action":"login","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-17 03:13:20.076341+00	
00000000-0000-0000-0000-000000000000	59432fe1-666f-464f-b8ac-7d3bcf44262e	{"action":"logout","actor_id":"17a7019f-4eb1-40fb-8c66-e2953af5f4be","actor_username":"max@muster.mann","actor_via_sso":false,"log_type":"account"}	2025-10-17 04:11:20.501658+00	
00000000-0000-0000-0000-000000000000	a291af05-0f32-406d-bb99-c5fd57b666c0	{"action":"login","actor_id":"23a359b5-a3c7-4b99-8088-2e23f679df7f","actor_username":"admin@muster.mann","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-10-17 04:11:38.997664+00	
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
00000000-0000-0000-0000-000000000000	17a7019f-4eb1-40fb-8c66-e2953af5f4be	authenticated	authenticated	max@muster.mann	$2a$10$KutE5RioJKMFLsxEDHQ2OuGm6eZQUh2YQHHtHY7MDBn9V4TSbQ/Xq	2025-10-13 08:51:58.325301+00	\N		\N		\N			\N	2025-10-17 03:13:20.079001+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-10-13 08:51:58.316123+00	2025-10-17 03:13:20.085413+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	23a359b5-a3c7-4b99-8088-2e23f679df7f	authenticated	authenticated	admin@muster.mann	$2a$10$P3ryiCrBBcL/hw0T1VDyBurXZNnxH.faxch0G5db3mJZk/.rQE2p2	2025-10-14 01:22:40.136546+00	\N		\N		\N			\N	2025-10-17 04:11:38.998702+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-10-14 01:22:40.133121+00	2025-10-17 04:11:39.002171+00	\N	\N			\N		0	\N		\N	f	\N	f
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
24895c6d-eb6e-42d5-9b4b-675ef74ac974	23a359b5-a3c7-4b99-8088-2e23f679df7f	2025-10-17 04:11:38.998784+00	2025-10-17 04:11:38.998784+00	\N	aal1	\N	\N	node	172.18.0.1	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
fb637b65-4371-4254-8f8e-61f7041d0348	2025-10-15 04:53:54.016077+00	2025-10-15 04:53:54.016077+00	password	c2e57fde-e26d-4bb0-868d-559f28231294
24895c6d-eb6e-42d5-9b4b-675ef74ac974	2025-10-17 04:11:39.002405+00	2025-10-17 04:11:39.002405+00	password	bd6a88c4-90fb-4f4e-ac51-7fbab450df0f
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
00000000-0000-0000-0000-000000000000	25	rzxucnmkjznr	23a359b5-a3c7-4b99-8088-2e23f679df7f	f	2025-10-17 04:11:38.999974+00	2025-10-17 04:11:38.999974+00	\N	24895c6d-eb6e-42d5-9b4b-675ef74ac974
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
7760cb46-3360-4a8f-8154-2bf7fb5f277a	2025-10-17 04:03:24.723676+00	Attention is all you need	Ashish Vaswani ,Noam Shazeer ,Niki Parmar ,Jakob Uszkoreit ,Llion Jones ,Aidan Gomez ,Lukasz Kaiser ,Illia Polosukhin	2017	\N
2135d4e2-3025-4398-9dab-b441f531d434	2025-10-17 04:03:24.723676+00	Sciriff: A resource to enhance language model instruction-following over scientific literature	David Wadden ,Kejian Shi ,Jacob Daniel Morrison ,Aakanksha Naik ,Shruti Singh ,Nitzan Barzilay ,Kyle Lo ,Tom Hope ,Luca Soldaini ,Shannon Shen ,Doug Downey ,Hanna Hajishirzi ,Arman Cohan	2024	\N
7698c6c7-bba3-4582-aea1-ef09f4c10b0f	2025-10-17 04:03:24.723676+00	HuggingFace's Transformers: Stateof-the-art Natural Language Processing	Thomas Wolf ,Lysandre Debut ,Victor Sanh ,Julien Chaumond ,Clement Delangue ,Anthony Moi ,Pierric Cistac ,Tim Rault ,Rémi Louf ,Morgan Funtowicz	2020	\N
0e8415d7-9011-4f8e-81e2-da493914e5d4	2025-10-17 04:03:24.723676+00	unknown	unknown	unknown	unknown
91cbfc69-b10e-4658-b9ee-34f50bd25ec4	2025-10-17 04:03:24.723676+00	FINECITE: A Novel Approach For Fine-Grained Citation Context Analysis	Lasse Jantsch ,Dong-Jae Koh ,Seonghwan Yoon ,Jisu Lee ,Anne Lauscher ,Young-Kyoon Suh	2025	Citation context analysis (CCA) is a field of research studying the role and purpose of citation in scientific discourse. While most of the efforts in CCA have been focused on elaborate characterization schemata to assign function or intent labels to individual citations, the citation context as the basis for such a classification has received rather limited attention. This relative neglect, however, has led to the prevalence of vague definitions and restrictive assumptions, limiting the citation context in its expressiveness. It is a common practice, for example, to restrict the context to the citing sentence. While this simple context conceptualization might be sufficient to assign intent or function classes, it fails to cover the rich information of scientific discourse. To address this concern, we analyze the context conceptualizations of previous works and, to our knowledge, construct the first comprehensive context definition based on the semantic properties of the citing text. To evaluate this definition, we construct and publish the FINECITE corpus containing 1,056 manually annotated citation contexts. Our experiments on established CCA benchmarks demonstrate the effectiveness of our fine-grained context definition, showing improvements of up to 25% compared to state-of-the-art approaches. We make our code and data publicly available.
c252679e-cdff-419c-9578-13a2dba00909	2025-10-17 04:03:24.723676+00	Purpose and polarity of citation: Towards NLPbased bibliometrics	Amjad Abu-Jbara ,Jefferson Ezra ,Dragomir Radev	2013	\N
24e68956-ef06-43d6-8da4-3d6b1d7e8155	2025-10-17 04:03:24.723676+00	Reference scope identification in citing sentences	Amjad Abu ,-Jbara unk ,Dragomir Radev	2012	\N
920c9fe0-ebcf-49c4-bfbd-916b3aafec77	2025-10-17 04:03:24.723676+00	Shyamal Anadkat, et al. 2023. GPT-4 Technical Report	Josh Achiam ,Steven Adler ,Sandhini Agarwal ,Lama Ahmad ,Ilge Akkaya ,Florencia Leoni Aleman ,Diogo Almeida ,Janko Altenschmidt ,Sam Altman	unknown	\N
66eef4d7-80cd-4f27-804b-cf3d736180eb	2025-10-17 04:03:24.723676+00	Detection of implicit citations for sentiment detection	Awais Athar ,Simone Teufel	2012	\N
2d0af395-3a1e-4c08-afd7-3c66e4f51fec	2025-10-17 04:03:24.723676+00	SciB-ERT: A pretrained language model for scientific text	Iz Beltagy ,Kyle Lo ,Arman Cohan	2019	\N
1ec17f75-d89b-4b80-a854-6f4a19424975	2025-10-17 04:03:24.723676+00	Language Models are Few-Shot Learners	Tom Brown ,Benjamin Mann ,Nick Ryder ,Melanie Subbiah ,Jared Kaplan ,Prafulla Dhariwal ,Arvind Neelakantan ,Pranav Shyam ,Girish Sastry ,Amanda Askell	2020	\N
0b2d69d8-0d7a-4953-98f8-278a4196cfc2	2025-10-17 04:03:24.723676+00	Structural scaffolds for citation intent classification in scientific publications	Arman Cohan ,Waleed Ammar ,Madeleine Van Zuylen ,Field Cady	2019	\N
05fd88d1-70bf-47a6-bbba-ceff9036313c	2025-10-17 04:03:24.723676+00	A coefficient of agreement for nominal scales	Jacob Cohen	1960	\N
8badeac0-28a1-420f-bb86-9e0fdd03e93a	2025-10-17 04:03:24.723676+00	A dataset of information-seeking questions and answers anchored in research papers	Pradeep Dasigi ,Kyle Lo ,Iz Beltagy ,Arman Cohan ,Noah Smith ,Matt Gardner	2021	\N
1cb309e3-8ff9-4e78-976a-b4d870d88890	2025-10-17 04:03:24.723676+00	From local to global: A graph rag approach to query-focused summarization	Darren Edge ,Ha Trinh ,Newman Cheng ,Joshua Bradley ,Alex Chao ,Apurva Mody ,Steven Truitt ,Jonathan Larson	2024	\N
3bebfbe2-3dd8-4ecc-85f5-ae2603c631b5	2025-10-17 04:03:24.723676+00	Structured Semantic Modeling of Scientific Citation Intents	Roger Ferrod ,Luigi Caro ,Claudio Schifanella	2021	\N
ba997670-a1b6-4eba-970d-17964ac1cc76	2025-10-17 04:03:24.723676+00	Citation analysis as a tool in journal evaluation	Eugene Garfield	1972	\N
5fb35a16-511b-45ae-a9fc-a7934aa8fc52	2025-10-17 04:03:24.723676+00	GROBID: A Machine Learning Software for Extracting Information from Scholarly Documents	unknown	unknown	\N
5d281ffd-f527-49ea-aac4-8efba88783ca	2025-10-17 04:03:24.723676+00	Long short-term memory	Sepp Hochreiter ,Jürgen Schmidhuber	1997	\N
2e79bdde-12ba-4b54-ae3c-307da2998a74	2025-10-17 04:03:24.723676+00	Technical brief: Agreement, the f-measure, and reliability in information retrieval	George Hripcsak ,Adam Rothschild	2005	\N
df4f2161-6bd1-4969-953f-3fdd9fdd5f6d	2025-10-17 04:03:24.723676+00	Measuring the evolution of a scientific field through citation frames	David Jurgens ,Srijan Kumar ,Raine Hoover ,Dan Mc-Farland ,Dan Jurafsky	2018	\N
6fe146aa-3d42-4a3c-85ab-171f00223a59	2025-10-17 04:03:24.723676+00	A meta-analysis of semantic classification of citations	N Suchetha ,Drahomira Kunnath ,David Herrmannova ,Petr Pride ,unk Knoth	2022	\N
7083a696-601b-4b14-8e35-f18266df93f8	2025-10-17 04:03:24.723676+00	Conditional random fields: Probabilistic models for segmenting and labeling sequence data	John Lafferty ,Andrew Mccallum ,Fernando Pereira	2001	\N
5733ffd8-23ce-4b1c-bc40-9868138fdb4f	2025-10-17 04:03:24.723676+00	An argument-annotated corpus of scientific publications	Anne Lauscher ,Goran Glavaš ,Simone Paolo ,Ponzetto unk	2018	\N
df6f7a11-999b-4fb1-821e-27c40fc3402f	2025-10-17 04:03:24.723676+00	Investigating convolutional networks and domain-specific embeddings for semantic classification of citations	Anne Lauscher ,Goran Glavaš ,Simone Paolo Ponzetto ,Kai Eckert	2017	\N
85099669-b144-4b5b-84cc-5008f32a944d	2025-10-17 04:03:24.723676+00	MultiCite: Modeling realistic citations requires moving beyond the single-sentence singlelabel setting	Anne Lauscher ,Brandon Ko ,Bailey Kuehl ,Sophie Johnson ,Arman Cohan ,David Jurgens ,Kyle Lo	2022	\N
829e7ee8-64a6-4090-a26e-27503dd6c31b	2025-10-17 04:03:24.723676+00	Retrieval-augmented generation for knowledgeintensive nlp tasks	Patrick Lewis ,Ethan Perez ,Aleksandara Piktus ,Fabio Petroni ,Vladimir Karpukhin ,Naman Goyal ,Heinrich Kuttler ,Mike Lewis ,Wen Tau Yih ,Tim Rocktäschel ,Sebastian Riedel ,Douwe Kiela	2020	\N
c3e2f24f-5ae9-428f-9271-e9a371f62e64	2025-10-17 04:03:24.723676+00	Decoupled weight decay regularization	Ilya Loshchilov ,Frank Hutter	2019	\N
6078b64b-e55b-4181-997d-dff78d5e3b8f	2025-10-17 04:03:24.723676+00	SciBERT sentence representation for citation context classification	Himanshu Maheshwari ,Bhavyajeet Singh ,Vasudeva Varma	2021	\N
faf9d30c-7c49-4265-8fb3-9cfca2a38ae1	2025-10-17 04:03:24.723676+00	Overview of the 2021 SDP 3C citation context classification shared task	N Suchetha ,David Kunnath ,Drahomira Pride ,Petr Herrmannova ,unk Knoth	2021	\N
e4989ef1-a613-423e-a4e9-e72b562a0519	2025-10-17 04:03:24.723676+00	Dynamic context extraction for citation classification	Nambanoor Suchetha ,David Kunnath ,Petr Pride ,unk Knoth	2022	\N
f91de3c0-ec90-4416-a246-bfcb474d5620	2025-10-17 04:03:24.723676+00	An authoritative approach to citation classification	David Pride ,Petr Knoth	2020	\N
bcc2018e-3b71-4e43-8b98-8ed4caea32c1	2025-10-17 04:03:24.723676+00	The ACL Anthology network corpus	R Dragomir ,Pradeep Radev ,Vahed Muthukrishnan ,unk Qazvinian	2009	\N
4e1170fa-10aa-4dad-9cd9-7be95e004d5b	2025-10-17 04:03:24.723676+00	Fine-tuning language models on multiple datasets for citation intention classification	Zeren Shui ,Petros Karypis ,Daniel Karls ,Mingjian Wen ,Saurav Manchanda ,B Ellad ,George Tadmor ,unk Karypis	2024	\N
56dc0ecb-c118-412f-b60f-918931782675	2025-10-17 04:03:24.723676+00	unknown	John Swales	1986	\N
5e413814-91a1-4421-8dfd-2e21bab242b4	2025-10-17 04:03:24.723676+00	Scientific argumentation detection as limited-domain intention recognition	Simone Teufel	2014	\N
7741bdff-f873-4b97-ae8d-be3b455f50f9	2025-10-17 04:03:24.723676+00	Automatic classification of citation function	Simone Teufel ,Advaith Siddharthan ,Dan Tidhar	2006	\N
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sections" ("id", "created_at", "section_title", "document_id") FROM stdin;
e2dba5c0-c211-403f-ab9c-356ad0214128	2025-10-17 04:03:38.409329+00	Introduction	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
5e6e11bf-46ff-466d-8930-93935e78e5b2	2025-10-17 04:03:38.409329+00	Related Work	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
ece312b2-cdb5-4aa7-aa26-ef637dce1352	2025-10-17 04:03:38.409329+00	Fine-Grained Citation Context	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
128f9241-3aca-4267-a96a-7fd3f1bcd322	2025-10-17 04:03:38.409329+00	Dataset Construction	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
1027d4e7-98b4-4ced-b70e-d16d88a83b3e	2025-10-17 04:03:38.409329+00	Citation Context Extraction	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
461213f5-c23f-478e-bcb8-300dfd519278	2025-10-17 04:03:38.409329+00	Citation Context Classification	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
7224334f-82dd-4487-adcb-32187534e441	2025-10-17 04:03:38.409329+00	Classification model.	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
9b59bdc5-5a07-49b4-8402-0743224a558d	2025-10-17 04:03:38.409329+00	Conclusion	91cbfc69-b10e-4658-b9ee-34f50bd25ec4
\.


--
-- Data for Name: paragraphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."paragraphs" ("id", "created_at", "section_id", "text") FROM stdin;
b2f4fa91-969a-43c5-aaf9-16ac49336bd0	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	Scientific;research;is;inherently;collaborative,;with;each;discovery;building;upon;a;foundation;of;prior;studies.;To;acknowledge;previous;work;and;provide;credit,;it;is;standard;practice;to;include;citations;that;connect;past;findings;to;new;contributions.;By;embedding;scientific;progress;and;argumentation,;citations;serve;a;critical;function;that;has;been;extensively;examined-a;research;field;known;as;citation;context;analysis;(CCA);<ref type="group">(Kunnath et al., 2022; Swales, 1986)</ref>;.;In;computational;linguistics,;CCA;is;mainly;concerned;with;the;automatic;classification;of;citations;along;various;dimensions,;such;as;citation;function;<ref type="group">(Lauscher et al., 2022; Cohan et al., 2019; Jurgens et al., 2018; Teufel et al., 2006)</ref>;,;sentiment;<ref type="group">(Lauscher et al., 2017; Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;,;or;influence;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019)</ref>;.;Given;a;passage;of;text;surrounding;a;citation;marker-referred;to;as;the;citation;context-one;or;more;classes;from;a;predefined;citation;classification;scheme;are;assigned.
5599841d-2096-44f5-9e2e-e9db67157655	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	Although;a;considerable;amount;of;research;has;explored;different;classification;schemes;and;methods,;the;citation;context;has;received;relatively;little;attention.;This;lack;of;focus;has;led;to;an;absence;of;a;comprehensive;definition;and;datasets;with;overly;simplistic;and;coarse-grained;citation;contexts;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019)</ref>;.
994f2407-00d7-40bc-9fd6-df821a21e3c7	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	To;address;this;concern,;we;analyze;different;context;conceptualizations;in;previous;work;and;provide;a;new;comprehensive;definition;based;on;the;semantic;information;of;the;citing;text.;A;visual;comparison;is;provided;in;Figure;1.
32a73f7b-1e62-4cb1-a6e1-4132a44b5582	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	With;our;research;and;artifacts,;we;hope;to;spark;new;interest;in;the;exploration;of;citation;context;information.;Given;the;drastic;capabilities;of;LLMs;in;zero-shot;text;understanding;<ref type="group">(Brown et al., 2020; Lewis et al., 2020; Vaswani et al., 2017)</ref>;,;and;the;emergence;of;advanced;language;processing;systems;<ref type="group">(Lewis et al., 2020; Edge et al., 2024)</ref>;,;we;argue;that;an;improved;understanding;of;contextual;citation;information;is;essential;for;improving;interactive;exploration;of;scientific;argumentation.
cfda1d2b-9648-4a94-9e38-ac2579141fb5	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	Our;contributions;are;the;following:
180ee4ea-21ef-49ab-a4ca-f23a0f4f26fd	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	•;We;analyze;and;formalize;citation;context;conceptualizations;in;previous;work.
c4b355e3-a34b-4715-a052-c21e6b3df0b8	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	•;We;propose,;to;our;knowledge,;the;first;finegrained;citation;context;definition;based;on;the;semantic;structure;of;the;citing;text.
787d4ddc-6bab-4af9-8cb0-d9a23fc739fe	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	•;We;construct;and;publish;the;FINECITE;corpus;comprising;1,056;manually;annotated;fine-grained;citation;contexts.
85d1191b-a496-4320-bd68-4f74fadcf270	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	•;We;evaluate;our;context;definition;in;two;experiments;and;demonstrate;its;effectiveness;on;established;benchmarks.
fb9620d7-8b47-495b-b84d-11b9e6ba786f	2025-10-17 04:03:49.750472+00	e2dba5c0-c211-403f-ab9c-356ad0214128	The;rest;of;the;paper;is;organized;as;follows.;The;subsequent;section;reviews;relevant;literature;in;the;field;of;CCA;and;provides;a;formalization;of;task;and;context;conceptualization.;Section;3;introduces;our;citation;context;definition.;In;Section;4,;we;describe;the;curation;process;of;the;FINECITE;corpus;and;provide;core;statistics.;In;Section;5,;we;assess;the;effectiveness;of;our;context;definition;in;both;context;extraction;and;citation;classification.;Section;6;summarizes;our;contributions;and;outlines;directions;for;future;research.
43e79da4-51dc-4a80-a120-f9513aec5169	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	CCA;is;the;subject;of;a;substantial;body;of;research;with;<ref type="single">(Garfield, 1972)</ref>;often;mentioned;as;one;of;the;pioneering;works.;Reaching;back;to;<ref type="single">(Teufel et al., 2006)</ref>;,;CCA;research;in;computational;linguistics;is;commonly;conceptualized;as;learning;a;function;F;C;representing;the;relationship;of;a;citation;context;spanning;s;∈;S;to;a;set;of;classes;c;∈;C.;The;task;can;thus;be;formalized;as;F;C;(s);=;arg;max;c∈C;P;F;C;(c;|;s),;where;P;F;C;are;the;class;probabilities;emitted;by;F;C;.;The;classes;C;can;represent;various;citation;attributes,;such;as;function;<ref type="group">(Lauscher et al., 2022; Jurgens et al., 2018; Teufel et al., 2006)</ref>;,;purpose;<ref type="group">(Pride and Knoth, 2020; Abu-Jbara et al., 2013)</ref>;,;sentiment;<ref type="single">(Athar and Teufel, 2012)</ref>;,;or;intent;<ref type="single">(Cohan et al., 2019)</ref>;.;For;a;comprehensive;survey;on;CCA,;refer;to;<ref type="single">(Kunnath et al., 2022)</ref>;.
71428cef-4e9d-4df9-91f4-1ba3018369fd	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	Despite;the;continued;research;in;CCA,;the;introduction;of;new;and;larger;datasets;<ref type="group">(Cohan et al., 2019; Jurgens et al., 2018)</ref>;,;and;updated;methodology;<ref type="group">(Shui et al., 2024; Lauscher et al., 2022; Cohan et al., 2019)</ref>;,;the;simple;modeling;paradigm;as;described;in;Equation;1;prevailed.;The;popular;SCICITE;benchmark;<ref type="single">(Cohan et al., 2019)</ref>;even;further;simplifies;the;task;by;reducing;the;commonly;used;six-class;framework;of;<ref type="single">(Jurgens et al., 2018)</ref>;to;a;three-class;schema.;This;simplicity;leads;to;a;low;task;complexity,;however,;it;often;fails;to;adequately;represent;the;rich;information;present;in;the;scientific;texts;<ref type="single">(Lauscher et al., 2022)</ref>;.;To;capture;a;wider;range;of;information,;it;is;necessary;to;move;beyond;prevalent;context;span;constraints;and;conceptualization;on;mutually;exclusive;classes.;Table;1;compares;the;relevant;research.
5b54a3ad-5e9d-4844-adb6-ef09d2617228	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	Context;Span;Constraints.;The;optimal;context;spans;S;*;can;be;defined;such;that;S;*;=;arg;max;s;i;∈S;i;P;F;(c;i;|;s;i;);|;i;∈;I;(2);where;S;i;is;the;set;of;all;possible;context;spans;for;one;citation;instance;i;∈;I,;and;P;F;is;the;probabilities;assigned;by;a;function;F;representing;some;relationship;between;S;and;C.
adf695c0-fc78-413a-96c0-41fc77578698	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	Formal;Definition.;To;formalize;our;finegrained;citation;context,;we;expand;upon;Equation;2;by;removing;the;task;dependency;and;incorporating;semantic;dimensions;outlined;above.;Specifically,;we;define;the;task-independent,;approximately;optimal;citation;context;Ŝ;*;as:;Ŝ;*;:=;{s;*;i;|;i;∈;I};,;where;s;*;i;=;{s;i;∈;S;i;|;∃d;∈;D;:;F;D;(s;i;);=;d};,
1e5117f2-51c6-4652-b6d3-52c8e65c14f7	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	is;the;set;of;semantic;dimensions;defined;in;this;Section,;and;F;D;represents;the;semantic;relationship;of;the;surrounding;text;to;the;citation.;We;further;formalize;three;structural;properties;of;citation;context;spans;ŝ;*;∈;Ŝ;*;:
6f91c1fc-edea-4d08-a8a4-66589f4a758b	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	•;Dynamicity:;The;length;|;ŝ;*;|;is;dynamic;and;adapts;to;the;situated;structure;of;the;enclosing;argumentation.
35978bce-53d5-48d0-a2b5-55f4ab99d3da	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	•;Non-Contiguity:;ŝ;*;may;consist;of;multiple;disjoint;spans;allowing;for;skip-structured;selection;of;relevant;information.
73de5ead-4262-4e5c-8a74-00a87687342c	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	•;Sub-Sentence;Granularity:;ŝ;*;is;constructed;on;sub-sentence;granularity,;enabling;a;finegrained;representation;of;the;argumentative;structure.
68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	As;it;is;infeasible;to;solve;Equation;2,;previous;work;uses;various;assumptions;to;extract;an;approximate;optimal;context;Ŝ;*;.;The;first;common;assumption;is;that;S;*;can;be;approximated;by;a;fixed-sized;window;surrounding;the;citation;marker.;The;size;of;the;context;window;varies;between;one;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019)</ref>;,;or;multiple;sentences;<ref type="group">(Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;,;a;specific;number;of;characters;<ref type="single">(Jurgens et al., 2018)</ref>;,;or;the;whole;paragraph;<ref type="single">(Teufel et al., 2006)</ref>;.;Some;approaches;<ref type="group">(Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;allow;for;a;non-context;classification;of;context-window;subsets,;introducing;a;simple;form;of;dynamic;context;spans.;Only;recent;publications;stress;the;importance;of;a;fully;dynamic;approximation;of;S;*;<ref type="group">(Lauscher et al., 2022; Nambanoor Kunnath et al., 2022)</ref>;to;conform;to;the;situated;structure;of;scientific;argumentation.;The;second;common;assumption;is;that;S;*;stretches;continuously;from;the;citation;marker.;Even;though;a;notable;number;of;publications;technically;allow;for;the;extraction;of;non-contiguous;contexts;<ref type="group">(Lauscher et al., 2022; Abu-Jbara et al., 2013; Athar and Teufel, 2012)</ref>;,;only;one;study;<ref type="single">(Nambanoor Kunnath et al., 2022)</ref>;particularly;investigated;the;phenomenon.;They;directly;compared;a;non-contiguous;context;window;with;a;smaller;contiguous;version;and;found;that;the;former;slightly;outperforms;the;latter.
ddf562d8-a5cc-4f3a-abfa-453dabf85acb	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	Thirdly,;S;*;is;often;conceptualized;with;the;sentence;assumed;to;be;the;atomic;unit;of;information;<ref type="group">(Cohan et al., 2019; Nambanoor Kunnath et al., 2022; Lauscher et al., 2022)</ref>;.;In;certain;cases,;however,;this;is;not;necessarily;the;case.;<ref type="single">Abu-Jbara and Radev (2012)</ref>;,;for;instance,;shows;evidently;that;sub-sentence;segmentation;is;necessary;to;approximate;S;*;for;sentences;with;multiple;citations.;While;their;focus;lies;on;the;multi-citation;setting,;we;also;observe;sub-sentence;context;granularity;in;other;settings.
9e26dad4-0180-4943-88cf-9a4ed123146c	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	Conceptual;Restraints.;Next;to;the;restrictive;assumptions;imposed;on;the;context;span,;there;are;conceptual;restraints;limiting;the;expressiveness;of;citation;contexts.;In;nearly;all;previous;work,;the;context;is;conceptualized;as;Ŝ;*;C;≈;arg;max;s;i;∈S;′;i;P;F;C;(c;i;|;s;i;);|;i;∈;I;,;where;S;′;i;=;{s;i;∈;S;i;|;∃c;∈;C;:;F;C;(s;i;);=;c};.;(4);This;formulation;captures;that;the;context;approximation;Ŝ;*;C;only;contains;spans;S;′;that;have;a;clear;association;with;a;class;in;C.;In;other;words,;the;citation;context;is;conceptualized;based;on;the;classification;schema;represented;through;F;C;and;not;based;on;the;semantic;information;of;the;text.
7e22da9c-215f-4ac0-a275-30b340a56d81	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	Most;previous;works;additionally;restrain;their;conceptualization;by;defining;the;relationship;between;S;and;C;as;mutually;exclusive;<ref type="group">(Pride and Knoth, 2020; Cohan et al., 2019; Jurgens et al., 2018)</ref>;.;This;restricts;the;citation;context;further,;as;scientific;discourse;is;faceted;and;can;have;multiple;explanations;<ref type="single">(Lauscher et al., 2022)</ref>;.;Lauscher;et;al.;addressed;this;by;creating;the;MULTICITE;dataset,;designed;for;multi-sentence,;multi-function;classification.;They;find;that;nearly;one;in;five;citations;have;at;least;two;classes,;with;some;reaching;up;to;four.;While;this;represents;a;step;forward,;it;does;not;resolve;the;underlying;limitation;of;defining;citation;context;solely;through;the;lens;of;the;classification;schema.
daf354aa-9307-42af-a880-d50263acbf9b	2025-10-17 04:03:49.750472+00	5e6e11bf-46ff-466d-8930-93935e78e5b2	The;only;previous;publication;that;defines;a;context;based;on;semantic;information;from;the;vicinity;of;the;citation;marker;is;from;<ref type="single">Ferrod et al. (2021)</ref>;.;They;distinguish;between;the;citation;object;and;the;context,;where;the;former;is;the;cited;concept;and;the;latter;background;information,;or;constraints;on;the;citation;object.;While;this;goes;in;a;similar;direction;to;this;work,;their;definition;lags;in;completeness;and;only;works;on;a;subset;of;instances.;To;our;knowledge,;we;are;the;first;to;propose;a;comprehensive;citation;context;definition;that;is;disjoint;from;the;classification;task.
e0a3255e-b828-4531-89c7-a4c5402150d3	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	In;this;section,;we;propose;and;formalize;our;fine-grained;context;definition.
544498d7-c04e-430f-bc43-804727d36e79	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	Semantic;Dimensions.;We;base;our;context;definition;on;previous;research;on;argumentative;structures;in;scientific;texts.;<ref type="single">Teufel (2014)</ref>;categorizes;scientific;argumentation;along;four;principal;dimensions:;(i);statements;about;the;author's;own;work;(citing;paper),;(ii);properties;of;existing;solutions;(cited;papers),;(iii);the;relationships;between;existing;solutions;and;the;author's;contribution,;and;(iv);general;properties;of;the;research;space.;We;apply;this;framework;to;the;field;of;CCA;and;define;the;following;three;context;dimensions.
8f2ae66c-50d1-43eb-a141-1a19cd767959	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	The;first;dimension;of;the;citation;context;is;the;information;the;citing;author;references;from;the;cited;paper.;In;the;example;"Our;paper;extends;the;citation;labeling;scheme;of;&lt,CITATION&gt,;and;then;reports;similarities...";the;phrase,;"the;citation;labeling;scheme;of;&lt,CITATION&gt,,";describes;here;what;information;from;the;cited;paper;the;author;is;referring;to.;This;dimension;highly;correlates;with;(ii)-the;properties;of;existing;solutions,;and;is;somewhat;related;to;the;citation;object;of;<ref type="single">Ferrod et al. (2021)</ref>;.;In;the;following,;we;refer;to;this;dimension;as;the;Information;Dimension;(INF).
b919b026-8bb8-471f-a35b-249b0641f4d8	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	The;second;dimension;describes;the;relationship;between;the;citing;and;the;cited;work;and;corresponds;to;(iii);in;<ref type="single">Teufel (2014)</ref>;.;In;the;excerpt;";::;Our;:::::;paper;:::::::;extends;the;citation;labeling;scheme;of;&lt,CITATION&gt,;and;then;reports;similarities...";the;passage;"our;paper;extends";describes;how;the;author;uses;the;cited;information;in;their;work.;While;use;constitutes;a;substantial;fraction;of;occurring;relations,;this;dimension;also;includes;other;forms;of;perception,;such;as;comparison,;evaluation,;and;judgment.;In;the;following,;we;refer;to;it;as;the;Perception;Dimension;(PERC).
e87ee6e8-f52e-448c-ae1b-756bf202aa6f	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	While;these;two;dimensions;cover;the;most;critical;aspects;of;a;citation;context,-what;is;cited;and;how;is;it;perceived;or;used-they;do;not;necessarily;include;the;information;of;why;the;author;chose;to;include;a;citation.
10485eb1-113b-436b-923c-9d592550d7fb	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	"Unlike;recent;language;representation;models;&lt,CITATION&gt,,;...;....;BERT;...;.;is;...;.....;....;designed;..;..;to;....;.....;..;pretrain;.;..;..;.;.;deep;.;.;.;.;.;.;.;.;.;.;.;.;.;.;.;bidirectional;..;.....;....;.....;..;representations;.;....;....;from..."
637793da-904e-40c3-b393-ccc49d8e8cc3	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	Here,;the;reason;the;author;included;this;citation;is;to;emphasize;a;novel;property;of;the;citing;paper's;contribution.;In;<ref type="single">Teufel's (2014)</ref>;framework,;this;falls;under;the;semantic;class;(i)-properties;of;the;citing;work-and;is;neither;considered;in;the;INF;nor;the;PERC;dimension.;In;other;instances,;such;a;motivating;factor;could;be;related;to;a;property;of;the;research;space;(iv);or;other;direct;citations;(ii,;iii).;We;categorize;these;passages,;which;explain;why;a;citation;was;included,;as;the;Background;Dimension;(BACK);of;a;citation.
940c8cd4-677a-45c7-9f99-bb4990e00d06	2025-10-17 04:03:49.750472+00	ece312b2-cdb5-4aa7-aa26-ef637dce1352	These;properties;collectively;define;a;flexible;and;semantically;motivated;citation;context;that;diverges;from;the;constrained;approximations;of;previous;works.;We;provide;a;detailed;empirical;discussion;of;their;relevance;in;Section;4.2;and;5.
b5c9d590-585e-45b9-ad22-bcfb933676c3	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	We;construct;the;corpus;in;the;following;steps.
51bd91a5-1979-49dd-b0fe-29c5c36a9946	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	Step;1:;Procurement.;The;FINECITE;dataset;was;built;from;a;subset;of;ACL;Anthology;Network;Corpus;<ref type="single">(Radev et al., 2009)</ref>;.;The;ACL;Anthology;Network;contains;over;80K;papers;from;several;ACL;conferences;and;other;venues;in;computational;linguistics.;We;extracted;the;full;paper;text,;including;citations,;using;GROBID;(GROBID,;2024).;Documents;containing;faulty;meta-information,;languages;other;than;English,;and;miscellaneous;documents;with;&lt,3;sections;and;&lt,5;references;were;excluded.
2896edca-416c-4324-a2d9-ca3684589771	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	From;the;remaining;documents,;we;sampled;1,056;paragraphs,;each;containing;one;citation;marker;highlighted;for;annotation.
ed4e8011-fc93-43b6-a54a-424bea641976	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	Step;2:;Guideline;creation.;The;annotation;guidelines;comprise;best;practices;and;rules;for;the;context;annotation.;The;instructions;were;created;based;on;the;definition;presented;in;Section;3;and;further;iteratively;refined;to;better;handle;ambiguous;cases.;For;each;iteration,;several;annotators;completed;five;to;ten;tasks;separately;and;subsequently;discussed;differences.;Afterwards,;the;guidelines;were;updated;to;reduce;ambiguity;for;the;next;iteration.;In;total,;five;iterations;were;performed.;The;complete;Annotation;Guidelines;can;be;found;in;Appendix;E.
0e0e1cdd-121d-44e8-a031-105d45f586e2	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	Step;3:;Annotation.;The;annotation;was;performed;for;each;paragraph;separately.;The;annotator;was;asked;to;read;the;paragraph;carefully;and;annotate;the;context;of;the;highlighted;citation;based;on;the;guidelines.;To;provide;further;information;in;case;of;ambiguity,;additional;information,;like;the;surrounding;paragraphs;and;metadata;about;citing;and;cited;papers,;was;provided;in;the;annotation;tool.;A;detailed;description;of;the;annotation;platform;is;provided;in;Appendix;A.
aff846c0-e84d-414a-a8ed-61f891fe0c5d	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	All;annotators;had;previous;experience;with;scientific;literature;and;were;carefully;trained;on;the;Annotation;Guidelines.;The;compensation;followed;locally;typical;rates;for;research;assistants.
0acfa1c2-441f-4019-86f5-01a92e54a2ba	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	Step;4:;Validation.;To;ensure;the;annotation;quality,;we;monitored;several;inter-annotator;agreement;(IAA);metrics;on;10%;of;the;annotations.;We;measured;both;F-measure;commonly;used;for;span;annotations;with;open;bounds;<ref type="single">(Hripcsak and Rothschild, 2005)</ref>;,;and;Cohens;κ;<ref type="single">(Cohen, 1960)</ref>;for;the;agreement;on;label;assignment;above;that;expected;by;chance.;To;capture;different;aspects;of;the;annotation;process;separately,;we;provide;IAA;for;the;whole;context;(F;1;total;),;and;for;each;scope;separately;(F;1;inf;,;F;1;perc;,;F;1;back;).;The;F;1;macro;is;the;mean;over;F;1;inf;,;F;1;perc;,;and;F;1;back;.;While;the;metrics;follow;the;standard;definition,;we;provide;a;formal;definition;in;Appendix;B.
66d753a3-6e5b-4ab6-9cc0-f30c1b7a6503	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	The;F;1;total;after;the;annotation;process;was;0.75,;indicating;an;overall;good;agreement.;The;separate;IAA;on;the;context;dimensions,;however,;is;considerably;lower.;While;the;F;1;inf;is;with;a;score;of;0.65;the;highest,;the;F;1;perc;is;at;0.42;and;the;F;1;back;at;0.34.;The;F;1;macro;lies;at;0.48;and;the;κ;on;the;validation;samples;was;0.55.
71c36b1e-9dad-437a-b747-4cd7ac80b020	2025-10-17 04:03:49.750472+00	128f9241-3aca-4267-a96a-7fd3f1bcd322	While;these;values;are;in;the;typical;range;for;annotation;of;scientific;literature;<ref type="group">(Lauscher et al., 2022; Ferrod et al., 2021; Lauscher et al., 2018)</ref>;,;they;highlight;the;task;complexity.;The;moderate;F;1;macro;,;despite;a;rather;high;F;1;total;,;indicates;that;while;annotators;often;struggle;to;clearly;distinguish;between;the;dimensions,;they;have;a;good;sense;of;what;constitutes;relevant;information.;PERC;and;BACK;seem;especially;ambiguous.
02464105-7424-432c-ae12-12cce2d77ac4	2025-10-17 04:03:49.750472+00	1027d4e7-98b4-4ced-b70e-d16d88a83b3e	Ensuring;that;common;extraction;models;can;reliably;learn;to;identify;citation;contexts;is;crucial;for;the;effective;application;of;the;presented;fine-grained;context;definition.
03f469bb-9b6d-44f7-b8c2-e474b81da815	2025-10-17 04:03:49.750472+00	1027d4e7-98b4-4ced-b70e-d16d88a83b3e	Data;preparation.;We;utilized;the;same;samples;used;in;the;evaluation;of;the;annotation;process;as;the;test;set,;with;the;remaining;samples;reserved;for;training;and;validation.;We;evaluate;extraction;on;(i);uniform;token;labels;and;(ii);commonly;used;IOB;(Inside-Outside-Beginning);labels.
9b3e5208-c0ab-432e-af38-cc4d3f5f2a56	2025-10-17 04:03:49.750472+00	1027d4e7-98b4-4ced-b70e-d16d88a83b3e	Extraction;model.;For;all;extraction;approaches,;we;use;a;SCIBERT;<ref type="single">(Beltagy et al., 2019)</ref>;encoder;model.;SCIBERT;is;a;BERT-like;encoder-only;transformer,;pre-trained;on;scientific;literature.;To;cover;several;common;sequence;extraction;approaches,;we;evaluate;three;different;classification;heads:;a;linear,;a;Bi-LSTM;<ref type="single">(Hochreiter and Schmidhuber, 1997)</ref>;,;and;a;conditional;random;field;(CRF);<ref type="single">(Lafferty et al., 2001)</ref>;classifier.
f238ab60-9d5f-4212-8b42-cfa96ba809ef	2025-10-17 04:03:49.750472+00	1027d4e7-98b4-4ced-b70e-d16d88a83b3e	Experiment;setup.;We;used;the;pre-trained;weights;of;SCIBERT;from;huggingface;transformers;<ref type="single">(Wolf et al., 2020)</ref>;and;finetuned;the;whole;model;(encoder;+;cls-head);using;AdamW;<ref type="single">(Loshchilov and Hutter, 2019)</ref>;linear;warm-up;ratio;of;5%;and;a;peak;learning;rate;of;5e-5.;All;models;were;fine-tuned;using;early;stopping;with;a;patience;of;three;epochs,;a;batch;size;of;4,;and;a;dropout;rate;of;0.1.;To;address;class;imbalance,;we;additionally;applied;weighted;cross-entropy;loss.;The;training;was;conducted;on;an;NVIDIA;A100;GPU.;We;evaluated;the;F1;scores;described;in;Section;4.1.
86426b5d-7e9e-4767-8838-5e78bc9e15f5	2025-10-17 04:03:49.750472+00	1027d4e7-98b4-4ced-b70e-d16d88a83b3e	Result.;Table;3;shows;the;results;of;F;1;total;and;F;1;macro;.;See;Appendix;D;for;extended;results.
b06a9497-df1e-4af2-904a-ca3d0119d112	2025-10-17 04:03:49.750472+00	1027d4e7-98b4-4ced-b70e-d16d88a83b3e	We;observe;that;all;three;extraction;approaches;reach;higher;F1;scores;than;those;measured;during;the;annotation;process.;The;variance;between;the;different;classifiers;is;rather;small.;The;CRF;classifier;exhibits;the;highest;F;1;total;score;of;0.787,;while;the;Bi-LSTM;classifier;dominates;the;F;1;macro;metric;with;0.56.;The;linear;classifier;achieves;an;F;1;macro;of;0.557;and;an;F;1;total;of;0.77,;only;slightly;lower;than;the;other;approaches.
f92d9685-5071-4a5e-89ae-3f22f6851caf	2025-10-17 04:03:49.750472+00	1027d4e7-98b4-4ced-b70e-d16d88a83b3e	The;best;results;were;achieved;using;IOB;labels;for;linear;and;Bi-LSTM;classifiers,;whereas;the;CRF;classifier;worked;better;with;uniform;labels.
86d07d06-af15-4f08-ab90-54159bf15b64	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	To;showcase;the;benefits;of;fine-grained;contexts;in;a;competitive;setting,;we;provide;a;broad;comparison;with;previous;work;using;the;citation;classification;task.
90a6e458-0aea-41b0-8393-f40bff8c0323	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	Data.;We;evaluate;fine-grained;contexts;on;four;commonly;used;CCA;benchmarks.
d383847f-370f-4f42-ac45-dd0dcaf2c09f	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	•;ACL-ARC;<ref type="single">(Jurgens et al., 2018)</ref>;comprises;1,933;labeled;citations;following;a;six-label;classification;schema;introduced;in;the;paper.
a46ac708-3a4d-4fe3-9769-29c8ffaa3e93	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	All;samples;originate;exclusively;from;the;computational;linguistics;domain.
52af6ac9-499f-45d8-b59c-d629e7983719	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	•;ACT2;(N.;<ref type="single">Kunnath et al., 2021)</ref>;is;a;larger,;mixed-domain;collection;with;4,000;anno-tated;citations;labeled;with;the;schema;used;for;the;ACL-ARC;dataset.
929024ad-c19f-45ac-9898-4bf469842451	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	•;SCICITE;<ref type="single">(Cohan et al., 2019)</ref>;,;also;multidomains,;contains;11,000;samples,;annotated;with;a;simple;three-class;annotation;schema.
5a880c1b-5114-4f78-9b5e-ccdf88efb53e	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	•;MULTICITE;<ref type="single">(Lauscher et al., 2022</ref>;);is;a;multi-sentence,;multi-label;dataset;annotated;with;seven;citation;function;classes;based;on;the;scheme;used;in;ACL-ARC.;With;12,653;annotated;citations,;it;is;the;biggest;dataset.
39cf7cf2-46b6-4d8d-b770-95adbbb8a7b2	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	Although;ACL-ARC;and;ACT2;are;primarily;modeled;using;the;citing;sentence;alone,;we;perform;extraction;on;an;extended;window;containing;multiple;sentences;before;and;after;the;citation.;SCICITE;does;not;provide;text;exceeding;the;citing;sentence,;which;drastically;restricts;the;extraction;of;our;fine-grained;context.
746f8dca-d7c0-43cd-b9df-e0c81d3067f4	2025-10-17 04:03:49.750472+00	461213f5-c23f-478e-bcb8-300dfd519278	To;reduce;the;model's;tendency;to;memorize;author;names,;we;conceal;the;targeted;and;other;citations;behind;&lt,TARGET_CITATION/&gt,;and;&lt,CITATION/&gt,;tags,;respectively.;Each;dataset;is;divided;into;approximately;85%;training;and;15%;testing.;For;the;FINECITE;approaches,;we;extract;the;fine-grained;context;using;the;extraction;approach;presented;in;Section;5.1.
5d9811ab-9c1b-4817-ae10-de0f24779c3c	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	We;considered;four;baselines;for;the;classification;task:;(i);the;scaffolding;approach;presented;in;<ref type="single">Cohan et al. (2019)</ref>;,;(ii);the;best-performing;citation;classification;model;from;the;3C;classification;task;2021;(N.;<ref type="single">Kunnath et al., 2021</ref>;)-a;SCIBERT;model;with;a;linear;classification;head;<ref type="single">(Maheshwari et al., 2021)</ref>;,;(iii);GPT-4o;<ref type="single">(Achiam et al., 2023)</ref>;,;and;(iv);SCITULU;70B;<ref type="single">(Wadden et al., 2024)</ref>;-an;instruction-tuned;LLM;for;scientific;literature.;(i);and;(ii);were;fine-tuned;on;the;training;split,;and;(iii);and;(iv);were;evaluated;in;a;zero-shot;setting.;The;FINECITE;approaches;use;SCIBERT;<ref type="single">(Beltagy et al., 2019)</ref>;embeddings;and;a;linear;classification;head;similar;to;(ii).;Instead;of;using;CLS;pooling,;we;use;mean;pooling;over;tokens;belonging;to;the;same;dimension.;The;resulting;dimension;embeddings;were;concatenated;and;passed;to;the;classification;head.
7e8a9a28-b3c4-46a3-9222-06e0755bac30	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	Experiment;setup.;We;utilized;the;pre-trained;SCIBERT;weights;as;mentioned;above.;The;best;performance;was;achieved;using;AdamW;<ref type="single">(Loshchilov and Hutter, 2019)</ref>;conducted;on;an;NVIDIA;A100;GPU.;The;optimal;learning;rate,;batch;size,;and;dropout;for;each;dataset;are;provided;in;Appendix;C.;For;all;fine-tuned;models,;the;performance;was;evaluated;over;five;consecutive;seeds.
3bea094b-dfb3-4861-8255-7e8af6000baa	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	Result.;Table;4;exhibits;the;macro-F1;and;standard;deviation;for;each;dataset.;Detailed;results;including;class;scores;are;shown;in;Appendix;D.;Among;the;baselines,;SCIBERT;achieves;the;highest;average;macro-F1;(0.546),;followed;by;the;SCAFFOLDS;approach;(0.453).;Both;GPT-4o;(0.43);and;SCITULU;70B;(0.405);perform;lower.;These;results;show;that;finetuned;encoder;models;have;a;considerably;better;conceptualization;of;the;citation;task;than;LLMs;in;a;zero-shot;setting.;We;further;observe;that;the;SCAFFOLDS;approach;exhibits;a;high;standard;deviation;on;the;ACL-ARC;tasks,;as;it;struggles;to;predict;minority;labels;correctly;on;the;smaller;dataset.
4d390222-40d2-490f-87a7-cc78b2dcf2a3	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	The;FINECITE;models;introduced;in;this;work;outperform;the;baselines;across;all;datasets.;Among;them,;the;context;extracted;with;the;Linear;classification;head;achieves;the;best;overall;performance,;with;an;average;macro-F1;of;0.579.;The;context;from;the;BiLST;and;CRF;classifier;only;perform;slightly;lower;with;an;average;macro-F1;of;0.574;and;0.571,;respectively.;Comparing;the;performance;on;a;per-dataset;basis;reveals;a;more;nuanced;pattern.;The;largest;increase;can;be;observed;on;the;ACT2;dataset;with;a;25%;increase;over;the;strongest;baseline,;followed;by;a;13%;increase;on;the;ACL-ARC;dataset.;We;explain;the;relatively;low;performance;increases;on;MULTICITE;by;considering;that;the;dataset;already;provides;a;dynamic;context,;leaving;limited;advantage;for;fine-grained;contexts.;The;performance
647d4521-4740-437f-9658-2d0bea92b981	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	APPROACH;ACL-ARC;ACT2;macro;st.;dev.;macro;st.;dev.;Context;Dimensions;w/o;INF;0.556;0.017;0.277;0.013;w/o;PERC;0.563;0.019;0.259;0.036;w/o;BACK;0.56;0.019;0.253;0.024;Mean;Pooling;Dimensions;0.584;0.014;0.302;0.02;Weighted;tok;0.542;0.013;0.281;0.019;Weighted;dim;0.573;0.015;0.28;0.015;Table;5:;Ablation;on;context;dimensions;and;pooling;on;the;SCICITE;benchmark;further;stresses;that;for;the;extraction;of;comprehensive;fine-grained;context,;the;citing;sentence;is;not;sufficient.;Overall,;the;results;demonstrate;that;the;fine-grained;citation;context;proposed;in;this;work;captures;a;more;comprehensive;citation;representation;than;other;conceptualizations;in;previous;work.
02665327-e3f3-4e2c-b2e8-279f128df6ff	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	Ablation.;We;provide;ablation;on;the;context;dimensions,;pooling;method,;and;domain;shift;for;a;further;analysis;of;the;proposed;fine-grained;citation;contexts.;The;dimension;and;pooling;ablation;were;done;on;the;ACL-ARC;and;ACT2;datasets.;We;create;two;new;datasets;(ACT;2,;ACT;2;′;D;);for;the;evaluation;on;domain;shift.
cd92c432-ba5a-4390-90c2-d6fc35aff09b	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	With;the;ablation;on;the;citation;dimensions;(Table;5);we;investigate;the;significance;of;the;INF,;PERC,;and;BACK;dimensions;for;classification;performance.;Our;analysis;shows;that;removing;any;of;the;three;citation;dimensions;leads;to;a;performance;drop;for;both;datasets.;While;the;decrease;in;performance;on;the;ACL;dataset;is;similar;for;all;three;dimensions,;for;the;ACT2;benchmark;PERC;and;BACK;exert;greater;influence.;This;highlights;that;despite;the;low;extraction;performance,;PERC;and;BACK;contain;essential;information;for;the;citation;classification;task.
31061d77-759b-43e5-8a7b-ffe2be6dbb12	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	The;ablation;on;pooling;strategies;(Table;5);evaluates;whether;pooling;citation;dimensions;separately;improves;performance;over;simpler;alternatives.;We;compare;this;approach;to;token-weighted;pooling,;which;ignores;citation;dimensions,;and;a;dimension-weighted;method.;On;both;datasets,;separate;dimension;pooling;yields;better;results.;Although;the;performance;gap;is;modest,;it;indicates;that;modeling;citation;dimensions;individually;enhances;representation;quality,;reinforcing;the;value;of;our;context;definition.
72d74276-b9b7-4c0c-853d-21464bb4766e	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	As;the;FINECITE;dataset;only;consists;of;samples;from;the;computational;linguistics;domain,;there;might;be;a;domain;bias;in;the;context;extraction.;To;evaluate;whether;this;compromises;domain;adaptation;performance;on;the;classification;task,;we;provide;an;ablation;on;two;new;datasets;(ACT2;′;,;ACT2;′;D;);constructed;from;the;multi-domain;ACT2;benchmark;(Table;6).;The;ACT2;′;D;contains;samples;from;computational;linguistics;and;STEM;domains;in;its;training;split,;and;samples;from;medicine;and;social;sciences;in;its;test;split,;thus;evaluating;domain;adaptation.;The;ACT2;′;,;on;the;other;hand,;contains;samples;from;all;domains;in;both;splits;while;following;the;same;split;sizes.;We;provide;the;macro-F1;results;on;the;test;set;for;the;strongest;baseline;and;our;approach,;and;analyze;the;difference-in-difference;estimator;between;the;two;approaches.
39029e59-616b-4e70-9118-ae4354789518	2025-10-17 04:03:49.750472+00	7224334f-82dd-4487-adcb-32187534e441	For;both;models,;we;observe;a;substantial;drop;in;performance;when;evaluated;out-of-domain.;Our;approach;retains;a;slightly;larger;margin,;leading;to;a;negative;difference-in-difference;estimate;of;-0.024.;Despite;this;indicating;that;our;model;approach;performs;slightly;worse;on;domain;adaptation,;the;performance;gains;of;using;fine-grained;contexts;outweigh;this;drawback;in;overall;effectiveness.
08cd8221-ddba-49f2-a89b-ea8af201881a	2025-10-17 04:03:49.750472+00	9b59bdc5-5a07-49b4-8402-0743224a558d	In;this;paper,;we;introduced;a;novel;approach;to;defining;citation;contexts,;aiming;to;foster;new;research;in;citation;context;analysis.;We;proposed;a;conceptual;framework;that;characterizes;citation;context;based;on;semantic;dimensions;and;structural;properties.;Subsequently,;we;described;the;curation;of;the;FINECITE;corpus-a;first;resource;for;fine-grained;citation;contexts-and;analyzed;core;statistics.;Our;experiments;demonstrated;that;our;context;definition;is;practically;applicable;and;leads;to;improved;performance;on;established;CCA;benchmarks;compared;to;state-of-the-art;methods.
6998f89d-18f7-4d17-ad89-b4c9f4cd7551	2025-10-17 04:03:49.750472+00	9b59bdc5-5a07-49b4-8402-0743224a558d	In;future;work,;we;will;focus;on;expanding;the;dataset;to;a;wider;range;of;scientific;texts;and;domains;and;further;refining;our;context;definition.;Additionally,;we;plan;to;explore;applications,;such;as;retrieval-augmented;generation;(RAG);<ref type="group">(Lewis et al., 2020; Edge et al., 2024)</ref>;and;question-answering;(Q&amp,A);frameworks;<ref type="group">(Lauscher et al., 2022; Dasigi et al., 2021)</ref>;,;to;support;interactive;exploration;of;scientific;argumentation.
\.


--
-- Data for Name: citations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."citations" ("id", "created_at", "paragraph_id", "marker_location", "annotation_count", "iaa_macro", "type", "iaa_total", "iaa_inf", "iaa_perc", "iaa_back") FROM stdin;
cde758fb-439b-44c4-bebe-c64bb1005f78	2025-10-17 04:04:03.822675+00	b2f4fa91-969a-43c5-aaf9-16ac49336bd0	60	\N	\N	group	\N	\N	\N	\N
6d99377a-a9fa-4726-96cd-35ef2956e855	2025-10-17 04:04:03.822675+00	b2f4fa91-969a-43c5-aaf9-16ac49336bd0	85	\N	\N	group	\N	\N	\N	\N
c1b5ac8f-9dc2-48dd-9142-0819ad208579	2025-10-17 04:04:03.822675+00	b2f4fa91-969a-43c5-aaf9-16ac49336bd0	89	\N	\N	group	\N	\N	\N	\N
cdf5f5f2-5af2-4bfa-8287-e3e0ce6b97e7	2025-10-17 04:04:03.822675+00	5599841d-2096-44f5-9e2e-e9db67157655	43	\N	\N	group	\N	\N	\N	\N
f04140a2-02f9-4dd3-8aaa-6d84f101bcf1	2025-10-17 04:04:03.822675+00	32a73f7b-1e62-4cb1-a6e1-4132a44b5582	28	\N	\N	group	\N	\N	\N	\N
cf41a6fa-c21c-44b5-b294-d47c1dcbb659	2025-10-17 04:04:03.822675+00	32a73f7b-1e62-4cb1-a6e1-4132a44b5582	38	\N	\N	group	\N	\N	\N	\N
4080c76f-8162-43e4-84a7-b5dc18cdb8d8	2025-10-17 04:04:03.822675+00	43e79da4-51dc-4a80-a120-f9513aec5169	11	\N	\N	single	\N	\N	\N	\N
dc398c74-7525-4243-bbc2-ae8fd8dc9c33	2025-10-17 04:04:03.822675+00	43e79da4-51dc-4a80-a120-f9513aec5169	23	\N	\N	single	\N	\N	\N	\N
f06ba102-4074-4f44-a493-4b42c3860261	2025-10-17 04:04:03.822675+00	43e79da4-51dc-4a80-a120-f9513aec5169	102	\N	\N	group	\N	\N	\N	\N
4b9fda07-8d2f-407f-84df-d816cbd88b9f	2025-10-17 04:04:03.822675+00	43e79da4-51dc-4a80-a120-f9513aec5169	105	\N	\N	group	\N	\N	\N	\N
62416b12-ab52-4217-a61f-43beab4345f1	2025-10-17 04:04:03.822675+00	43e79da4-51dc-4a80-a120-f9513aec5169	108	\N	\N	single	\N	\N	\N	\N
e1bfee06-1712-4256-afb0-3da1448abc9f	2025-10-17 04:04:03.822675+00	43e79da4-51dc-4a80-a120-f9513aec5169	112	\N	\N	single	\N	\N	\N	\N
277b73e0-3b31-449a-8119-d226867a5446	2025-10-17 04:04:03.822675+00	43e79da4-51dc-4a80-a120-f9513aec5169	122	\N	\N	single	\N	\N	\N	\N
fbc52b6d-d30e-4226-9018-f91fcc9cdeef	2025-10-17 04:04:03.822675+00	71428cef-4e9d-4df9-91f4-1ba3018369fd	13	\N	\N	group	\N	\N	\N	\N
fb030909-524e-42ec-996b-1576fcf2f002	2025-10-17 04:04:03.822675+00	71428cef-4e9d-4df9-91f4-1ba3018369fd	18	\N	\N	group	\N	\N	\N	\N
b38d864f-6b50-424b-b832-37522c2c702d	2025-10-17 04:04:03.822675+00	71428cef-4e9d-4df9-91f4-1ba3018369fd	34	\N	\N	single	\N	\N	\N	\N
e3a0e853-8a42-47e5-8d16-a42b43fdea06	2025-10-17 04:04:03.822675+00	71428cef-4e9d-4df9-91f4-1ba3018369fd	48	\N	\N	single	\N	\N	\N	\N
fcf5f2b8-7e7e-455a-9614-7b757164c62c	2025-10-17 04:04:03.822675+00	71428cef-4e9d-4df9-91f4-1ba3018369fd	76	\N	\N	single	\N	\N	\N	\N
e3a5a8f4-475d-4169-af15-09fc2994e052	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	50	\N	\N	group	\N	\N	\N	\N
53210410-db86-4e60-ba82-9414b5a92fe9	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	55	\N	\N	group	\N	\N	\N	\N
e7991155-ba49-4d01-94f2-905ac8a767dd	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	62	\N	\N	single	\N	\N	\N	\N
bc002501-e109-475f-8261-a2579088fedb	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	68	\N	\N	single	\N	\N	\N	\N
d42ab434-85a8-4d97-8caa-b2fa574c6e9c	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	72	\N	\N	group	\N	\N	\N	\N
d60400c4-5e3e-4c41-bac3-5415d65f93ff	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	103	\N	\N	group	\N	\N	\N	\N
fc960301-d2bb-4d92-b709-ded96e9c626e	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	142	\N	\N	group	\N	\N	\N	\N
fef06d07-def1-4692-b94a-213c10875f96	2025-10-17 04:04:03.822675+00	68f3eb9a-d6d6-434b-9e67-8eb28f0f2d3b	147	\N	\N	single	\N	\N	\N	\N
ea777d1f-210b-4ea2-b26b-a07304b55908	2025-10-17 04:04:03.822675+00	ddf562d8-a5cc-4f3a-abfa-453dabf85acb	17	\N	\N	group	\N	\N	\N	\N
3805d6b9-762f-4084-891c-21603193b043	2025-10-17 04:04:03.822675+00	ddf562d8-a5cc-4f3a-abfa-453dabf85acb	29	\N	\N	single	\N	\N	\N	\N
25917857-8932-4632-83a4-23dc34729b31	2025-10-17 04:04:03.822675+00	7e22da9c-215f-4ac0-a275-30b340a56d81	18	\N	\N	group	\N	\N	\N	\N
c70cc8bf-9b31-4573-967f-afe6431e67b7	2025-10-17 04:04:03.822675+00	7e22da9c-215f-4ac0-a275-30b340a56d81	36	\N	\N	single	\N	\N	\N	\N
6da8d3fb-2f3f-41c1-a862-7e59a9d03edd	2025-10-17 04:04:03.822675+00	daf354aa-9307-42af-a880-d50263acbf9b	21	\N	\N	single	\N	\N	\N	\N
e776c489-e05e-4c34-a291-85c2e2062885	2025-10-17 04:04:03.822675+00	544498d7-c04e-430f-bc43-804727d36e79	16	\N	\N	single	\N	\N	\N	\N
b7e11fbd-e8d3-4952-9542-010eafea197d	2025-10-17 04:04:03.822675+00	8f2ae66c-50d1-43eb-a141-1a19cd767959	74	\N	\N	single	\N	\N	\N	\N
52d2e910-a554-4d1d-baff-975db892244b	2025-10-17 04:04:03.822675+00	b919b026-8bb8-471f-a35b-249b0641f4d8	18	\N	\N	single	\N	\N	\N	\N
c5eff4de-c6d0-4ced-8f04-a6d70b4a8ef8	2025-10-17 04:04:03.822675+00	637793da-904e-40c3-b393-ccc49d8e8cc3	20	\N	\N	single	\N	\N	\N	\N
99fa2c65-cae4-419f-b187-21bb799ed2b6	2025-10-17 04:04:03.822675+00	51bd91a5-1979-49dd-b0fe-29c5c36a9946	16	\N	\N	single	\N	\N	\N	\N
7d7fcacc-48aa-4aa3-8edc-21b069d000b5	2025-10-17 04:04:03.822675+00	0acfa1c2-441f-4019-86f5-01a92e54a2ba	32	\N	\N	single	\N	\N	\N	\N
970c8fbe-5305-443d-99b1-a97cd31a8987	2025-10-17 04:04:03.822675+00	0acfa1c2-441f-4019-86f5-01a92e54a2ba	37	\N	\N	single	\N	\N	\N	\N
913e7685-37dd-4677-b534-35d848bb6d4e	2025-10-17 04:04:03.822675+00	71c36b1e-9dad-437a-b747-4cd7ac80b020	13	\N	\N	group	\N	\N	\N	\N
296d67ce-544e-4e10-9600-6eca847a335b	2025-10-17 04:04:03.822675+00	9b3e5208-c0ab-432e-af38-cc4d3f5f2a56	10	\N	\N	single	\N	\N	\N	\N
752f2cad-ee1a-4930-914c-77c9ac5b31ac	2025-10-17 04:04:03.822675+00	9b3e5208-c0ab-432e-af38-cc4d3f5f2a56	40	\N	\N	single	\N	\N	\N	\N
fc3ab418-4072-4a4b-a8e7-9159ce11d866	2025-10-17 04:04:03.822675+00	9b3e5208-c0ab-432e-af38-cc4d3f5f2a56	48	\N	\N	single	\N	\N	\N	\N
0790693b-0af1-4d41-9851-a8ad64c0f4d7	2025-10-17 04:04:03.822675+00	f238ab60-9d5f-4212-8b42-cfa96ba809ef	12	\N	\N	single	\N	\N	\N	\N
a79e77d5-2c75-42f5-a373-c2399c54290b	2025-10-17 04:04:03.822675+00	f238ab60-9d5f-4212-8b42-cfa96ba809ef	23	\N	\N	single	\N	\N	\N	\N
a7aac98b-bcf8-4d7e-9753-7268df558cae	2025-10-17 04:04:03.822675+00	d383847f-370f-4f42-ac45-dd0dcaf2c09f	2	\N	\N	single	\N	\N	\N	\N
3ec798e1-35b3-4107-8e27-92a1a40283b5	2025-10-17 04:04:03.822675+00	52af6ac9-499f-45d8-b59c-d629e7983719	3	\N	\N	single	\N	\N	\N	\N
91c6b4bb-7373-4f57-9816-0ce88064e23b	2025-10-17 04:04:03.822675+00	929024ad-c19f-45ac-9898-4bf469842451	2	\N	\N	single	\N	\N	\N	\N
5eda4735-5ee8-44d5-8920-0bf3e2ebf85b	2025-10-17 04:04:03.822675+00	5a880c1b-5114-4f78-9b5e-ccdf88efb53e	2	\N	\N	single	\N	\N	\N	\N
91a25f49-43dc-4a34-b72e-d6f4837fe0d6	2025-10-17 04:04:03.822675+00	5d9811ab-9c1b-4817-ae10-de0f24779c3c	14	\N	\N	single	\N	\N	\N	\N
d378aca0-1dc5-43a1-a58a-e856cd260e68	2025-10-17 04:04:03.822675+00	5d9811ab-9c1b-4817-ae10-de0f24779c3c	29	\N	\N	single	\N	\N	\N	\N
2e29695f-ace3-4a56-a780-4e698619b7a8	2025-10-17 04:04:03.822675+00	5d9811ab-9c1b-4817-ae10-de0f24779c3c	38	\N	\N	single	\N	\N	\N	\N
23ffc72c-ebfe-4e6f-bde7-136856c8d839	2025-10-17 04:04:03.822675+00	5d9811ab-9c1b-4817-ae10-de0f24779c3c	42	\N	\N	single	\N	\N	\N	\N
302939c6-67bb-4587-ae30-3cd52dfc4e6e	2025-10-17 04:04:03.822675+00	5d9811ab-9c1b-4817-ae10-de0f24779c3c	48	\N	\N	single	\N	\N	\N	\N
fe52822f-1278-4297-91eb-2e2d32b0f677	2025-10-17 04:04:03.822675+00	5d9811ab-9c1b-4817-ae10-de0f24779c3c	79	\N	\N	single	\N	\N	\N	\N
e4c54fd2-795d-4078-b7a0-4f6a51ebf971	2025-10-17 04:04:03.822675+00	7e8a9a28-b3c4-46a3-9222-06e0755bac30	18	\N	\N	single	\N	\N	\N	\N
f2aab3a8-b0d0-4b33-b417-492764cdf193	2025-10-17 04:04:03.822675+00	6998f89d-18f7-4d17-ad89-b4c9f4cd7551	36	\N	\N	group	\N	\N	\N	\N
679d49b3-71d5-4c84-9fa1-cd342bf63195	2025-10-17 04:04:03.822675+00	6998f89d-18f7-4d17-ad89-b4c9f4cd7551	41	\N	\N	group	\N	\N	\N	\N
30fec4a7-a8f4-427c-bfd7-b75b501cf273	2025-10-17 04:04:03.822675+00	b2f4fa91-969a-43c5-aaf9-16ac49336bd0	82	1	\N	group	\N	\N	\N	\N
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
792fcba2-b838-4338-8fd9-e46d760fd998	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	30fec4a7-a8f4-427c-bfd7-b75b501cf273	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
558d7f38-279b-4f4e-b885-d93d53d33365	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	cdf5f5f2-5af2-4bfa-8287-e3e0ce6b97e7	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
7b49e2b4-e443-49a7-94c1-29f38288addf	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	cdf5f5f2-5af2-4bfa-8287-e3e0ce6b97e7	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
c111e920-4a3e-4190-9fc3-5bc2b0a86892	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	f04140a2-02f9-4dd3-8aaa-6d84f101bcf1	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
6caad9a9-066c-45f9-92e2-b005acc7bdf2	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	f04140a2-02f9-4dd3-8aaa-6d84f101bcf1	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
5edef1f8-c511-4c9a-834e-ef99792cae21	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	dc398c74-7525-4243-bbc2-ae8fd8dc9c33	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
7998672a-1f60-4d43-bec1-573ac6433eb1	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	dc398c74-7525-4243-bbc2-ae8fd8dc9c33	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
9c963d00-4a8d-4dc5-afb6-fe81efcb45b2	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	b38d864f-6b50-424b-b832-37522c2c702d	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
b35094d5-335f-478f-9eed-f3f739e7ba03	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	b38d864f-6b50-424b-b832-37522c2c702d	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
e66fcd00-2c97-4d20-b354-0e123323bdb3	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	bc002501-e109-475f-8261-a2579088fedb	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
92ebb688-6b7f-4a86-86e1-1e0513d2c0e5	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	bc002501-e109-475f-8261-a2579088fedb	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
a548d5b2-1caf-40ee-8660-25015e8490e9	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	ea777d1f-210b-4ea2-b26b-a07304b55908	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
bd16c08f-bf7c-4afe-b1e7-d21ccc71fbd2	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	ea777d1f-210b-4ea2-b26b-a07304b55908	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
dbb3a32a-ce6b-4297-b498-dc06a930d41e	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	c70cc8bf-9b31-4573-967f-afe6431e67b7	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
96d1d7bc-8c62-409b-91aa-3e618d3ac3b4	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	c70cc8bf-9b31-4573-967f-afe6431e67b7	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
1cf5b7ef-78a3-44ed-ba47-b3421ee3cc72	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	6da8d3fb-2f3f-41c1-a862-7e59a9d03edd	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
825b8cf5-5140-4ab0-be0e-00bfd311a8d6	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	6da8d3fb-2f3f-41c1-a862-7e59a9d03edd	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
aa88d1a3-0798-4e5b-a2f8-8544359de83c	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	e776c489-e05e-4c34-a291-85c2e2062885	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
04638c95-c7ed-46d5-870b-19ee9214d719	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	e776c489-e05e-4c34-a291-85c2e2062885	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
f7550861-a685-4d3b-ac85-4249558d1330	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	b7e11fbd-e8d3-4952-9542-010eafea197d	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
eb766e4d-c411-40b1-9d24-568b231b063d	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	b7e11fbd-e8d3-4952-9542-010eafea197d	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
13b4562f-e0b1-43dd-81b4-4fa97162d7bf	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	52d2e910-a554-4d1d-baff-975db892244b	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
6d306dc6-f793-428d-94bb-c76ce867de0d	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	52d2e910-a554-4d1d-baff-975db892244b	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
966e2d11-7b55-4611-9ec8-c1d6cc349fdc	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	c5eff4de-c6d0-4ced-8f04-a6d70b4a8ef8	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
70160d20-1839-4838-841e-f8106a44d741	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	c5eff4de-c6d0-4ced-8f04-a6d70b4a8ef8	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
784ec60d-b930-4076-af7b-6c700fce477b	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	99fa2c65-cae4-419f-b187-21bb799ed2b6	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
821227fd-7509-4ddd-8eca-847467bf63c3	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	99fa2c65-cae4-419f-b187-21bb799ed2b6	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
f5214e5f-8987-4fe7-8e53-8b20dc77521c	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	970c8fbe-5305-443d-99b1-a97cd31a8987	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
b4dc29d5-fd20-4872-8149-a856e2bf4cb1	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	970c8fbe-5305-443d-99b1-a97cd31a8987	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
c3d09d70-5723-40d4-815b-6011cf208792	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	913e7685-37dd-4677-b534-35d848bb6d4e	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
4f3f353e-112f-4642-a304-47cb7a5a1843	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	913e7685-37dd-4677-b534-35d848bb6d4e	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
b6e729db-a0f4-4f16-a829-5a918a8ddab4	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	752f2cad-ee1a-4930-914c-77c9ac5b31ac	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
1f933a71-9f46-49da-a2a4-fa1a33855777	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	752f2cad-ee1a-4930-914c-77c9ac5b31ac	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
80dc3ccb-4924-4dd7-9616-f76a7053bb48	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	0790693b-0af1-4d41-9851-a8ad64c0f4d7	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
cabdf8a4-51b4-4db2-8417-bbb0b5c9a291	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	0790693b-0af1-4d41-9851-a8ad64c0f4d7	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
8cdf04e0-ef82-4c07-a28c-990a5fd7fcc0	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	a7aac98b-bcf8-4d7e-9753-7268df558cae	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
30a0ef2c-87e6-4058-b5db-ee6a97eafb5a	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	a7aac98b-bcf8-4d7e-9753-7268df558cae	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
7b50598b-87b8-4d5d-be6b-d0c0faae32ea	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	3ec798e1-35b3-4107-8e27-92a1a40283b5	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
c3a06d30-45ff-4b49-8505-f0c9b68d65e7	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	3ec798e1-35b3-4107-8e27-92a1a40283b5	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
cebd44ba-229c-4b2a-b785-0deb2a61e409	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	91c6b4bb-7373-4f57-9816-0ce88064e23b	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
db1a49ab-b860-4ccd-a743-ca03e0615ec5	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	91c6b4bb-7373-4f57-9816-0ce88064e23b	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
95c02764-04c2-4956-9b1c-eaa2fa9bf607	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	5eda4735-5ee8-44d5-8920-0bf3e2ebf85b	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
b3132036-8068-4594-8b16-e9df490b947a	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	5eda4735-5ee8-44d5-8920-0bf3e2ebf85b	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
91994321-40d9-412f-ba2f-1cc7cc00521f	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	23ffc72c-ebfe-4e6f-bde7-136856c8d839	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
c0c73d6b-f72a-4637-90a8-c24564506b45	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	23ffc72c-ebfe-4e6f-bde7-136856c8d839	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
5acc436f-ae2c-419b-937d-c2aed45a608d	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	e4c54fd2-795d-4078-b7a0-4f6a51ebf971	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
b5fb8ec1-7587-4639-8c01-44408e723e22	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	e4c54fd2-795d-4078-b7a0-4f6a51ebf971	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
28b2df48-ef61-499d-bec0-c38ba2954725	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	f2aab3a8-b0d0-4b33-b417-492764cdf193	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
1762d74f-4cec-4181-bb78-41c2d6b691cd	2025-10-17 04:04:28.443645+00	907f4be7-ac0e-480c-8e51-a99f52011653	f2aab3a8-b0d0-4b33-b417-492764cdf193	outstanding	\N	2025-10-17 04:04:28.443645+00	\N
c3486cfd-2ab2-4f97-9135-7b146ab5e055	2025-10-17 04:04:28.443645+00	17a7019f-4eb1-40fb-8c66-e2953af5f4be	30fec4a7-a8f4-427c-bfd7-b75b501cf273	annotated		2025-10-17 04:04:28.443645+00	{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
\.


--
-- Data for Name: cited_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."cited_documents" ("citation_id", "document_id") FROM stdin;
cde758fb-439b-44c4-bebe-c64bb1005f78	e4989ef1-a613-423e-a4e9-e72b562a0519
cde758fb-439b-44c4-bebe-c64bb1005f78	56dc0ecb-c118-412f-b60f-918931782675
30fec4a7-a8f4-427c-bfd7-b75b501cf273	85099669-b144-4b5b-84cc-5008f32a944d
30fec4a7-a8f4-427c-bfd7-b75b501cf273	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
30fec4a7-a8f4-427c-bfd7-b75b501cf273	df4f2161-6bd1-4969-953f-3fdd9fdd5f6d
30fec4a7-a8f4-427c-bfd7-b75b501cf273	7741bdff-f873-4b97-ae8d-be3b455f50f9
6d99377a-a9fa-4726-96cd-35ef2956e855	df6f7a11-999b-4fb1-821e-27c40fc3402f
6d99377a-a9fa-4726-96cd-35ef2956e855	c252679e-cdff-419c-9578-13a2dba00909
6d99377a-a9fa-4726-96cd-35ef2956e855	66eef4d7-80cd-4f27-804b-cf3d736180eb
c1b5ac8f-9dc2-48dd-9142-0819ad208579	f91de3c0-ec90-4416-a246-bfcb474d5620
c1b5ac8f-9dc2-48dd-9142-0819ad208579	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
cdf5f5f2-5af2-4bfa-8287-e3e0ce6b97e7	f91de3c0-ec90-4416-a246-bfcb474d5620
cdf5f5f2-5af2-4bfa-8287-e3e0ce6b97e7	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
f04140a2-02f9-4dd3-8aaa-6d84f101bcf1	1ec17f75-d89b-4b80-a854-6f4a19424975
f04140a2-02f9-4dd3-8aaa-6d84f101bcf1	829e7ee8-64a6-4090-a26e-27503dd6c31b
f04140a2-02f9-4dd3-8aaa-6d84f101bcf1	7760cb46-3360-4a8f-8154-2bf7fb5f277a
cf41a6fa-c21c-44b5-b294-d47c1dcbb659	829e7ee8-64a6-4090-a26e-27503dd6c31b
cf41a6fa-c21c-44b5-b294-d47c1dcbb659	1cb309e3-8ff9-4e78-976a-b4d870d88890
4080c76f-8162-43e4-84a7-b5dc18cdb8d8	ba997670-a1b6-4eba-970d-17964ac1cc76
dc398c74-7525-4243-bbc2-ae8fd8dc9c33	7741bdff-f873-4b97-ae8d-be3b455f50f9
f06ba102-4074-4f44-a493-4b42c3860261	85099669-b144-4b5b-84cc-5008f32a944d
f06ba102-4074-4f44-a493-4b42c3860261	df4f2161-6bd1-4969-953f-3fdd9fdd5f6d
f06ba102-4074-4f44-a493-4b42c3860261	7741bdff-f873-4b97-ae8d-be3b455f50f9
4b9fda07-8d2f-407f-84df-d816cbd88b9f	f91de3c0-ec90-4416-a246-bfcb474d5620
4b9fda07-8d2f-407f-84df-d816cbd88b9f	c252679e-cdff-419c-9578-13a2dba00909
62416b12-ab52-4217-a61f-43beab4345f1	66eef4d7-80cd-4f27-804b-cf3d736180eb
e1bfee06-1712-4256-afb0-3da1448abc9f	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
277b73e0-3b31-449a-8119-d226867a5446	e4989ef1-a613-423e-a4e9-e72b562a0519
fbc52b6d-d30e-4226-9018-f91fcc9cdeef	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
fbc52b6d-d30e-4226-9018-f91fcc9cdeef	df4f2161-6bd1-4969-953f-3fdd9fdd5f6d
fb030909-524e-42ec-996b-1576fcf2f002	4e1170fa-10aa-4dad-9cd9-7be95e004d5b
fb030909-524e-42ec-996b-1576fcf2f002	85099669-b144-4b5b-84cc-5008f32a944d
fb030909-524e-42ec-996b-1576fcf2f002	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
b38d864f-6b50-424b-b832-37522c2c702d	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
e3a0e853-8a42-47e5-8d16-a42b43fdea06	df4f2161-6bd1-4969-953f-3fdd9fdd5f6d
fcf5f2b8-7e7e-455a-9614-7b757164c62c	85099669-b144-4b5b-84cc-5008f32a944d
e3a5a8f4-475d-4169-af15-09fc2994e052	f91de3c0-ec90-4416-a246-bfcb474d5620
e3a5a8f4-475d-4169-af15-09fc2994e052	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
53210410-db86-4e60-ba82-9414b5a92fe9	c252679e-cdff-419c-9578-13a2dba00909
53210410-db86-4e60-ba82-9414b5a92fe9	66eef4d7-80cd-4f27-804b-cf3d736180eb
e7991155-ba49-4d01-94f2-905ac8a767dd	df4f2161-6bd1-4969-953f-3fdd9fdd5f6d
bc002501-e109-475f-8261-a2579088fedb	7741bdff-f873-4b97-ae8d-be3b455f50f9
d42ab434-85a8-4d97-8caa-b2fa574c6e9c	c252679e-cdff-419c-9578-13a2dba00909
d42ab434-85a8-4d97-8caa-b2fa574c6e9c	66eef4d7-80cd-4f27-804b-cf3d736180eb
d60400c4-5e3e-4c41-bac3-5415d65f93ff	85099669-b144-4b5b-84cc-5008f32a944d
d60400c4-5e3e-4c41-bac3-5415d65f93ff	e4989ef1-a613-423e-a4e9-e72b562a0519
fc960301-d2bb-4d92-b709-ded96e9c626e	85099669-b144-4b5b-84cc-5008f32a944d
fc960301-d2bb-4d92-b709-ded96e9c626e	c252679e-cdff-419c-9578-13a2dba00909
fc960301-d2bb-4d92-b709-ded96e9c626e	66eef4d7-80cd-4f27-804b-cf3d736180eb
fef06d07-def1-4692-b94a-213c10875f96	e4989ef1-a613-423e-a4e9-e72b562a0519
ea777d1f-210b-4ea2-b26b-a07304b55908	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
ea777d1f-210b-4ea2-b26b-a07304b55908	e4989ef1-a613-423e-a4e9-e72b562a0519
ea777d1f-210b-4ea2-b26b-a07304b55908	85099669-b144-4b5b-84cc-5008f32a944d
3805d6b9-762f-4084-891c-21603193b043	24e68956-ef06-43d6-8da4-3d6b1d7e8155
25917857-8932-4632-83a4-23dc34729b31	f91de3c0-ec90-4416-a246-bfcb474d5620
25917857-8932-4632-83a4-23dc34729b31	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
25917857-8932-4632-83a4-23dc34729b31	df4f2161-6bd1-4969-953f-3fdd9fdd5f6d
c70cc8bf-9b31-4573-967f-afe6431e67b7	85099669-b144-4b5b-84cc-5008f32a944d
6da8d3fb-2f3f-41c1-a862-7e59a9d03edd	3bebfbe2-3dd8-4ecc-85f5-ae2603c631b5
e776c489-e05e-4c34-a291-85c2e2062885	5e413814-91a1-4421-8dfd-2e21bab242b4
b7e11fbd-e8d3-4952-9542-010eafea197d	3bebfbe2-3dd8-4ecc-85f5-ae2603c631b5
52d2e910-a554-4d1d-baff-975db892244b	5e413814-91a1-4421-8dfd-2e21bab242b4
c5eff4de-c6d0-4ced-8f04-a6d70b4a8ef8	5e413814-91a1-4421-8dfd-2e21bab242b4
99fa2c65-cae4-419f-b187-21bb799ed2b6	bcc2018e-3b71-4e43-8b98-8ed4caea32c1
7d7fcacc-48aa-4aa3-8edc-21b069d000b5	2e79bdde-12ba-4b54-ae3c-307da2998a74
970c8fbe-5305-443d-99b1-a97cd31a8987	05fd88d1-70bf-47a6-bbba-ceff9036313c
913e7685-37dd-4677-b534-35d848bb6d4e	85099669-b144-4b5b-84cc-5008f32a944d
913e7685-37dd-4677-b534-35d848bb6d4e	3bebfbe2-3dd8-4ecc-85f5-ae2603c631b5
913e7685-37dd-4677-b534-35d848bb6d4e	5733ffd8-23ce-4b1c-bc40-9868138fdb4f
296d67ce-544e-4e10-9600-6eca847a335b	2d0af395-3a1e-4c08-afd7-3c66e4f51fec
752f2cad-ee1a-4930-914c-77c9ac5b31ac	5d281ffd-f527-49ea-aac4-8efba88783ca
fc3ab418-4072-4a4b-a8e7-9159ce11d866	7083a696-601b-4b14-8e35-f18266df93f8
0790693b-0af1-4d41-9851-a8ad64c0f4d7	7698c6c7-bba3-4582-aea1-ef09f4c10b0f
a79e77d5-2c75-42f5-a373-c2399c54290b	c3e2f24f-5ae9-428f-9271-e9a371f62e64
a7aac98b-bcf8-4d7e-9753-7268df558cae	df4f2161-6bd1-4969-953f-3fdd9fdd5f6d
3ec798e1-35b3-4107-8e27-92a1a40283b5	faf9d30c-7c49-4265-8fb3-9cfca2a38ae1
91c6b4bb-7373-4f57-9816-0ce88064e23b	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
5eda4735-5ee8-44d5-8920-0bf3e2ebf85b	85099669-b144-4b5b-84cc-5008f32a944d
91a25f49-43dc-4a34-b72e-d6f4837fe0d6	0b2d69d8-0d7a-4953-98f8-278a4196cfc2
d378aca0-1dc5-43a1-a58a-e856cd260e68	faf9d30c-7c49-4265-8fb3-9cfca2a38ae1
2e29695f-ace3-4a56-a780-4e698619b7a8	6078b64b-e55b-4181-997d-dff78d5e3b8f
23ffc72c-ebfe-4e6f-bde7-136856c8d839	920c9fe0-ebcf-49c4-bfbd-916b3aafec77
302939c6-67bb-4587-ae30-3cd52dfc4e6e	2135d4e2-3025-4398-9dab-b441f531d434
fe52822f-1278-4297-91eb-2e2d32b0f677	2d0af395-3a1e-4c08-afd7-3c66e4f51fec
e4c54fd2-795d-4078-b7a0-4f6a51ebf971	c3e2f24f-5ae9-428f-9271-e9a371f62e64
f2aab3a8-b0d0-4b33-b417-492764cdf193	829e7ee8-64a6-4090-a26e-27503dd6c31b
f2aab3a8-b0d0-4b33-b417-492764cdf193	1cb309e3-8ff9-4e78-976a-b4d870d88890
679d49b3-71d5-4c84-9fa1-cd342bf63195	85099669-b144-4b5b-84cc-5008f32a944d
679d49b3-71d5-4c84-9fa1-cd342bf63195	8badeac0-28a1-420f-bb86-9e0fdd03e93a
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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 25, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
