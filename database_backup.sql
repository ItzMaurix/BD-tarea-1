PGDMP  0                     |            tareabd1    16.2    16.2 +               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16398    tareabd1    DATABASE     {   CREATE DATABASE tareabd1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE tareabd1;
                postgres    false            �            1259    16607    actor    TABLE     z   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer
);
    DROP TABLE public.actor;
       public         heap    Grupo6    false            �            1259    16606    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Grupo6    false    218            �            1259    16623    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    Grupo6    false            �            1259    16601    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer
);
    DROP TABLE public.director;
       public         heap    Grupo6    false            �            1259    16600    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Grupo6    false    216            �            1259    16613    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    Grupo6    false            �            1259    16612    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Grupo6    false    220            �            1259    16650    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer NOT NULL,
    anio integer
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    Grupo6    false            �            1259    16649     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Grupo6    false    225            �            1259    16639    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer NOT NULL,
    anio integer
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    Grupo6    false            �            1259    16638 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Grupo6    false    223            �            1259    16661    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer NOT NULL,
    anio integer
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    Grupo6    false            �            1259    16660 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          Grupo6    false    227                      0    16607    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          Grupo6    false    218   k5                 0    16623    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          Grupo6    false    221   �<                 0    16601    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          Grupo6    false    216   >C                 0    16613    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          Grupo6    false    220   �J                 0    16650    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          Grupo6    false    225   La                 0    16639    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          Grupo6    false    223   b                 0    16661    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          Grupo6    false    227   �b       #           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          Grupo6    false    217            $           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          Grupo6    false    215            %           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          Grupo6    false    219            &           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 31, true);
          public          Grupo6    false    224            '           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 27, true);
          public          Grupo6    false    222            (           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 30, true);
          public          Grupo6    false    226            t           2606    16627 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            Grupo6    false    221    221            p           2606    16611    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            Grupo6    false    218            n           2606    16605    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            Grupo6    false    216            r           2606    16617    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            Grupo6    false    220            x           2606    16654 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            Grupo6    false    225            v           2606    16643 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            Grupo6    false    223            z           2606    16665 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            Grupo6    false    227            |           2606    16628 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          Grupo6    false    218    4720    221            }           2606    16633 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          Grupo6    false    4722    221    220            {           2606    16618 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          Grupo6    false    216    4718    220                       2606    16655 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          Grupo6    false    225    218    4720            ~           2606    16644 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          Grupo6    false    223    4718    216            �           2606    16666 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          Grupo6    false    220    4722    227               o  x�eWIr�8]��	:�� ˖'Y�<(z��L��d5�T�u�:K]���D�k�!A�o���,���0�<ہ�-��s��3ŋq��3Lh.��8�4��ݍLJ��{Zyv쭻7L�\�냝�l�/�h�X����f*^����v~��8g���L��)�[��.n�����>ڙՂw���˓�K���}0���f��33S�]�Gg��ۉ�����5�9b��ן;72-��ᬷ�w�?����Ş=����4��nŪf/��Ns�a�Iu�Z�>�;J$Ă�Dþ�k�����OHXK.Z����݃�e�c�O��Q��=ݣyU�7�\o�D���{쩪���l(�b���|�]�n�gɒW����a,^L'T��b��ʝ)^�L���y�Q�;;-cqmB�\�W�����*lm؇_�Y��5�䞶{ѫ������Ȓ*�s-x���܍�f\�%���b�NnXPܷ' �
)e����f�jlS�߀���R�7G�����f������7��hX����C��%-ۈ���83�:v5�@bUe>'�)���=����������Ìі+�^#N4�;J,���.�
�T:��b4�?��Ɏ+
��g蛨�aî����a���O#���x^�H�ݐF#����{>��G
H+�Kvn����>"ܥ��p0�JL\��"��e,�zX�Un���R�m�Zs]���X"r+�u���2\���o ��x�)��X\B.u�p����k����3`>����u��}�z�(y-Q���� a_�Z�7h��������'v/�US{���o��8,A��nK4�Z�Q"�5N��ɟ#������'y#"������Y�vSyne�*�Hv;��.���K��O��Bx �YR�HS:������Xd��:���#:�	:ՖYE|�;ފ��DO������	3�L������*3-�X5�աV���'	hW�Ģ��m�H6 �ڮ摋�Tڎ}r�,>-�J�� '�Ok@G'|K�~S������b�=NG���5
��w*L�N�h'�*B����-��w]����wmF�ո;x?�:ToC"&AcQ��������Ɇ�4Q�U�{浦}�=C�7�S*���SPE����2�-�-�ȌP}Zo�����b���f�� D�eCI�p�(�߮Z `���V���'Gچta���i�H�5�:�V��ca��+�Ś]RH���q�ǜDZ�+��cp�/����]/K��! j�D(�&�ZU6�*�FT~\Y��L�{V�%ػ_��F����lD�Ɔ����k��*������tFY��ɀ�iR��������%`��k���t�������E�>$�E�(����z!W�G�������������(
�K������á+JUN(�V�PL~��$�4|��7XS(�R�W	��tbg�EL���@4ml�~�+����j�V�f�.{q)���Е�X��f��/�0�%��Q`���A��;�{��;��2�"�l��v��\�	�d����(��k7�iL�;�������85�:�_ 9p؁��g�L�T������0�!Q3���]�2�q�>������������hoD�ں?2�ĥ���fE_CPSL i5AZ�!�Bw�hҸ�h �=Cѧ����L��x�LQ�V��r�5+2E��e�U|H�:߂�	�6���܉��� 0�8��a�Xч�aP�ͣ�B2��(�>�%���H����zSk1(�!8`�T�B� ��0&��F����E.$�[[F�F�	z�U�A���U�x{7��bvk9Y��0;�SS�����(o&�YG��{��+SD�ҬL,����m�!""���VaT����o�D��         D  x�=�G��8D��a&��e��ɗ�5���h`Ҡ����b�����o�v�;C_v��SF���^-z�r�w|9�Q��l19mx��N�v��߶��������Cx��6}�!g1z�
%n[Z��^ݺ������=]u>����ef�z�z��#�sȰO[�u(��-�����t�C�\�񋈣=���ri��C�]+��|$����]�D��5��(����Ң��J�4�6���O7��1�v��T�;�����Ù����Pִ�NV�\�$GSv\��L��z>Z4v�n>�G�{�}GL}ҭK���ҥsNeD�i�:���Ym�h8B�CCg�[��`h�vp�_���r�꫗F���N�O�c�N��(j��N]�>�|��|JZ�_�zP@�WN��;]����QD{�p�V��u�+ܐ��]5�;��~?�[]�ߔ1�Nx9��mV�a 1]Ǫ.��*�:,䕀9�M�@ˋ��QM�u�B�9Jn=�.�de� �
���Z1�w�H���>]m���Qy�_*2���,��_�KK�j��Q9 ��`�4�Cj�?R� ������
�t���8�A�X�*����ѐ���G�;�IjdѥlR�Q^��x���K�A�*D�"��=Ș^qa��n�@0.D:�:�ʤ��ʚ%�?�C)�{�M�~k�9#jp݌���Z�؀'��c�#e��I���������j�־��r�R���M���>�-WZ^��+~2%����7rHUm���z)�J]�s��I]�?�X1�4�5�P#ߵ�9&��`(Aශ�@%W+�S"pJUcڠ�3�j��-�ԚP�J��t�[?�"� &�wQ���m]��0��(�����7�%2a��Ec���+\w��{�o���$��8��c��v$����'���x�c�я�V�[ HAS�*lO��O/�_�P����M���T�&��E��΢��: �g����oߨ��Ua�d&І9���x`���b��D�]oG���U����j�YEQ pX�C�C���v���4��1�f�-��$�z$�*���!J1<`���$x���n6qx!�k���s�՝T���ڄ��s�Ut5�>�7�uF�@}�`^n[M�h��C �tCc툝�5������@U�G�RŰ']{-�s��$M�@^��T�UZ�|ٮ��D�`�.d`yY_�d�H��@��R$�#�L�B0�`�Y��k�d�3D/��	��8f�JoQ��"�������#ӣ�@Mᅰ�ۨ��J�Bq�p#�M5�n�P&(OTʁ1�z��K)��R�v�<��d��n��<���N�c�ƌ���q�4K
ߴ�c�0��4�B�I�=w
���uADA͟��)�$T)ݯ���a���Z����X�<�6���|���E���KOcݼ=�v�f׀bO+u��@ۦښb �N0�0�L�4V#�s���;�z���4�8���:�����v�
��R�8 ��u<�m�e�%z���N�)F">3z(Ty `�5�C��V�iB�����*�_�T���6��1�#b%�.B���0\���N�I�?מ�q��a���H��������'�         y  x�]WYv�8�N��#H�?�%ٖ�I��7?�
�K7X��6s���Dbcy>�̌��H
�N?/��o�h&�ɊW��`&]\��;���쫞�ŃF����7�v�x��	�jJ.�����*�Y���-{�Oָ����faM�;v�'�<7�-�S�+�[F;��u�L*އǯ|�Ϭ�(��/݊x��w=�����"����B�f�Y��5���W��ᰉ�|������`Y�r!qu���w�vҬ\�����_k�Tt�v?5"��Z�D�K;��4��p��\��9�'���mxU�G?���OL��B-�v��Mz��Ѷ�U��?f *yU�[�C Ϫ�!^���}\��~|4�8�g���|�~�'��%�W{X�#���y��ۃ�.a�"TϮ��ѻЦ��u��/OH��vn^(H-�7tu8c�X�b7��<�"���#��h��u�.�q�x3�V;R��d�G�p�zg���}�'�\�wG�Q�;v1�efn�!(hP���([^�T�ϳVȞ7%�C�h����`��W�6�bÛ
 9����L�U���@�l�LJ�4��#�Z4�
�sc|OQ}ӂ�?p�n�����C�	9�9Ab�]H�v��D���M�.ʹ?��w��	 �6�杳�5�*{�G=D�qP�1#Mu���\��N�q�e��>(.%0�,�}\�DMc5��^v�1�c7�0�c�u��=�������Fw���5cRZ�n���&��-o� ��<�W{7����r]��4G{�i�T���z!��}@-.��ֶ�,��v�|!.�Ҫ��a����];�v���wy�/�0/��H����Ԧ���Ӈ�~�I(]Wg����XW�Iݻ���o>��Э�3M�M�ew��� �P]�NH��T,��hu=���Im�jSqUf�#�;���߁Vh����*�ӣ�j�Ѯ ���d��&��J�7`}��Q-�]��Qe˸3�߾rK)�j���ل�����p9�/3��v������U�΄��}�.�E��z�:-Hg����R(�"��@�H4 ܷQ�r�����,JM���
��������';S�}Z�j5%"�2��R����1�t��
G�2�8kv��ן�CnW6I�7�l�'�(��fh�!T8�b�I�(%�d�R��QQ�Y�n��xl�<�9z>ٹ�ϑ4.�@�yZ�t���Ft���ӽ�o஀�{��|��»�ͯ���6��Rp�čH|(���'��
��{/�OfzP)	�.:CCKI���d˟o�dq�*|=�	E%���zK�	,��/@c�f�i^��b
E�	WH��z���Ⱦ���A0%����{ËV��ǟ�)�Wg��+�P��i�?觃y�=�`�>���K�����]vV�n����'	��	��yY�
p��m�>ط��G<��ӫp�s{����d�aغ�t
�.�XMR	 
_2q�R"E��o�F��쑺>�����~M�UZ(��Ѩ�	m��l��"�=�,��;� ����
)Ӓ�Ύ^5�=|l���]~��:�ǙLG����`������t�d|Y�Q.|> ��P�VO^��8�o8}t�,m���w���G�����'d��Z�3�f���=����A����[ �44gn ���q�=�i����a�cl��_<��aЇ��2��a�F���4��-`�~a��w=>:��5���@*���֟�>�.+Y�t#!���i��	�����O������_oT"�`�����z@��b��X�G�-$�߆,P��>���H���RYE�9�{�|�-)1ΰ�De#��.��mf���D���3ua%��Ѩ]X
brר���c�"}S�Wa��,
0*�b����ւ�ո3��X���c�_�� �Cq_�����������            x��\����r�������̍{)�ב!G�bݘ�����7k^�Ɔ��Ώ)_���I9�]VWUV�ɓ'�*eM���t���ç���6/����W]�K_S���'��t[�Jy�+N���FK���{?MC�ò�K�T�t�ܓj���M���_��a?��*Kކۼ�iM#�4�����t�>O��ڟ��Ǚeݷ��m�>W�/�y��*����kW)�n>��!��������7�H=5�n+eh3>ѧ�v����7����<�������u�ކ�s���Ъ��$�|��:Mq��}��3n�t���%M[{�p�{���o��}�c���o��mX���QU��5M�rw�o�e^�η�&K_�`����|���MU��Z�Ϡ�Z�Z|�/�K|��~��e��ySOGm��`�Z)�!8ꩿ���4��o`Ϗ�.>D���٪�V�(�;:+��o��2��s|�Р��C�*Su���e�G�U�0�a��+*���w|R]�,����2/c���2��������®�M�
��99�,;��r=����a���Ը�C��Q[�_�poˀ������7����2Lտ���'p�ep�|@u���[>e��������>�v}�z�}�����S���yҮ��TN�:�/E�?C�����R�=���~��N��z���˯���J�o�U��\}�x�<��[v�TM��������E�(� _S��c��y`6����p��?a݉���:|I��>w�//k�Y>~̫+Z���0�,u�Ѹ�6��!���/��[=EVcj�ݦcl�=���%ǝ�ׄ�J\@���2h_�S/��N�s�!��ǧ ���7pP��
!1�@̯��~�䍯�U�p��?D�a&��+�R��1�"<�Pܞ6|��9�6��*��EGm\m�gh�����;,��z�{�"�9��:yP4b�[x�wU������#-��]�U���Pf;N:����c�>��A�O���
��v��'
J-E�����G�OiCɎ	��W�<��Q�|'X6}�O���؉:%6�0��%�����s�m�+\����Ä�d7��a\Gp�,*{  ��?���_�Z'�ꯣĥRtـ8 a�>ܨ-IyeH(Re�#� 8�.Lt�	�/_����[��X�7�QHr�L^��8�΁�X��r�?�KJv�N�k�>`����>y���G6Ϳ� f�k���Z�`����t^��+ܠXM���n�;C�ݘx���g���?^�os�K���h��d����.ZM�v���Ù�އ�9�L��Q�YdB����?�hg� �prk���%����hrp���A[��"q�@)��!w*g�3&Ԕ\T�zѷj���2O�׈I//3�� 崶�m��~�y�ʧ��1�A����=r��d��ɣ1�X̣�U�-��&�	��tdJ���'l���� r(�/�)J�)=v
�>��%d�g0�-SC�I~���;�������~���^�A��U��i�on* �2��[E6�����M1]��MC6"���J�`���$�@n�,pL�_6eG�B~���P�xĩ��)���*_C�x���'���Zl�Ё��R��a�l���G��{���`��۶bhx㙷d��9�yF�U⌂���{D�>ן�I%��5Y��<��CR!ٗn��KmbJGXN�s�P*F5W[PK6�SG)p���9R;ظ��Ԙ��EL[+�T�m9aEc�v.K��5;���X��m�5,q��Бk�9m��������:����b�(j����K��]�%��0Ț�&�^Ʒ{?��LJ�FXo��xv��z�ԋb���oqZBBE���u[�F	�:�R2(.��](R��6�v����	Kn[��N�u��E"��C, �l��ڴ8����s a�����g�
		�� ZF8a��($Vk��`1���e���ϴ!	D��H�I��~��Ӳ �%�ȗ�1���x���#��s���[  ���Ǵ�+u@�[��Y��~g2G�IH+���p�C;���sްM�Y�����F��x/"�P�b&	uhH��,���O�������4� %cB�TR��4{o1�� *��6^?!�Z�R�Y����X�s`��yFX�y��^�����(m�/I�p�R\�8d ��i[Mt1y�	��#cm�	{�~n���%�lgDp��rЭ�j��sT��&����ԯ�-�aN��$�@[�<eޯ��vO	3�P	MMJ!x���m&a�-�I!XX�{�H�[����(��^4���4�]��
qy��)R�j�Q�Qt��{(� ^6�$�Mb5\��Y��[�����T.�\M���+��� ��otV�)k.N�����/V�xώ���~�|Y�G՝Tw����v�l�5�ݟ1G�0Q6 y���#P{]��Ir!2UQ:S��BE
 ˲�Y�N@��&Ӌ �K�k'���������.����<��=�mU��ZIn�
ӀnJ��>E���W�y���8Vxw��n�$�t��UG�0:L�>�8i��Ƴzʭ	�L�����2�(�Y�tSJ$A���c8f� ��0>;8�ò���V��IiMɇՈs'�ό��ԫh��_�G\���DDh�>^�L�T zJG��U&���2|���d���u(����Jz��M+�����g&t_.9!+A��H���ร�It4T��ꆷ��5S�)�8d6F�m�kh��^J�>�K*Vѣ���4�}U\XI	�L�o��w����h|�o�]I��V�,F�⬰�CP1���0�u5F���+�t�w,�#�̐m ``��}��b���VƉ>�)bH����R��e�B ��Z�	�*8��̃VdZ*�I!����l��ԃS��4�I��`)Ѧu\Qo�ى鐉~����7�QlZ��yEH�K?�������/�	�?fc�Q�Go��#�k!\�T���t�w�X��>�����ܒ������a���0MD�ޛʑ�_Qߴ� �|
f��R��:0�>�*�����SYDH�['�^�Wu��Y�WԮY�V��DmlM�;�+�;n��i/{ew(�*�쇱�ߡ�D�m�G�>2��'$�V�c��Ϸt[VL�����G�[���v^�#s k�=`�>�
:$ٚ��C������eLZ���b,�>��]�!_��
Z+³%lp�@ϟ��t���u��jC����"¨��*KCo�0��͐�=
K(*7�L���{�]�2���b�Dy��ע+|-�)T���.`�NH��t�R2� �N Ae���E�T>�	�hr9���d��]vzY���AK���&�:WXRZ(V�������G�N��%�������zk�������E�h]eڭ� �o�A���zWx-�q[~�/���7���V�]L��v[��t�S
V�j��V��-�t:�;ѓ�C�.�?��^���əoG�H�Z�� �htJ��E�ux�pn${R1�A��f��t� �6B�x��W%�*�X�tF^gÐQˤZ%�5��[j�;PI�Ӓ��<���e�[��8���wDw��[�X<"Bj�E����{l��+��l��]�_p����+G����@�J�ܸ|��D53d�yM ��nT��ҿ�i[$m�cbǆ
@E|���H�	o����R�9jļ�/U,q��vp{زkv��T�z��I�mh�+o��F�)�IYIv�����ww�k�p�֑��0��@*�>Me[���F������v�T��r-�n��i@�g��Tn%W�2bd� {1
��Z&J1?!�רjc�= dY�.9RԚh�Aa�4�M�b�-)T&�tQ����r�3�W�
���ͣI�(Ѯ	h��<��k$[�+F����w`q��\�!�+{��(�IA1���F.w�<����� �E!�U�ҵW��g<���
S=%��No#ԙ��4H��-���zY�>L��K̓�1��Z�D��Z�
�h��5e+�b�n%x曖ɖ�QM�e���Y���Ǽ p  ̊�@ſnL��g2��I�rc���:K��/���N5� Zg��WY�h����}����h\�ͿX��JϮ�i����Ŧ2N���9gi ‭�.�ܤ��u2>ݐ���s�[$�F�/R�4*��j�-���\B��N!*~Yt]�ӷ���<�B@�k5Rv�A%�O�1:_�9j��ۨ��ɨ������Y���y�}C�`ר�fIq�^ς2�l�V���P��t�=2M)Yux~3|��u}�����^��g�}��ڐf�	�6�s��J�
��~�4�K緄e��f�i)h��4�5M5��ť$��J80"tl���R�$�"}�x&#�>�hl�F`�(Y��Ev�3�I&ت���9�FkL{r���i���ޓ�P}��ic_b��4�cHcjh9޶���ϛ�u��R����a�y�|�y���7s��M��X��Bg�`0A;͕�D:Z�����;�x'W�(�۟}�>��:`��up�|����R���3q�iM]w`��c�F8>k̑��b�k�@�F��E�������V�Ҍ��UMs�{�#]�h9qU­cܯ#���n밂c�� z����ώ
}���[%LL�t�WA3(+c��"k���=h���S]��}ɡd#`%�s5��]���
����/2��'́�Y�;�vݜ8�����	�\5����8T���'d�� �uҬ:g3������4��Q?��Î��ܚC+#&����(;16TB���hb:��CIW��U�i�P����)���pJw��)aR�>~��֧ȶ<S�q��͐c!1�Ͱ\/�J:�-�S�l�>��Bccڙj��Q] �F�0G8��!�_�f��v��Tt�a��J��:��QQQ�q�[N�d�N�3"Ki������<���KY2��ly�q�7�Ybh@Q��Ν���&����$ܷl���y�	KQ�F��+B?���k����®�x=�4<�9��]�F�)����So���G��$��0��v�;�$����3��>L��F�_$��gQ������}��U� �>�#���{8�C��Z�l��.-�Au;��U�I��<���1E��b%�;���us��t�Kd��o����E�I�C�	gTl���gL��9�J�4Q�����S���\��hm��K�U���<��� �z�XK�K�x�}���>���+*P�K�M8r6R~�D�8�e�'��:Q*���2��[�#q�M�hz��/�d�&M���%�:�B2 �l�qXL-?s$>��[=ĉmm�~���*9�w��l�UW���2�W���v��Ae/�u�y\z��nV�;)�8��\���TYΨ�{�����ɴ�zE�*��˺qYK��y?������}�M�`��b[Ԋ��1�ci��� ڌk~;6E'��3ty���j<e#eq�$}�%�JqM����#�jP 7��
���/��Qb]����J���@#�t����r��#W*�,�HV�*"W_�P�MZ?:�Sv7�����7;��콃����=c�ܞ�����Nt�&T!��>�I�$���#�[�+*�,"$Ԯ���ct4LYLѵ�9����������y���0��H�_�R�����k         �   x�-�� C��0=���K�����e�	1,�X�:�e���.u
ӲZm�7�����\F����iگ�]��ӝ��`'�@P��z �/��9�_,y�7�Nk�!�f�	V$��h���6�[5~V&m��zꍳ�L��U�j���S4T"�.��uh6x?n�qݘ�f�����N7�         �   x�-��m@1C�x�
��.����"Y`��-��0R��XV)�۸��;�q�'�bie�3[�VW�j�2=q��Ќ�4�'�,��a)�4�E�Kn���#�P�c�`��k)������p����s��Z�~�����0|r����q�n2B������3�0�         �   x�-��D!CϤ�(���_ǆ��d�I����!�<J���썴:�
���8��W�y��F�6�Y��7�������!�oj|�O��N��܊��.���y�4nŏ�qP3>W��;�~���~yW��nK�	Q�Bs�I���_�һF�F��p�u��T|:ލ��2�o�~ � �7�     