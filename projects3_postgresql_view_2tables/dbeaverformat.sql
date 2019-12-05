--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-05 09:30:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 30 (class 2615 OID 22950)
-- Name: pcragsac; Type: SCHEMA; Schema: -; Owner: datama2mi181
--

CREATE SCHEMA pcragsac;


ALTER SCHEMA pcragsac OWNER TO datama2mi181;

SET default_tablespace = '';

--
-- TOC entry 423 (class 1259 OID 26094)
-- Name: bill; Type: TABLE; Schema: pcragsac; Owner: datama2mi181
--

CREATE TABLE pcragsac.bill (
    id integer NOT NULL,
    hot_name character varying(45) NOT NULL,
    cus_fullname character varying(45) NOT NULL,
    bill_dmg integer,
    hotel_id integer NOT NULL
);


ALTER TABLE pcragsac.bill OWNER TO datama2mi181;

--
-- TOC entry 424 (class 1259 OID 26097)
-- Name: bill_id_seq; Type: SEQUENCE; Schema: pcragsac; Owner: datama2mi181
--

CREATE SEQUENCE pcragsac.bill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcragsac.bill_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 424
-- Name: bill_id_seq; Type: SEQUENCE OWNED BY; Schema: pcragsac; Owner: datama2mi181
--

ALTER SEQUENCE pcragsac.bill_id_seq OWNED BY pcragsac.bill.id;


--
-- TOC entry 425 (class 1259 OID 26099)
-- Name: check_in_slip; Type: TABLE; Schema: pcragsac; Owner: datama2mi181
--

