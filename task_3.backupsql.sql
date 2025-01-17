PGDMP          	            |            task_3    16.2    16.2 %    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16769    task_3    DATABASE     y   CREATE DATABASE task_3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE task_3;
                postgres    false            �            1259    16857 	   employees    TABLE     .  CREATE TABLE public.employees (
    emp_id integer NOT NULL,
    emp_name character varying(100),
    designation character varying(50),
    department character varying(100),
    experienein_year integer,
    highest_qualification character varying(100),
    salary numeric,
    project_id integer
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16856    employees_emp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.employees_emp_id_seq;
       public          postgres    false    222            �           0    0    employees_emp_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.employees_emp_id_seq OWNED BY public.employees.emp_id;
          public          postgres    false    221            �            1259    16781    material    TABLE     �   CREATE TABLE public.material (
    material_id integer NOT NULL,
    material_name character varying(100),
    supplier_name character varying(50),
    material_type character varying(100),
    unit_cost numeric,
    project_id integer
);
    DROP TABLE public.material;
       public         heap    postgres    false            �            1259    16780    material_material_id_seq    SEQUENCE     �   CREATE SEQUENCE public.material_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.material_material_id_seq;
       public          postgres    false    218            �           0    0    material_material_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.material_material_id_seq OWNED BY public.material.material_id;
          public          postgres    false    217            �            1259    16771    projects    TABLE     g  CREATE TABLE public.projects (
    project_id integer NOT NULL,
    project_name character varying(100),
    client_name character varying(50),
    project_type character varying(100),
    location character varying(100),
    start_date date,
    estimate_budget numeric,
    status character varying(50),
    engineer_id integer,
    architect_id integer
);
    DROP TABLE public.projects;
       public         heap    postgres    false            �            1259    16870    projects_copy    TABLE     �   CREATE TABLE public.projects_copy (
    project_id integer,
    client_name character varying(50),
    project_name character varying(100),
    location character varying(100),
    status character varying(50)
);
 !   DROP TABLE public.projects_copy;
       public         heap    postgres    false            �            1259    16770    projects_project_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.projects_project_id_seq;
       public          postgres    false    216            �           0    0    projects_project_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.projects_project_id_seq OWNED BY public.projects.project_id;
          public          postgres    false    215            �            1259    16824    test    TABLE     �   CREATE TABLE public.test (
    test_id integer NOT NULL,
    project_id integer,
    material_id integer,
    test_type character varying(100),
    test_date date,
    test_result numeric
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    16823    test_test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.test_test_id_seq;
       public          postgres    false    220            �           0    0    test_test_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;
          public          postgres    false    219            0           2604    16860    employees emp_id    DEFAULT     t   ALTER TABLE ONLY public.employees ALTER COLUMN emp_id SET DEFAULT nextval('public.employees_emp_id_seq'::regclass);
 ?   ALTER TABLE public.employees ALTER COLUMN emp_id DROP DEFAULT;
       public          postgres    false    222    221    222            .           2604    16784    material material_id    DEFAULT     |   ALTER TABLE ONLY public.material ALTER COLUMN material_id SET DEFAULT nextval('public.material_material_id_seq'::regclass);
 C   ALTER TABLE public.material ALTER COLUMN material_id DROP DEFAULT;
       public          postgres    false    218    217    218            -           2604    16774    projects project_id    DEFAULT     z   ALTER TABLE ONLY public.projects ALTER COLUMN project_id SET DEFAULT nextval('public.projects_project_id_seq'::regclass);
 B   ALTER TABLE public.projects ALTER COLUMN project_id DROP DEFAULT;
       public          postgres    false    216    215    216            /           2604    16827    test test_id    DEFAULT     l   ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);
 ;   ALTER TABLE public.test ALTER COLUMN test_id DROP DEFAULT;
       public          postgres    false    220    219    220            �          0    16857 	   employees 
   TABLE DATA           �   COPY public.employees (emp_id, emp_name, designation, department, experienein_year, highest_qualification, salary, project_id) FROM stdin;
    public          postgres    false    222   �+       �          0    16781    material 
   TABLE DATA           s   COPY public.material (material_id, material_name, supplier_name, material_type, unit_cost, project_id) FROM stdin;
    public          postgres    false    218   H/       �          0    16771    projects 
   TABLE DATA           �   COPY public.projects (project_id, project_name, client_name, project_type, location, start_date, estimate_budget, status, engineer_id, architect_id) FROM stdin;
    public          postgres    false    216   91       �          0    16870    projects_copy 
   TABLE DATA           `   COPY public.projects_copy (project_id, client_name, project_name, location, status) FROM stdin;
    public          postgres    false    223   *5       �          0    16824    test 
   TABLE DATA           c   COPY public.test (test_id, project_id, material_id, test_type, test_date, test_result) FROM stdin;
    public          postgres    false    220   �7       �           0    0    employees_emp_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.employees_emp_id_seq', 19, true);
          public          postgres    false    221            �           0    0    material_material_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.material_material_id_seq', 20, true);
          public          postgres    false    217            �           0    0    projects_project_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.projects_project_id_seq', 20, true);
          public          postgres    false    215            �           0    0    test_test_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.test_test_id_seq', 20, true);
          public          postgres    false    219            8           2606    16864    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    222            4           2606    16788    material material_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (material_id);
 @   ALTER TABLE ONLY public.material DROP CONSTRAINT material_pkey;
       public            postgres    false    218            2           2606    16778    projects projects_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (project_id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public            postgres    false    216            6           2606    16831    test test_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    220            ;           2606    16865 #   employees employees_project_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(project_id);
 M   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_project_id_fkey;
       public          postgres    false    4658    222    216            9           2606    16789 !   material material_project_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(project_id);
 K   ALTER TABLE ONLY public.material DROP CONSTRAINT material_project_id_fkey;
       public          postgres    false    218    216    4658            :           2606    16832    test test_project_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(project_id);
 C   ALTER TABLE ONLY public.test DROP CONSTRAINT test_project_id_fkey;
       public          postgres    false    4658    220    216            �   b  x��UK��6>C����%#��G[r������N.�p%XBC��rF���$��֙�(���{8�gSh���.��V�-�F;o�ԓ�0��LT�
s���Ż��,fa�C��Gx���D��k��ԋ��2���ʶpi�v��M�CJ�S���<@�^�	�(-$*���<���36%����:+s����OI�u'���B|�6%	�k{r������e��i0�D^(Oh�����ʣ�o�bZhb0�:�	��3�ɣ$�[Ļ=�ό2y�g�a}��R�Mf)/�RjO����V����t��ӛ!�����uB�`��. .,9o�s�V
5<�T�܁8�#2��R^Z�	s�}��rx71ZO|�g�i7�<X�3jMG.���"yr���F�݌99��K���
���n�����U8�j˄�����	I|����%�Zk�zo�bU�>�eP��½���E�B�v��ƚ��j�%��A��o�K���\���f�k��j-�U��+�X`��;����ƷºY�a�����AĲ4�4u헂�q�f%��}�n���2����~�7d�wư��ʺ�=:S�݀�TeV��A���g/[�(�%M`_{�f������Jf�X�Hz���Z|�b����^���E���w�`�,KP�m���ڔ�1���D�=b��n|�SM;�U�T썖*�'6΋�S�(�r�MX��e�����M�>�����n��+'�F4��k@�����>�� Zp`�tY��W��,vA�C4��?XA˟��\��jd�%'e�����&y��k�v�|�'�������t:A��Ox�C��Y�Ś9���=�jXvrwZ۴�z꛿�f��`���A�y�wa      �   �  x���Qo�0ǟ/� �.�Xt�ʄ��l�^�p-Ǝl����9IWMj���(�;������2"6Gup;_���k�1���}SE�,[��^+��� �"%T#��>÷�?��h#[�|�x&sΡ�F0��:��V��C����
�m�EC���xb�1���a���{a�yRe��S��H�l5JI�ϙ2����l���3�o�?|�#󉤡&��5��1����3]�}��.ZD6���Pzz.�5�����~�����́���Ϯ	8��4y&3�����ֹ`v�UgB�'9)c��#�GWވܐ��VE��=���4D;�����Z3��(M�X%,i�{[a�s���v�Ǡ_�(&�.�t�I�C���L!i1��s���:�Eћs�eӀ+}��ǖ`:bm ���ۍ$O�o�}�S(��Nsx�+?O�3���M���*i	.8�kB���3����gY��f-      �   �  x�uU�n�8���� U�~.i�Ӯ�E�;�Y퍛x�[c#ۡ�<�~Nh�T����9�ߟ9Y�����m��A��=�m�o�o����nO��O'|puj'��z65���bJ�$��	���4���$����ٍ���pTq��oNJ�SI]�'�&����V���)�n']��&��ez��8 �'y?MH�@�^� +�Oc��B�ʃ�ol�.�	���^�auPfC�W�	k)BвǞ�ϐ�yB��c�Jc��x��$��~=���-ȭ�l��ݙ�l�{��ú�������%��P3�9yT���کj#I���}�WV�lW����	�q?MI~��E9b*�͞��؍p��67�m�l�(H�/Y�'L�|i?=�9��.��(���7�ǖBk`���&|ƨتRl��n�B�L���Q��5#:&K[�3��dQ��ݑ�})�ғ[��
nd��
*N�!"�/!4F՘N� 5��{m`D)4���������i?O�x���NP2���I�[V�au$�؃x������w���(�^p��<��C�Xȩ�-k/�)j���[��tg`�P���*-*��[%zl�N/N2 |�A/f��S�F�4�� 5�.���x��R��걛�	#�4&�����<�<#K���bۓ�� E��W<�T���YqBl��c2��S�Qqm�plC(��D�3�\��Ziԯ��}94!Y�l�.1��zq�[ͫ��3i��w���p@f���xN�������Jka߁q��,�\L	��Ar�	>����C�GX�B�:4h]p#Jh�Ț�FB}*��uB��<��^`F�#
�Z^��oq����2�P��Aj��~v�Y�
p��	+xzBx։�ǔO��K���ƣ�@���"f�l@�N�����fCp�I`06�P�K���mCT[)�o��#\�u���Yz�D$����C��A7f��K����?i3>�      �   �  x�eT�R�@>+O��0�R���BǁLB�tz��lv=�p���0l�Ɩ��)#X%����m>q�s�o�׸�Ǧ���5C,�peq���s�#�V�<�����\zf�KXϷ�=�S�b�x�
�iG����$��lŮ��'�
?�%7lc�S���x?��!k���1�d�x	�W�:��Sgz����k��������}�Bbw�/,e�>H�x�^3,��ڽ������Z��˲Ж"�[����Å'[I�\��?�SXr$1x)d#Lܳ�zᜌ�����ZqU�=�2�$��4T�r��KV{X5"(N��U����/�f���1\��s�Ӓ�xo��P��R䪁[�a�>���|u�?�<A�LL^���K$�n&��K��8m`ш��M�q�'��(��*R���(g.����F�xQ��/&�*q�s����FpO}vיߤ��w�Gy���5&ΐ��=��P[y����]RpZ�V(4�=�R=�&l5?ف�q'0s�B[�9˙ٝCn|/�ɽM:��T���h&�y���E�e�f.����y���儷l\�o˫LK��ܗ{��+�\/�Du�j����a�Z�H�)���m,��Ũ)�.�0ª��A���;��s�٪)�h&Գ� ���`0��}~:      �   �  x�m��n�0��˧�H��~���=-'�^��Ȓ@KE��]�d�@s�P�f����`?^���n@�6RF�a�Pi���põ����U��y���>|.����d�J�k�,X�Xxm��۹�4���Q9�������y3�L;�$����������H��1*T���p�sw^n���r�U%��c�v^%J]bnQ�BY�!2���8.���Z�+�*���zlC��~��9��^"��k�k6S��u��I��F2�T�����g��J�$e�>��p�شX�Q`*��m�}.]�h/l��~h�f�)�^�')�����I!̺���q8-����濛��F� Y����~�2�u�]X����Q���R��f]�d*��<��kv����?��~�L!M-kiY���4��>ޭU�iI���+������     