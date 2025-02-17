PGDMP  /        	            |            college_search    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16492    college_search    DATABASE     �   CREATE DATABASE college_search WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE college_search;
                postgres    false            �            1259    16493    colleges    TABLE     �   CREATE TABLE public.colleges (
    id integer NOT NULL,
    name character varying(255),
    location character varying(255),
    contact_number character varying(20)
);
    DROP TABLE public.colleges;
       public         heap    postgres    false            �            1259    16500    colleges_id_seq    SEQUENCE     �   ALTER TABLE public.colleges ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.colleges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16502    courses    TABLE     y   CREATE TABLE public.courses (
    id integer NOT NULL,
    college_id integer,
    course_name character varying(255)
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16501    courses_id_seq    SEQUENCE     �   ALTER TABLE public.courses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �          0    16493    colleges 
   TABLE DATA           F   COPY public.colleges (id, name, location, contact_number) FROM stdin;
    public          postgres    false    215   �       �          0    16502    courses 
   TABLE DATA           >   COPY public.courses (id, college_id, course_name) FROM stdin;
    public          postgres    false    218   �       �           0    0    colleges_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.colleges_id_seq', 90, true);
          public          postgres    false    216            �           0    0    courses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.courses_id_seq', 170, true);
          public          postgres    false    217            V           2606    16499    colleges colleges_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.colleges
    ADD CONSTRAINT colleges_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.colleges DROP CONSTRAINT colleges_pkey;
       public            postgres    false    215            X           2606    16506    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    218            Y           2606    16507    courses courses_college_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_college_id_fkey FOREIGN KEY (college_id) REFERENCES public.colleges(id) ON DELETE RESTRICT NOT VALID;
 I   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_college_id_fkey;
       public          postgres    false    218    4694    215            �   #  x��X]s��}���tB<&i��ir<q�s�b�F�0�����6�>w��t"������g7�ܙ̿�ʵ[Wk��?�;���]�lͮ�gS�5t��E$�������,_拍��.S�����.��<TBzb���,��%���*]f�������<�9�4�� 
�C�c�ȋF,�/�W˼�l��oM���yV,�$"��/��٢eR�Y����V;l���)^R��Y��>WJ
�<5f֕YΪ�ڰ�|�[�?m	c-��!��H�X���t�zry��.��]-�I�YF�&,3e�.p���9W��k;�/�Փٰ�
�;
�C��PF�KX���/��_����*&��v���bS_!�sp( �x����{��liM1K�ƮA�T(�(�svo���y��e|���Ζ#�Q($�<>��3�v�����f���-�{3������q���Q�[�������0s[�,��n#	��·j����v}F��"��$�lf�r�pU�g�{�~٢t�k	\+�Dz�_��pK^����d�Qq�m\�.����+��+ћ���A��$�~w��N�߮G�ݱ�8��!�9a�.>���E����l�N8"�ꀓ.�`�J�1�f!֥s�I�F)(�jήk��b���0v���2�Mٷ|�/�@D���\�Jhg� �X�&�9���e�m�w�^�e�������H@I��ۯ�4_�1�h�+^�0�$���֩����7K7���,u�y��.��K�"C�Q\�B�"�C�V���e����C����p��v�v^�5�Ʉ'��҄���ŋ�l�6�0�\ȅ �I�����4u�e�-�n���E�K��*�pDb�(��#>��!v���+S )E�P!ҡ'8�a�u50��|���5r�84P!�tűZ@���3g���'�v�Y��l�5\��D��![Ov��Umc��d��}���na��
 |8M�!*�D4�Q��/.�Wm��S�7�""y��<�l(W���~�E�sީN��uj0"�PN�ׁ"D=�x�Cج�ۋ��8&���s���i�g���ʖ���&�dEAUU� c�:D���I�ph{��RȺ���� ]!v;��)[�{�p����Xj!4���~5ź���ᔨO(��������I�R[�6c[o�JE�,�/�N3���� ���p�ڱ�ƿ(K���F��I1�bo��3�[��z6�?���ڇM��7�;���A�A���Z�Y������Y��ޏT��nsTwE�"�����4�]~��n�4�d�O�VW�'���H<���w�[�2��9ĵDǞ{n�yws7� �4"R�_�0I����!���a/����1�k��VS��5�������$I	�@�A�5�x�WC-���9}���{a�r�_	�
�$
�z��� ��U��J�����s5��d¨�X�µ��z��_�2c�r(�c*$)XF�
F~F�����zҬ�j&L�Ԋ�fA��{�?+�ЮV��.�oC�i�g?�9�N{:ﺖT�M
8�-�G���	������UQ�����V��>8@�E,��Ԑ�Ly��R����e��I��+��
1gK����%��%��f��uZ���\��kM�:l�vԣ���j@��p��͑J��z�L�<{x(�$:��@�A0Aݽ��$�hJ�Q�Q�\�"y/�����[`��X�NB®�Z�d��n�:�� qUk«GUU���"ZmN��Ƒ�I(=-{���9I�3�Ms��4�[�J�<�����!�al/�vQC^嫕-\�jz��E��:���Ѥ�����1���D�w�6K�'�Kh	�<a�O��������c/�|�q�:ģ�U���uz����kφ�6%=�Y�b��&x�sN}:��PQ�!�L��[�$�u(��^�w��#�8�w���ٙ#@d�uo�\đ����Ӵ��=�V�b$v�uv��b�����D<!uαn9Ozu����,TX�{I��-��A��р�v��)�4���K������)�"�����������      �   �  x����n�0E��W�
�)i�:)�F�x���2Q�()@��3r�E�
��%5sg�tM	'�OC��߻�:c�umV3@�ӱ�F��}c��vO����3��m���	d��l�ZJ��i 0����e�͐�
��k,��N��hܘ�%����̈G]�
�~���%��u�	Sdg��v�iQ =�>�	B��	գ=��7l���>����_��D��Mk��Pi!������f8MN���� �7�*��{�g6�[K"�qW�~;�d;��ca�2Z�,�O�D�kuô`~��kN)��h�)�.��XRM@�$����9򋲇�*T�6���K���S��S�R^����gۘ�^�@�U/ܙgӝ�WE�ZC����qf�������hk3ATj�)�$/��=M�8wJ�U�v�]7��]��VWU �D�qM�V�>V� �k�@��]�����r6��M�9�Rvq�4�2\��
d�)�%ϠB��/�	LZ�,Q ����F
��	x7����e��� R6�4e���D�;zPԋI�Y [;�]��GG2ܐ�Fr�����M��$kn;�H���%Y�ʊD/F	�;*������(�X�C/�����H��<���HoۧԬ[f�JR���_;?��w�mߏ��� ����ޝ�T�e�'k��F�, &���-˲��}Fs     