CREATE TABLE pcragsac.check_in_slip (
    id integer NOT NULL,
    slip_cin date NOT NULL,
    slip_cout date NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE pcragsac.check_in_slip OWNER TO datama2mi181;

--
-- TOC entry 426 (class 1259 OID 26102)
-- Name: check_in_slip_id_seq; Type: SEQUENCE; Schema: pcragsac; Owner: datama2mi181
--

CREATE SEQUENCE pcragsac.check_in_slip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcragsac.check_in_slip_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 426
-- Name: check_in_slip_id_seq; Type: SEQUENCE OWNED BY; Schema: pcragsac; Owner: datama2mi181
--

ALTER SEQUENCE pcragsac.check_in_slip_id_seq OWNED BY pcragsac.check_in_slip.id;


--
-- TOC entry 427 (class 1259 OID 26104)
-- Name: customer; Type: TABLE; Schema: pcragsac; Owner: datama2mi181
--

CREATE TABLE pcragsac.customer (
    id integer NOT NULL,
    cus_fname character varying(45) DEFAULT NULL::character varying,
    cus_lname character varying(45) DEFAULT NULL::character varying,
    cus_initial character varying(45) DEFAULT NULL::character varying,
    cus_fullname character varying(45) NOT NULL,
    cus_add character varying(45) NOT NULL,
    cus_cont integer NOT NULL,
    cus_email character varying(45) DEFAULT NULL::character varying,
    cus_crdt integer NOT NULL,
    employee_id integer NOT NULL,
    check_in_slip_id integer NOT NULL
);


ALTER TABLE pcragsac.customer OWNER TO datama2mi181;

--
-- TOC entry 428 (class 1259 OID 26111)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: pcragsac; Owner: datama2mi181
--

CREATE SEQUENCE pcragsac.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcragsac.customer_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 428
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: pcragsac; Owner: datama2mi181
--

ALTER SEQUENCE pcragsac.customer_id_seq OWNED BY pcragsac.customer.id;


--
-- TOC entry 429 (class 1259 OID 26113)
-- Name: employee; Type: TABLE; Schema: pcragsac; Owner: datama2mi181
--

CREATE TABLE pcragsac.employee (
    id integer NOT NULL,
    emp_fname character varying(45) DEFAULT NULL::character varying,
    emp_lname character varying(45) DEFAULT NULL::character varying,
    emp_initial character varying(45) DEFAULT NULL::character varying,
    emp_fullname character varying(45) NOT NULL,
    emp_add character varying(45) NOT NULL,
    emp_cont integer NOT NULL,
    emp_email character varying(45) NOT NULL,
    emp_type character varying(45) NOT NULL
);


ALTER TABLE pcragsac.employee OWNER TO datama2mi181;

--
-- TOC entry 430 (class 1259 OID 26119)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: pcragsac; Owner: datama2mi181
--

CREATE SEQUENCE pcragsac.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcragsac.employee_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 430
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: pcragsac; Owner: datama2mi181
--

ALTER SEQUENCE pcragsac.employee_id_seq OWNED BY pcragsac.employee.id;


--
-- TOC entry 431 (class 1259 OID 26121)
-- Name: hotel; Type: TABLE; Schema: pcragsac; Owner: datama2mi181
--

CREATE TABLE pcragsac.hotel (
    id integer NOT NULL,
    hot_name character varying(45) DEFAULT NULL::character varying,
    hot_type character varying(45) DEFAULT NULL::character varying,
    hot_add character varying(255) DEFAULT NULL::character varying,
    hot_cont integer
);


ALTER TABLE pcragsac.hotel OWNER TO datama2mi181;

--
-- TOC entry 432 (class 1259 OID 26127)
-- Name: hotel_id_seq; Type: SEQUENCE; Schema: pcragsac; Owner: datama2mi181
--

CREATE SEQUENCE pcragsac.hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcragsac.hotel_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 432
-- Name: hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: pcragsac; Owner: datama2mi181
--

ALTER SEQUENCE pcragsac.hotel_id_seq OWNED BY pcragsac.hotel.id;


--
-- TOC entry 433 (class 1259 OID 26129)
-- Name: key; Type: TABLE; Schema: pcragsac; Owner: datama2mi181
--

CREATE TABLE pcragsac.key (
    id integer NOT NULL,
    key_holder character varying(45) NOT NULL
);


ALTER TABLE pcragsac.key OWNER TO datama2mi181;

--
-- TOC entry 434 (class 1259 OID 26132)
-- Name: key_id_seq; Type: SEQUENCE; Schema: pcragsac; Owner: datama2mi181
--

CREATE SEQUENCE pcragsac.key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcragsac.key_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 434
-- Name: key_id_seq; Type: SEQUENCE OWNED BY; Schema: pcragsac; Owner: datama2mi181
--

ALTER SEQUENCE pcragsac.key_id_seq OWNED BY pcragsac.key.id;


--
-- TOC entry 435 (class 1259 OID 26134)
-- Name: room; Type: TABLE; Schema: pcragsac; Owner: datama2mi181
--

CREATE TABLE pcragsac.room (
    id integer NOT NULL,
    room_type character varying(45) NOT NULL,
    room_cpcty integer NOT NULL,
    room_cont integer NOT NULL,
    room_price integer NOT NULL,
    hotel_id integer NOT NULL,
    key_id integer NOT NULL
);


ALTER TABLE pcragsac.room OWNER TO datama2mi181;

--
-- TOC entry 436 (class 1259 OID 26137)
-- Name: room_id_seq; Type: SEQUENCE; Schema: pcragsac; Owner: datama2mi181
--

CREATE SEQUENCE pcragsac.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pcragsac.room_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 436
-- Name: room_id_seq; Type: SEQUENCE OWNED BY; Schema: pcragsac; Owner: datama2mi181
--

ALTER SEQUENCE pcragsac.room_id_seq OWNED BY pcragsac.room.id;


--
-- TOC entry 447 (class 1259 OID 26414)
-- Name: viewview; Type: VIEW; Schema: pcragsac; Owner: datama2mi181
--

CREATE VIEW pcragsac.viewview AS
 SELECT employee.emp_fname,
    employee.emp_lname,
    hotel.id
   FROM (pcragsac.employee
     LEFT JOIN pcragsac.hotel ON ((employee.id = hotel.id)));


ALTER TABLE pcragsac.viewview OWNER TO datama2mi181;

--
-- TOC entry 3388 (class 2604 OID 26139)
-- Name: bill id; Type: DEFAULT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.bill ALTER COLUMN id SET DEFAULT nextval('pcragsac.bill_id_seq'::regclass);


--
-- TOC entry 3389 (class 2604 OID 26140)
-- Name: check_in_slip id; Type: DEFAULT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.check_in_slip ALTER COLUMN id SET DEFAULT nextval('pcragsac.check_in_slip_id_seq'::regclass);


--
-- TOC entry 3394 (class 2604 OID 26141)
-- Name: customer id; Type: DEFAULT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.customer ALTER COLUMN id SET DEFAULT nextval('pcragsac.customer_id_seq'::regclass);


--
-- TOC entry 3398 (class 2604 OID 26142)
-- Name: employee id; Type: DEFAULT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.employee ALTER COLUMN id SET DEFAULT nextval('pcragsac.employee_id_seq'::regclass);


--
-- TOC entry 3402 (class 2604 OID 26143)
-- Name: hotel id; Type: DEFAULT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.hotel ALTER COLUMN id SET DEFAULT nextval('pcragsac.hotel_id_seq'::regclass);


--
-- TOC entry 3403 (class 2604 OID 26144)
-- Name: key id; Type: DEFAULT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.key ALTER COLUMN id SET DEFAULT nextval('pcragsac.key_id_seq'::regclass);


--
-- TOC entry 3404 (class 2604 OID 26145)
-- Name: room id; Type: DEFAULT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.room ALTER COLUMN id SET DEFAULT nextval('pcragsac.room_id_seq'::regclass);


--
-- TOC entry 3574 (class 0 OID 26094)
-- Dependencies: 423
-- Data for Name: bill; Type: TABLE DATA; Schema: pcragsac; Owner: datama2mi181
--

COPY pcragsac.bill (id, hot_name, cus_fullname, bill_dmg, hotel_id) FROM stdin;
1	Shangrila Makati	Ralph Dedumo	0	1
\.


--
-- TOC entry 3576 (class 0 OID 26099)
-- Dependencies: 425
-- Data for Name: check_in_slip; Type: TABLE DATA; Schema: pcragsac; Owner: datama2mi181
--

COPY pcragsac.check_in_slip (id, slip_cin, slip_cout, employee_id) FROM stdin;
1	2019-11-11	2019-11-11	1
\.


--
-- TOC entry 3578 (class 0 OID 26104)
-- Dependencies: 427
-- Data for Name: customer; Type: TABLE DATA; Schema: pcragsac; Owner: datama2mi181
--

COPY pcragsac.customer (id, cus_fname, cus_lname, cus_initial, cus_fullname, cus_add, cus_cont, cus_email, cus_crdt, employee_id, check_in_slip_id) FROM stdin;
1	Ralph	Dedumo	A	Ralph Dedumo	Laguna	1909090909	radedumo@gmail.com	909090909	1	1
\.


--
-- TOC entry 3580 (class 0 OID 26113)
-- Dependencies: 429
-- Data for Name: employee; Type: TABLE DATA; Schema: pcragsac; Owner: datama2mi181
--

COPY pcragsac.employee (id, emp_fname, emp_lname, emp_initial, emp_fullname, emp_add, emp_cont, emp_email, emp_type) FROM stdin;
1	Darline	Mendoza	D	Darline D Mendoza	Laguna	909090901	darline@yahoo.com	Hotel Clerk
\.


--
-- TOC entry 3582 (class 0 OID 26121)
-- Dependencies: 431
-- Data for Name: hotel; Type: TABLE DATA; Schema: pcragsac; Owner: datama2mi181
--

COPY pcragsac.hotel (id, hot_name, hot_type, hot_add, hot_cont) FROM stdin;
1	Shangrila Makati	Luxury and High-End Hotels	Makati City	81694088
\.


--
-- TOC entry 3584 (class 0 OID 26129)
-- Dependencies: 433
-- Data for Name: key; Type: TABLE DATA; Schema: pcragsac; Owner: datama2mi181
--

COPY pcragsac.key (id, key_holder) FROM stdin;
1	Darlyn D Mendoza
\.


--
-- TOC entry 3586 (class 0 OID 26134)
-- Dependencies: 435
-- Data for Name: room; Type: TABLE DATA; Schema: pcragsac; Owner: datama2mi181
--

COPY pcragsac.room (id, room_type, room_cpcty, room_cont, room_price, hotel_id, key_id) FROM stdin;
1	Single	1	89802141	8000	1	1
2	Double	2	89802351	8000	2	2
3	King	2	49802351	10000	3	3
\.


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 424
-- Name: bill_id_seq; Type: SEQUENCE SET; Schema: pcragsac; Owner: datama2mi181
--

SELECT pg_catalog.setval('pcragsac.bill_id_seq', 1, true);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 426
-- Name: check_in_slip_id_seq; Type: SEQUENCE SET; Schema: pcragsac; Owner: datama2mi181
--

SELECT pg_catalog.setval('pcragsac.check_in_slip_id_seq', 1, true);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 428
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: pcragsac; Owner: datama2mi181
--

SELECT pg_catalog.setval('pcragsac.customer_id_seq', 1, true);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 430
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: pcragsac; Owner: datama2mi181
--

SELECT pg_catalog.setval('pcragsac.employee_id_seq', 1, true);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 432
-- Name: hotel_id_seq; Type: SEQUENCE SET; Schema: pcragsac; Owner: datama2mi181
--

SELECT pg_catalog.setval('pcragsac.hotel_id_seq', 1, true);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 434
-- Name: key_id_seq; Type: SEQUENCE SET; Schema: pcragsac; Owner: datama2mi181
--

SELECT pg_catalog.setval('pcragsac.key_id_seq', 1, true);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 436
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: pcragsac; Owner: datama2mi181
--

SELECT pg_catalog.setval('pcragsac.room_id_seq', 3, true);


--
-- TOC entry 3406 (class 2606 OID 26283)
-- Name: bill bill_pkey; Type: CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.bill
    ADD CONSTRAINT bill_pkey PRIMARY KEY (id);


--
-- TOC entry 3408 (class 2606 OID 26147)
-- Name: check_in_slip check_in_slip_pkey; Type: CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.check_in_slip
    ADD CONSTRAINT check_in_slip_pkey PRIMARY KEY (id);


--
-- TOC entry 3410 (class 2606 OID 26281)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 3412 (class 2606 OID 26285)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3414 (class 2606 OID 26149)
-- Name: hotel hotel_pkey; Type: CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);


--
-- TOC entry 3416 (class 2606 OID 26151)
-- Name: key key_pkey; Type: CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.key
    ADD CONSTRAINT key_pkey PRIMARY KEY (id);


--
-- TOC entry 3418 (class 2606 OID 26153)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


--
-- TOC entry 3419 (class 2606 OID 26301)
-- Name: bill bill2_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.bill
    ADD CONSTRAINT bill2_ffkey FOREIGN KEY (id) REFERENCES pcragsac.customer(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3420 (class 2606 OID 26296)
-- Name: bill bill_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.bill
    ADD CONSTRAINT bill_ffkey FOREIGN KEY (id) REFERENCES pcragsac.hotel(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3421 (class 2606 OID 26316)
-- Name: check_in_slip check_in_slip_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.check_in_slip
    ADD CONSTRAINT check_in_slip_ffkey FOREIGN KEY (id) REFERENCES pcragsac.customer(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3422 (class 2606 OID 26321)
-- Name: customer customer2_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.customer
    ADD CONSTRAINT customer2_ffkey FOREIGN KEY (id) REFERENCES pcragsac.room(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3423 (class 2606 OID 26306)
-- Name: customer customer_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.customer
    ADD CONSTRAINT customer_ffkey FOREIGN KEY (id) REFERENCES pcragsac.employee(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3424 (class 2606 OID 26311)
-- Name: employee employee_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.employee
    ADD CONSTRAINT employee_ffkey FOREIGN KEY (id) REFERENCES pcragsac.check_in_slip(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3426 (class 2606 OID 26326)
-- Name: key key2_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.key
    ADD CONSTRAINT key2_ffkey FOREIGN KEY (id) REFERENCES pcragsac.employee(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3427 (class 2606 OID 26291)
-- Name: key key_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.key
    ADD CONSTRAINT key_ffkey FOREIGN KEY (id) REFERENCES pcragsac.room(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3425 (class 2606 OID 26286)
-- Name: hotel room_ffkey; Type: FK CONSTRAINT; Schema: pcragsac; Owner: datama2mi181
--

ALTER TABLE ONLY pcragsac.hotel
    ADD CONSTRAINT room_ffkey FOREIGN KEY (id) REFERENCES pcragsac.room(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2019-12-05 09:30:15

--
-- PostgreSQL database dump complete
--

