PGDMP      2                }            postgres    17.5    17.5 3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                     postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    5002            �            1259    16923    agenda    TABLE     `  CREATE TABLE public.agenda (
    id bigint NOT NULL,
    judul character varying(255),
    tanggal date NOT NULL,
    jam character varying(255),
    acara character varying(255),
    tempat character varying(255),
    content text,
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.agenda;
       public         heap r       postgres    false            �            1259    16928    agenda_karangtaruna    TABLE     m  CREATE TABLE public.agenda_karangtaruna (
    id bigint NOT NULL,
    judul character varying(255),
    tanggal date NOT NULL,
    jam character varying(255),
    acara character varying(255),
    tempat character varying(255),
    content text,
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 '   DROP TABLE public.agenda_karangtaruna;
       public         heap r       postgres    false            �            1259    16849    aparatur_desas    TABLE     �   CREATE TABLE public.aparatur_desas (
    id bigint NOT NULL,
    gambar_struktur character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 "   DROP TABLE public.aparatur_desas;
       public         heap r       postgres    false            �            1259    16933    berita    TABLE     $  CREATE TABLE public.berita (
    id bigint NOT NULL,
    judul character varying(255),
    slug character varying(255),
    content text,
    gambar character varying(255),
    user_id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.berita;
       public         heap r       postgres    false            �            1259    16852    cache    TABLE     o   CREATE TABLE public.cache (
    key character varying(255),
    value text,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap r       postgres    false            �            1259    16857    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255),
    owner character varying(255),
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap r       postgres    false            �            1259    16862    email_notifications    TABLE     �   CREATE TABLE public.email_notifications (
    id bigint NOT NULL,
    email character varying(255),
    subject character varying(255),
    message text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 '   DROP TABLE public.email_notifications;
       public         heap r       postgres    false            �            1259    16867    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255),
    connection text,
    queue text,
    payload text,
    exception text,
    failed_at timestamp without time zone NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap r       postgres    false            �            1259    16872    galery    TABLE     �   CREATE TABLE public.galery (
    id_galery bigint NOT NULL,
    nama character varying(100),
    gambar character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.galery;
       public         heap r       postgres    false            �            1259    16875    job_batches    TABLE     I  CREATE TABLE public.job_batches (
    id character varying(255),
    name character varying(255),
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap r       postgres    false            �            1259    16880    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255),
    payload text,
    attempts integer NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap r       postgres    false            �            1259    16885    kepala_desa    TABLE     �   CREATE TABLE public.kepala_desa (
    id bigint NOT NULL,
    nama_ttd character varying(255),
    ttd character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.kepala_desa;
       public         heap r       postgres    false            �            1259    16890 
   migrations    TABLE     ~   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255),
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap r       postgres    false            �            1259    16893    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255),
    token character varying(255),
    created_at timestamp without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap r       postgres    false            �            1259    16898    penduduk    TABLE       CREATE TABLE public.penduduk (
    nik character varying(255),
    no_kk character varying(255),
    nama_lengkap character varying(255),
    jenis_kelamin character varying(255),
    hubungan character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date NOT NULL,
    status character varying(255),
    pendidikan character varying(255),
    pekerjaan character varying(255),
    dusun character varying(255),
    rt character varying(255),
    rw character varying(255),
    desa character varying(255)
);
    DROP TABLE public.penduduk;
       public         heap r       postgres    false            �            1259    16903    potensi_desa    TABLE     �   CREATE TABLE public.potensi_desa (
    id bigint NOT NULL,
    judul character varying(255),
    slug character varying(255),
    content text,
    gambar character varying(255)
);
     DROP TABLE public.potensi_desa;
       public         heap r       postgres    false            �            1259    16908    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255),
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap r       postgres    false            �            1259    16938    surat    TABLE     a  CREATE TABLE public.surat (
    id bigint NOT NULL,
    nik character varying(255),
    no_surat character varying(255),
    no_kk character varying(255),
    nama character varying(255),
    jenis_kelamin character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date NOT NULL,
    status_penduduk character varying(255),
    pekerjaan character varying(255),
    dusun character varying(255),
    rt character varying(255),
    rw character varying(255),
    id_kades bigint NOT NULL,
    nama_ttd character varying(255),
    ttd character varying(255),
    pilihsurat character varying(28),
    permohonan character varying(255),
    no_hp character varying(255),
    status character varying(7),
    is_read integer NOT NULL,
    user_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.surat;
       public         heap r       postgres    false            �            1259    16943    surat__keteranganusaha    TABLE     �  CREATE TABLE public.surat__keteranganusaha (
    id bigint NOT NULL,
    nik character varying(255),
    no_surat character varying(255),
    no_kk character varying(255),
    nama character varying(255),
    jenis_kelamin character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date NOT NULL,
    status_penduduk character varying(255),
    pekerjaan character varying(255),
    dusun character varying(255),
    rt character varying(255),
    rw character varying(255),
    id_kades bigint NOT NULL,
    nama_ttd character varying(255),
    ttd character varying(255),
    bidang_usaha character varying(255),
    pilihsurat character varying(28),
    permohonan character varying(255),
    no_hp character varying(255),
    status character varying(7),
    is_read integer NOT NULL,
    user_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 *   DROP TABLE public.surat__keteranganusaha;
       public         heap r       postgres    false            �            1259    16948    surat_domisili    TABLE     j  CREATE TABLE public.surat_domisili (
    id bigint NOT NULL,
    nik character varying(255),
    no_surat character varying(255),
    no_kk character varying(255),
    nama character varying(255),
    jenis_kelamin character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date NOT NULL,
    status_penduduk character varying(255),
    pekerjaan character varying(255),
    dusun character varying(255),
    rt character varying(255),
    rw character varying(255),
    id_kades bigint NOT NULL,
    nama_ttd character varying(255),
    ttd character varying(255),
    pilihsurat character varying(28),
    permohonan character varying(255),
    no_hp character varying(255),
    status character varying(7),
    is_read integer NOT NULL,
    user_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 "   DROP TABLE public.surat_domisili;
       public         heap r       postgres    false            �            1259    16913    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255),
    email character varying(255),
    level character varying(12),
    email_verified_at timestamp without time zone,
    password character varying(255),
    remember_token character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    birthdate date
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16953    users_surat    TABLE       CREATE TABLE public.users_surat (
    id bigint NOT NULL,
    nik character varying(255),
    password character varying(255),
    remember_token character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.users_surat;
       public         heap r       postgres    false            �            1259    16918    userss    TABLE     �   CREATE TABLE public.userss (
    id bigint NOT NULL,
    name character varying(255),
    email character varying(255),
    password character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.userss;
       public         heap r       postgres    false            ~          0    16923    agenda 
   TABLE DATA           r   COPY public.agenda (id, judul, tanggal, jam, acara, tempat, content, user_id, created_at, updated_at) FROM stdin;
    public               postgres    false    233   �I                 0    16928    agenda_karangtaruna 
   TABLE DATA              COPY public.agenda_karangtaruna (id, judul, tanggal, jam, acara, tempat, content, user_id, created_at, updated_at) FROM stdin;
    public               postgres    false    234   �J       n          0    16849    aparatur_desas 
   TABLE DATA           U   COPY public.aparatur_desas (id, gambar_struktur, created_at, updated_at) FROM stdin;
    public               postgres    false    217   iL       �          0    16933    berita 
   TABLE DATA           c   COPY public.berita (id, judul, slug, content, gambar, user_id, created_at, updated_at) FROM stdin;
    public               postgres    false    235   �L       o          0    16852    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public               postgres    false    218   �W       p          0    16857    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public               postgres    false    219   0X       q          0    16862    email_notifications 
   TABLE DATA           b   COPY public.email_notifications (id, email, subject, message, created_at, updated_at) FROM stdin;
    public               postgres    false    220   MX       r          0    16867    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public               postgres    false    221   jX       s          0    16872    galery 
   TABLE DATA           Q   COPY public.galery (id_galery, nama, gambar, created_at, updated_at) FROM stdin;
    public               postgres    false    222   �X       t          0    16875    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public               postgres    false    223   .Z       u          0    16880    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public               postgres    false    224   KZ       v          0    16885    kepala_desa 
   TABLE DATA           P   COPY public.kepala_desa (id, nama_ttd, ttd, created_at, updated_at) FROM stdin;
    public               postgres    false    225   hZ       w          0    16890 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public               postgres    false    226   �Z       x          0    16893    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public               postgres    false    227   ]       y          0    16898    penduduk 
   TABLE DATA           �   COPY public.penduduk (nik, no_kk, nama_lengkap, jenis_kelamin, hubungan, tempat_lahir, tanggal_lahir, status, pendidikan, pekerjaan, dusun, rt, rw, desa) FROM stdin;
    public               postgres    false    228   !]       z          0    16903    potensi_desa 
   TABLE DATA           H   COPY public.potensi_desa (id, judul, slug, content, gambar) FROM stdin;
    public               postgres    false    229   �q       {          0    16908    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public               postgres    false    230   �-      �          0    16938    surat 
   TABLE DATA              COPY public.surat (id, nik, no_surat, no_kk, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, status_penduduk, pekerjaan, dusun, rt, rw, id_kades, nama_ttd, ttd, pilihsurat, permohonan, no_hp, status, is_read, user_id, created_at, updated_at) FROM stdin;
    public               postgres    false    236   1      �          0    16943    surat__keteranganusaha 
   TABLE DATA             COPY public.surat__keteranganusaha (id, nik, no_surat, no_kk, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, status_penduduk, pekerjaan, dusun, rt, rw, id_kades, nama_ttd, ttd, bidang_usaha, pilihsurat, permohonan, no_hp, status, is_read, user_id, created_at, updated_at) FROM stdin;
    public               postgres    false    237   3      �          0    16948    surat_domisili 
   TABLE DATA           	  COPY public.surat_domisili (id, nik, no_surat, no_kk, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, status_penduduk, pekerjaan, dusun, rt, rw, id_kades, nama_ttd, ttd, pilihsurat, permohonan, no_hp, status, is_read, user_id, created_at, updated_at) FROM stdin;
    public               postgres    false    238   �4      |          0    16913    users 
   TABLE DATA           �   COPY public.users (id, name, email, level, email_verified_at, password, remember_token, created_at, updated_at, birthdate) FROM stdin;
    public               postgres    false    231   7      �          0    16953    users_surat 
   TABLE DATA           `   COPY public.users_surat (id, nik, password, remember_token, created_at, updated_at) FROM stdin;
    public               postgres    false    239   ~;      }          0    16918    userss 
   TABLE DATA           S   COPY public.userss (id, name, email, password, created_at, updated_at) FROM stdin;
    public               postgres    false    232   �;      ~   N  x���Mn�0���)�im�`!�u�M7�Lp;�!�c!n_Q ��l�4��7�aߑF�8�>N�� =<NL�W<�"���??�ץ�a<X.t���0X��э�@:����>y�p�-LrY�ʥ^(�V|u�*��R�&+a@33 h���3�)�폴��' �a��mƭ�&��}����\
�i�T�U<���Re�d!!>����xg$��x@��
8�]�t��c�ݽT��jɳ^+Y���j6v��ަ۴HSD���r���k#�)�4��`�� ���[8#.`���
�J�V0	����xA��y���t����)J>��[�e�h.�z         p  x���Qn�0���S�lI�QUi�؋i����h��g����H�����������j��,2	I�I���dBo6��0�����@�� =:V�	-�jB��[h�w۠��ݿ�ؗ�aY2ɔPI$	Q�:N���c;��\����a�g���s^�I/6�˖��p���`�fqV�|5M}O_�d��D��13�����D_s;���ŝ���J�-i�e�z6��M�.U��t�DF��'���4����;���b�NM�`̯V^���-U��Ƒ��6V�n)����f�ƈH� �Ns�2�=�V�zM��[�Z��Ս���<�x��%�Y��{B�6Oi)�b��'�޿����[b��s����6      n   S   x�-�;� ��= w	�ٳ�<?����k�3���aL���a��h;
��[1�Ct��,V�rTY�ˎ�cIc���+F      �   �
  x���r۸ǯ������dF�%�Q\��������fw�7�"DB$A.A�V��}�>I� )�R���U3�$R�� ��"iH�4��*w�'��Ixz-'T������� ��E-�L֔��"����cEZ��"*3��BBHDT)Q�*�)!;#[�Y��|�LDR�HJ]�j!�EM�q<�	�QM\^+��Y��B������]ےD&+.�'����.�Rd�'�:UZ	(��d��9A���jRl��.��o$wѬ���ݣ�|�?�^�n���˿]��ף_rsp�����M����ngg�;�2�m����a0:�������E������ã�Ѱ��f�IԚ�O	8����v�&TY#�"�����L�,&���Z=Q�RRiljP��e�*� �M�<S�3��'���e���&E�Qi�X��4���/���G��7((��1��r!�bx(>�����IX���|�\���ί��v0I>��֫y�&���JʕŬ�5Mw/e�NH��:�o(�zs�od΅�^��9麨�e*3qFz�����@�r�<������W�F��gG����G�߽&�s���U����\����a����pa��b8�G�����j��d��Q��eZ��H|%�(S������p�^8h�O��â�dk*�)2�*���=����K�}�E����<��9�EN�A4��6%.IVE��ŵI���M�zI�L(s��V��/]�WJO��KQ�]��T����T��Ԥ����Ń�U=o��0���U�eaT�
��e�)�Jn]�g���l�QF&�Q�EVE��m.�\0U���Zr3��MV*�x��6�^M*�S��*�g2��*`3�N�˹M2������;��6a��{T�?�J��eɯ��7�^#�'�0�U���RqҌy�4�1����;;�R+;�m������C���,uWQU�]cZUh���U��uM��5���uݻ������K/����z�Z{9+gMIi<��ȵČ慭גK|���G��TŸv���n�u�s}��w(�.9��Vpa�OG����r�Ou�U��Z��i��Tj:�%�9f�Ձ�߁U��_mQ���q!��5W�(�6�p ���(����d�k��ޱ\�{���k�P+��k�Yq�}^�T{׫JQ�X�U�Gy��<,2��R���������#�G�7������ G�a�;���y_F�y�E��$t>�5�Ŝfv��(�pyYD�!EM�W.dF�U��.��]�Q��m�������?^��k�x�����n�����=�=z4�h��=���-�G��]�A���b�5���nk(�8�n�����8�Жh��U���G>���	}n��y�'\,�녣_��~�9���2%T��H������e��l" �D ^�H��T�q²�>���PZ�tQ4�6Ճ�&���Fsœ."��3J IO���H��;���Hf��2���X�� 
��WYQZ�t�1!딑�Y$��AJO��D=��A�A�R�eI=�`��W:�/�읣� �P1���v�DŘTaCW���j>��7�������W-�@����(��J�a6 ���"utrOK� �gLo�gzvēs�"j���;�_-)�Q�{��k�I	�j���BT*1�1=�&�� �={��F.��Qi�sU8_����+G�o��z�Ul��3���ɤ��⋶�;�
J��)�S��xO��N"r��O�.1�9ә3�e*ĉL�n���Z`��n�{��q�J�?g��,�lY*�9#	!k���;�RIQ�6ck�0�5��҇��t�������i�;xm��t@��т��j�q�rTm��ȟK�d��J����Ȯe��L�d|M��J{������C��n�5�^�%׶�/X��A���;��b�9X�����s�Z�1n�`������P�[��b�s��F����T��eq�b�V����ȔX�A��MѸ_A^�[�����M(Z_�E�9>���a+#�wO��=D{���!�ц���AW�l��Cɔ2�+�fi�wy-�K����~��5�f7�A��*5)��!�$.!`Ɂ�1�����Rp$s���Ԩh��ۄ�3 y%�l���&0Z0Y�&��k��̊����r�q)}l�c��j���=V���3>�V�F}-@v��>/��`���*�w-��\]^u1+bUH��'�+R����ߘm��O��i�X�D��j�{��xD������a�7�K���z6�#�W7^���n�׭K/V�Uj�3��6�K��������pC�������lJJ���PvZR�w���_=�{f����3�g���X�aeP�7!�����T��)-�o�ۼ<^G��ZätTh� �`�Cs���SXŜ���K�8Rc��Dh���v���������[����ջ*|��2�	��y\��hy�y�S������{c�^�v��`8���h4><X�틽�1���G[�R˜�.�ni�'�n�{V�E�r�%���	+�!�٥�*�0�� L. ��4�
Ү� _* PM'��'< s�Jcs~�LT��z�f䤖��*`��E�Lռ��!�5y	�n��ઊT�y l���k ��}�34�$�կ�|[�S��E��?w�$̸_�2B����|�5��V�O
_2��\������s�T������[������~xw����ϖ|����Yyv������wi�c�㧇/?]���J�K���y0���t}>�;ڔ��������o�      o   E   x��,JI�sH�M���K�ϭ142�3 BC�L+CkNCsS#Sc3#�L\*�J2sS�@��Q4��qqq /*      p      x������ � �      q      x������ � �      r      x������ � �      s   �  x�m�˒�@��5�����e��-�R�he�C#� rѧ��$Cw�������
�J8�)(�1v��Dw%��oN��s-
�պ��6���u���R�1�@6��J
���!<A�gcT�0��� �y��Ep��[���"��=~����윝�HD��
�X��\�A0Dg�0:z΢k��o��m���lyk�84���e�0�`�ea���$!��@H$��Hj�о�d�:��F��:�TS%��kQ�8ր,�IR�1��j�"]h���Q������uF�c�jj`Zo!w�V~1��X
u=��|����{'�v�gUQvt�L7�]����d|�����Gt���M��``1��1�����Y�\F��ɺ,��������^w����_�4���) �a���      t      x������ � �      u      x������ � �      v   m   x�3�rt�s�Q Ҝ鉹I�E�U%F�����N��Ea~Na��n���n�N�9��^Q�zy�FF&�����
�&V@d34T0���Zr��qqq R�      w     x�m���� �3�aP��M�l�j��x�G�@������|�(���k���C�~}���S��Q �3x�{,��R�Η��$I{i<J��.�_iY��.]|�*0U��F;j� <�X�ϊ�*�R��ˡ�ĥO%h+�z$C}Ʃ[�uȰ{���TJ�0W0�^Z�`I�Ƌ��PV9�n	Ϭ���²NEh �
��DhJWna�*c�@z�9����;��PU������I�V�hkJ]�5�8���0��x������!���&�p�>J����QF�O�@l�\�"�x$����yENE����@�
�x:�xMN7>B?�iN���R?O%S���X^[~
]�/���ݾ]�q}LP6�ny��V�<��ѿ��� eߜ'�ע�����[��0�Ld�&����a�-�>#�q�t؄��E%�������y�H��,P�#U
�>Jڪ!i>5Czd���G������U@��f?�������F�<�v;_��vn΍�+�>�g��߿ ��|��      x      x������ � �      y      x��\�r�8}�|?`�@ a��hQ���x�Jծv�J�I<)gRS���P"$��(&3��S�ݧO�PAIF�ʈ¼��8 �ې�x[U��zY�M�����^��ϷoY�i~�r�J�zC"o����իv�v�eV)o�����_|��W��O�v�����z���v���}ڽ��!c�
<4��7(Ad(D��J����U�,���������|��s��%� 7��0��������b���{����礉	�WTAG�$_/�e]��Wu��GPR���TZ�*�h&���+Q��~#&� T��BݬT���y��䆄74��������ǟg� �x,�]9ާ�����l]$���7uU�J<���rPh"n��n�~󏤘y�篻����	q @�t��:��Rm3���"�+� 
@�% ��b!�S�1".�6�����o�J���;�<��a��q������UF���ώ�ʵ�A8��!��+�)xo�޳06������V����!LL(&�#4S#c�ԠH�R9�o��7�m4�6����hi(����V�ႌ�*U�ӥ�Hg
��o~���|<+��a�n(�����@����=�J��8f��85��2�R��Nŀ�2 Z��]W��0i]��/ɨV��k��l�Gl�ݻ�<��^?�gd���e m�����Mt�t�q_�\i��C�u���3�l�X(���W�Bb��>�=���u�,��?��>{���o�������HN�8>��Pz�[r�Hg�~#�FV�������EI[AR��Rm*U�7�H�P����ח�'�R)��6�V�WS�oS�-P���M�@.����x�K�2��;���\�A<6�o�_�����-NŏON-����R���>)�g.�	�N���������dH��1�j�P�c���W�aH"B��X&�Ѿ.�!I����)���!�D1by�@���H3�t���W���տ��Jo��*SN���n�E�'�$�왺�T��5L����`��V-\�B@��2_	d���f�,���.����z����}� ���i�Rt4���c��c:K�*��N�4N�S�#�&S2��Z����p�s&�F��^ �pzt���6��NCT4���N�Wi�[�˺<h���1ܝ�qs�A"Tщ%F�fqRE��G�TD86\)�w��Y=���
!4��q�
D���Q����j��0\Dn�F��_�|�}���D�š�� ��)H 6�c5Ic�����,�d ��w��@��Yyj���������Tq<���5�K��y����X(��kR���?9�_H^W�;S: �̲4��Z�����u��ke����:�E��i�@1C�q]qj!��_��5�<Ͱ�n���a��x�9u�G��l2ǋ"��4��'��(F�bPrj�CW1@v����
��@��er_/�����lw��d\�t��@��y���-/�����P�Ǟ���x2B�@b�N�S=�U���9'�v�Ν\�%	��h_J
��� �Hh��WX�$����`��~��'��v��D[��������2h��x��r�����,8��F��᱗䳵�\2�\@�+��jd�- j�&/ҵ_�O� �㨃� �p	�v���1��z���xI��D5d�p�$. C���i�bv.��Z�R�X@1<�}��]�/R�[��n�J�� 4�n�{44A�eL���$&���ӐQmR�I/Y��c�fM�� B̥CI=�J������d��̫!L�;����~&�j�ݷ��/�������S�V�R�G5cJu��2g7�.�ԝژf���R "sw3p�ҿw҈��A�a=��<P�]�A�m:��8o���^xӊtȱ����"NG�e����]�g��,��e�y��t� �P�u�넳��C�vK�JF_�Z�j��)��U�����L�)�� ���U6�2�PH5�P���M٭g����8=
-��e,�#�G\�.B�02�BǨ�LY5��O��ݪf�h>?P�o�5ܫ� �Py]�+�A#�T	�=kWE�2Uz�uj @�d�f�6�K!.t��4�@�wC�ԟ�	��?;�8��(�k�X���b[�R�KX��z�L� ���h	dE�b��$�b�V���P����nս*�;;���#x3gs�G��ek?��ҏԐpe���� ]�gD�$]1eSZV���l��Re80���*�'�$��0�"�H�\�����Ӌ9�������Sް�WD,�I$��.C�035�J�07Х4���,i�zJ@��q�~	� Am�h��U+���J-gC	G���1wvY5 $���ہ<�a�&Q��J�`G�iN��P���M�-�^�y:{B΋	Ы�B-:�W��2����a,&��v?h�M�a��/��v�<!u�9����C�B�V!ރ�i*s�����%,�IP�\-�Y$A�9������9J%��U9�'��UZ.�b��sUn�]3�0�H��c���@^��NQ��2eˑL;�/,�hk����O�m�1@+K�e����^p��b��2���.��_O�n�1,�۽��N�BX���x�G� S�}���a<�d:�d�l�E� �c-�Gx-�����3m�������߼�~��/_?_<6l�af:�K�p��L�5��M)�3E4�p�]Ok�k�B�L q	�Z�X$	��PV�\���_R.ՇW���i�.��eA� 3ıԽ}R�B���C��� ˟��J�Z��: �n�OwC)t�=�2��.��q��ndp�0�����2l�3��+S���:�A��F4a�5�����a$(�d�7�{3#��?^~���Nޅ!�Ҕ6;�
''ܪ�R��WE���X~�����@��l��gn�a���VA.BGMM'��ʭ��/PFL�xj�U]��f�BI_,��3�w�0��z�$f�^6���t��O�a2�8 �T߮��24�0�e]�X����G��9���
��X�����kF�C��8F����5I;>�J:@'Y2V1� �I!u�}<*P���,�8~�7pH��
����Њ���fjh����c��4�SW� �Ӣ��"�ʓ�׊��(��~�\������ ���{ӳ��Ӣ��	;�J�>8V��j
�k᫏B
3�<�|jJT���a�$��D�Z�✫}�l��K���G��Ɂ�R��Q�e��y�����I����+ikY�y��}DZ�F�F�	�0=+V���d�t7����j�ce��w ��S)cϖ�hкm"-�S�����w8%L�np(��?���NGa���{Hh�)o�|{)z���;�3���Hy d3��<P~����8y���q�\ؿ��,MJ�;����ج-�l>r���K�����i�|�A� ����㜚��ّ�F�&ݤ���i"�w�0.m!$;Z5i�_VWs\\P�t����!�`j&���p���p�,�v��n"<.�
��f�g�$W~Tl��ʊK���yQ�t��#Z~P$�Xd2�l��}R\���	�� ��Q��֪:_J��Խ�1�~"��ݪpt��Iҹ�MҿF����(%6�
�IwCu�ɍ��{Qv�d* �L�XX��-wZ�Nrή]b��m[XQ.�j����d�Vj�u���j]� �%{F@�S�#�O�< ��u?�4�(s�5��2k�@g�z�1�&\�;燚�#��TϢ�n��)�)����ܴ-�4]A�j��������4�NH����w]�Õ����o���9�ъ�z��W�J�u�/a�AZL�,�|���u�M#u՝�I#9�Hi����RY8�Lݦ ��r�����"�{� �%\�����)�*��n3Dow�H�s�V!rL$,��\b�b���,�o밇�o{�����wZ������!�'�5�Ԏt�䮖%�7Ӭz3�x>d}�^� a  &Z�6Ԟq��i^aC;:W��/?��<���C�\�z��b����Xz�]ЙT!��;HUĽz�Pq��;G���2ۣ�-��ΰ!�<����)L�C6���b,B�T�@ϜL��%���|� @!��g�|쫂�+���!&,r���C�@o?����'�k.�&]���^���r
S&+�'D��1�+��/uyڵʋ]�ޢ��P
�1�S'G�-ׯ��:܈�m��y^״�H(9f�m{��ȁd���Ў���x����)9Jz��d��S�<)!��-�Cq��TW�)�.��iмF�(�l�r\�]䜧OqsM�@=�ܹ)����\"�����2��	�ǖeϐ����'��Y��O�ՁY�@/��V�S�Է���^���L�n9�Ń���é�^<���;&6�˨�
ݣ^�y��iҞ�*n(����݋�?z~{�˗�/_�IT�[)Y�4��L�o�=�X���WY��X!4j:)�]�(ҕ������)J�a����B��� pd(�*��Z�rL�A�#1��V���CYb��Qb�F��_b��,!1D<�&�����wm��iφ�e�䧡Us>c��M;|��g��0����@��vTH���K���#�
h�c����U�I���;d_�) :���Cb��2��F�Y�݂���<��k_�.-�۵�#ѳ�p�-�����̑�>�$W���Ƶ��R*K���2���_8hL#A*"�fU�tA�X#ǀ������[T���R�Փ�!���;�����]�e���+�����~'O�`���ODyzƇ]Kʗ�
���NfJJ?K���z��sÞ)��
��b?�u"	���,������D���  ���׉ Xd�S�L�'�V%q���`�K�Ǵ�Y�<g}�'�ҫov����Z���{��"��c������C�s��b��hjW��"�c�W������[E�|Z�]㗆ou֙F�"��2s)�0f�`~f��GYo���LUɾ3Ď�q�&�t䊭D��}�����Ƹ�>�h����y������Us�t������ )�`�(�saG�ר�)u� l�;V��~����d�      z      x���ǲ�L����H��lPU�j��� � ��Zk��o��[u�,f6�f<<�@�����K����1n����|���Q�!��x�oӿ�{���������?��!Y������韑�k�?Y��C��Y��}]�Y�.�ޟ��g�ߧ?S�l�P�ß;�?�2f{�����?g���{y=���ǉ���.Z�d�~�S�]���`���}��߇����=��˿���C��y��k�3���O�_��V�{��K�g��d��d�?���n�㏑������H�k�?#������������B��Z�����x�߳o@�x�{~��i�����M�_K��N�ܻ��;�{<������{������\��g��W���G<�����x7�?��В���G���������f�����kN`���1�i��d�˘_&g��"'�1��a�s�߿�,y�4��Qd���1�{r�?�q���L���U�����T��\�c�@`CW`�k�_c��X���Ӿ�.g��������'�X�ߘ蝚�c����eA�d��$c����Z����9M�-������n�{�������~�f�� O3�;.cZ���T�+|a�bo��9�m�����iy6T0��HwY�2_��`��T��l��愨ε�	Y��f?۝��|�"���ȏ�X����lȰ<����B��R=�N'�~��Q?��$��D�Ӽ�Ϧ��F���*ܥ�E5ҽ)�>L7��58�#�/u]$(`Ŀ������W|������|����^ıL�����ϵ����ߋ�$�5�*��Z�?�+[c"�[}܃��A�>U�j����bԿ���E����V�Zn$��Nva��,��������-^ʂ�Ŏ(G�[��X�z��t��⠗�x��v��a��y]thKbtWz�\��&�2�.�%�1�-�'���#>��p��2��z��'��VvIE	�t�[���"�C������06,~�'�������Zz/L��6]Sʵ��öd͏����c�>��|�1�d��Q��#íô�d?��=�ڸ9�k��]�Ö圛�c�gThA��ާx��*��=)�f�~�D�S�'�!h����K�c��<�d?[�q�@E�S�a�J�IK��͵�f��͂�E��!I ��D�xʽZBFux �/�X�PnTۧ���a?@F�\X&2Ƴ%��_�˾:У̩U�Z+�[�e9�p��۱g~��'�`��O�K�v�呰�Ԧ�7TY]��lY�����W��%=s�Krǉ��C��DҴ|�-Ua=�6HS����eR��T��Eȑ*k���
��RE C��
�&k���I#l*��Wl��O������q���;��˙�?�ԣ�礦~�������O�M��urO*�#@g!zi,��C���*�{.��Z�¨R�#K���� E�X#i���>C�w�_�bR'����%��`ѹD�w�dڡ�G��$��f`~ZRԉI&N�l�����[2�VK(CY���(���t��z� $� ~��_��C����X���G�h~�}�?4A����R�	8��>�8�W"���(�7�,�d�<,JtG	�K����Ԟ�Hi�}��~����,�*��BMn$��N���R�H�0v]J������`Y,�BS�������ߜ�h��|����I)�~�����䔗���µoT���މ?���'�� O�}����/]�Ug�7�ub8��7�0��{��%PRdE��]6�P'��`# .�Ms�9d�D;��r� G��ʶY�X�?o��r.����!!��?�W�~�ߙŶ�J+�Uk
���]�G��<�1���r�
�b���������$6_}οdٞ�$�[�2�ױ�,�`ZU�Xi^H��Q�����zڑy����-S����2�:�G�JF
l�Ay�w~�ݦ��I��R���۷�V�a��Xw�c�K=��fY�[�VŽ�-չ����8̦�j9�]Zn�y���hy�đ�V2�O0d��"�gǱQ+u<ځxv�(B���w�
����32�P_�S�Cx���l:�W?.��OL-d�A`� �_��b�$c��l�>���ID���� ԀrTb�~�Ŵm�'eGR����!º��vy#�P��j֖��'����H�L������b��^�ľJ��)���IB����G5�Vԭ�{piy�5�/Z;��CT$����Q�x�x~�?�W���!�$�����4���7iƑ(��T�[�D��"����YF�M�<��=2w�	3� ���ڨ(D��V>&�s�f��Ndj��0)Y|�<��IlúǈX�Z��=�!�s��HK�^'#��4�l#Te쪍>�@�#:XI�D1f��(�}�_���sE.if�q�A3v�΅��u=G�նZ��o�+n&i�U8���M���}���ی��f�����WDi ��6�:��A�� �b;ȴ�f��i��_��.��7���1'�a uT�S एE����/M@� `鳅8V��u2uMd�oJ9b��l�\�� ��T�l5�����*�2�'��E�a��H��o2�ɛy��N��2�.(r��(��z|ex�ۡ��T7�P��ge��^k�GVK"ѥ��i�����4T���d��l������A׃Um�<Ԙ3���+�Rn �3!Eg���&&���f�y��|<4ĵ���X�Þ��=����طL�!鸓�[������Yn_�.������:qX����
e&�A�QF����H��泊��c�g���.8���\1�{e���Q�[�5x�N�8�˾v��±��������M���k\�۸�|)�k��\��0�vVw�2�>�fCːR�t(8["�K�ٸ�S(��ۻ\!k�Rr�e�r_P\���5�6)���K��)��\d!0����e������hrq��ܞ)�C�.���@��b�&�i$��Ю� �'`�\0mߢCj)�߫ 	ȏBZ� �àp �Tއ��VA�_N�w�jI��){k�>a��<�U|2ౕ�`x�$��i����e���d��g,{�B������-DT��$��ۄ��m��\5Gۆ�h��k���]���-�I��i��ѩ0���}R�{�)�=�73�BM}����[�U���ǆQ�1�����1..i����ڲ�A<����~�޺Z����W�w���D71os�Ǹg�ծFI�I�L/O���(��{��|[
KJ6����=
Z�s̖툔����r@��RT_̗]��HE����`O�r
�E�Q�o'��2߅�;-��	���l�v&��{^l��	8���tm;T�l�N�7 �4������g*}�W��/m`<T ��O�Cä,�%N,0ˊ��s�3y�\ձ2]�����Ht��5���ܶ�-:����e�Q�e�I/Ib㾃TL��/M����+� ��UF�L�Rp2p�����Iǯ����K�M���kx�{��z�;h�9�мc<-E�ɕ���e���F��?w8F�m�<��Dl#�>�_�`rza�B�ì�����"Y��ϋ��W�,�(�֏����^%��b�=B���߸�ޒ�x+C,'E���W�
�*��/���W�gEǩj}��D%�H/|�Ш('+�,"<�Y��_40 G�M�*��kvk�}P&��"7��jWY��ߔa¥?�`ܖ�(�i��o��t�'���GvtOS�D;�$�s>��S�m��U����5.�&x��{YIJ�*� �Vy�k9i!�|1Uω�=� dV�NLO�/KBp֕XW��pa�k�[���z|�)��/���Y�J�\I�]�l�H����p��;
s�ln�&i�@O:�A�	&�?'�����|i\�a58��E�嚕;�6���M	�7�	�&�x�r�g�Z��A.WlMZ_1Ό��l�[�ۂ%�j���T�m?ʷ�
�p� �v����s�vd�bÂ���3��QfTF<���K��4���E&e�β-�|�D@�z}�[픐'J�Y�c��W��4yx���C��f���    ��t0�&��d;�n� ������#]�Hb��C�=���܋l/��b�Q0k�S��lB.�5[�{8'@\�1����}�xV¯�xc`1r�'�C����o�2�iY�!�"ڌ���*��sꙆ l�BR��5=�{Wf�K���e��F�*Fg1��n*z�DMHWI4���3��1�&*���b��@)��8���H� �]�jZ#۸�Z�2��QKK㸱[(®��|���_��i͡O>��w���S�A�q�现ǥ���\�pdAf?e�e�rWx��v�n�����B�k��-�7�T�J�V�=h���9�7�P�g���%����G_��~�+m�w#錒��Ǵ��d��i���!=���l4��Zq'�m�B�6#�i+�v�W��_X]�+ݚZ�6��wxF���t��O��1W�<����2��~��z��hwL?�����SQ`y�%���}%dZ�Q��|'i�7ͥ$TV�d�����0��Ʒ�1OuB*��(䆺9��^&rՏ5�� 19���k����gKP���"�/Jz��u��0����(E )b��� �*0�@x�H!���$j��I�xd�Fz3BO2U_�6^����%�9v�4�޵��s��i�DK��j��W�x�Ϛ��
��P����_p�wY�/�[*����Z�{_%"��Y�H)&
~�<?]P��<�'����q�0��XϬd��fXw ��{��AJQ`|�qXmX6��g���Ug�k�1=��E�E�*izޤR ]�/f�L�+��K�?�c�g��o;߰���{����.�C�q:�4������ʦ7H+�)���?�`6��ǡ�M2QH�����m��ԏ���D6��V�UD��*TR���]W���?�1B�~t;\��#o�~���qp;�?����6�� /ׂ�K*�d�����hKP�l8�c��v�J/���MZ�������n`�?��z����)�6d؅�͌�2cB�	�.? ����hm�گ��"�,a�EOͣ��u���?E�I�����f�qI��B��Y<P�(s��HZo�)b�ZTC��oS��-�,J ��?��r)/���E�&çi1�u�:���$�2�ݎF� �$���ܓ�P��Nۿ�P�����=ͼZ�`L��'m�qΔ/���L5�Y�HL��9M��i3<|�j�0P�&j���$D��B��L^�����E�� ��38�MQzC����)��:R�?fd�d�5�6̷ÝL��D���x�K��O�D4=z�p���:ܮT�ڋ��3�/�QU� ��!��N����Te�c�O-T��.#5��^Be	QS\�-����޾w���u�+��n��j�`խ�M	ʑ*�V	G�A<�d4��jaӪ1����+t���;A\�!*���c���hOyo>����#���)4EˋAVUm�[6(����7P�H���L�>�F�N|s���Ƈ��V؁±���=b{��F �zK�.	`J�s>�*���~ �I hF&) T��O�<�A��m��'=�6m�5Z�#S&�.ɼZL�<ŨP�K��oDX�^�CB	+��.�2>ƥ�	�-I2�4:S���̲>�V'`��33(��zϲ������/����u���!��aq� 
x����O����x-S4��� �	� U4oϺ�<�&j��@��ЈMF-)?>���X� ރcN��H��	d��5å�ľ��^��m�>�)�:�)嗀��ǖƏp_#B�l��_,���5d?�i�nd�5{J)�T2�A�jhl[��Z�Mn����PW�^�!�n?�Y�r^d��K�H��\�}
V�W
IZ�(�L���%�~��|��i�U�Q��Ɲ���=X���J^-���u��i��Vj(�Љ	~�����D�����h��Q�࿬j3֒�N�MO}��)R�����V�sɖ������78El���A����l~4���W��Ǧ���ݷ���1���;�q( ���1�W\~��P�C,���ZF��)��ڷ�[����[�翣�Ƹ�0���DZ�g��'@&J/�XI.�lY�&�4?�W��g�Ļ�$���!����8���T{S1��O�� oT@q��{v:�K`���1��E�g?����������,a��eحEp[x��y#M �E���ږ�lMe��@�U��<[y�k�G�'9���V���k�|�^��6e�+>�k�>f�5lŨ��\��2/�mN�T��6b� ϒ�7 dQ�`����fs���fI�||+*�5漈�[����S�Y����~���*���$�r'�{t{��<�,ػ��3
���I�AM�@���9#yZ�U��/���?�*��6K �}E����ukf�j�̇0Z���0�C@Iɸ�s�8/D���o����c�[)�n>M�6���G�3A���������
��@{T�"��`F:���y����0^�#��xI��E��Z&m�[�������%�����ts���f�ĥm\�?>�_�
P��`�q$c]�%�Z��^�ӊ5�g���r�u�λ9��o��qc�Q"F�2�ûUf#�|@B��0_z��D���]�R��5�G�pn�[Ƽh{�CB|�D����M��P�b�آ��3�y5;�(�r>��ofn
E��F &�GLj\|�*��ɻ�?��rU���M�G�6�ӡ���5����ׄ?���`�v�ݍ��B$�<C(����d��ȶe��j[vo9bg!�!(=�oa�T���#��E0Ъ7�������t����5N�(R�8��*��ҭv,<�l���QP��D�1��x������yRO�5��~�^!��J�YҎ�����ӠCϏ~�2�)%^�;�4�a3����t,�"�=���eN�҄'5��Zhƨ8 �&��B�����C�o������~�C0y���=r7�T������B��+x�B�W��� ��6���)]��"�"����I��K�������s��O��*��3���1,��3�i/����Kg��?�}��
�Kj�Lڈr?C+T}�?tU��t���I��{�� {}>y�l�������}�[�P���sW�I���>�vݢ����1�A�KMy�Ut�mwל=8ibc9�/���� "��)w��(�M�M��8VB>���xM����?�k|�/���5OV��N��,^��%޷}1?��(ozW��?v�i���$�/�w����ge��f})����fT��U�%�њ;�Eh��H�#9WS����{|�n�\���0�S���ؿ����$��}�*^ɗ��fQa:ۣ�:?!�L�{�p
�(Q��`_��X(��n���/���u	�Q�M��������' wT�	܃姃#�j ��<q����U��f���LE�U"�o_1�
$98�t�מ��W,E˾{U�5��i3��n`gHP3�k�Ll�J�Lr>�87s�Yy�-C	����7(ut!�����(��_be�K���0�s��3S�5q<G����aѻn~�f��BGҊ<���D<�dR��D~A�x{�$��bC�Tun~�3?��:�������*�s.������`�%Xi8�����P�0�" ZZyӢ{eS����ԈC��(����5����,n����[nY`f;��Z7�:�����Bz���u*�S7�g�\�ow1��f���_�Qr��{8~#��E�T�������h2 N��Le�Kd1sV�Ι�C滫B��w�Qx=�oX;�rñ�����TV)z��	_�w���p\9㏶Ag'Ip�{�r�P!�k,-_�x6\�ݔ7���)x�&��ecY�d�q��MT�U�����p��'��	*l�l[�R��`5�@��Lg��C����e(���t��5*��G��w��.�oJ�#���7R� 8����@!q`�1�����t�G&��ʜ�c����2��y��%V���"��Y�[B�`�w<R�8|�g;�N_��q���    Z產ܱ�q|jE.����mW�b`�� _&���SQ��R5�����O�88���w�e��Y�U{H���?EӍ��%�<\*,�q ���g�h��<��@���������Qj˞N҈-���d�=/VW�:�<9����^�d|bR(䑋�}����<���_R+�y��Ќ�(R_�}� ?��;��\܂ ��5�`���j����)��~�Z���3��� H߭�:�3�Μ�����	��rp�����<����~Q����}@�|(�l�h���{j��S� �]���u}�_gr� FKb"��ra8�Agx Ao�p���Ռ�<DH�9-�=�f O�n�\��\�O�s1�RF�&�s�͞�#�^�&FQ5��P��ě����4�����Нrzs�M�mNP~�~Ý(�]�_`?�落��o���Z9e%�F�Z�B��G�M�z��$�Դ��Վ�nPC5���p�����nP� &���!<�ؼbS�ʾ������)��8�
��)�r2�8�.x�K�˹ws��%���)H�\WAy^��U�9��q�oȀ?�U���x���Cn�cR��2C̊{���p{�P|Dzs,PX�w����H�C�x�$㸂��cQ�?Z@�D�eHS��q߬"<|��:y[7p�kv}�]��ޅ-��8�c�_˺<%�o3&=y��2 �E*n��F!�:�
�F�w�˟&�����'��[2�A�-1�C���:�ː��&6�4f �
��3P)�!����+������A�M_��î�?a�P�^�w�����֚H�@X��>'���*�bk�k�Xg�3yAM�U�ȇ�2��%��ZD�aW���k(�mA��-�{3�R��d_:�א���zw��1h/�|�m��,`�a	�b�����(��W�)Fpt[(<ɩ<r��&g3wX�_��m'��*WI���zw���H֒��y�.� <A^:��^�CC��ߖW�/wsT6�P/ iеG���ɠ#���߯�)�h�ml���E�Q7��{Rq=��F1P�2�f����%Ax�ނ5��W	�w3i�S�ֈ���{����I��R��Ó�I�/��m��n'�/���v=�#���8�۩�$�d����_�U��H����zYX6@��-~坩�;._;�Q��x|Ɍ^�(�_��7��xSt(�Y�r#/����3�%��n����-W
5s�xj[?֛\^z�g���5�ფ�S����HctT�l[H�+��P�N���b�����0����S��r��n)/v�R9Z��-����1�� �����EH�^�$�c=d�>ɭy�R������.�Q[(Z5f8�og����~C�չ���v��̰��3����
*|�;z�o�\r��#��fɺiXݯ����MZ�Cɕű���\�_�X�r�x�`E���cjk���g:�ŕ��(�$�|���I#�Yn[�Bnz|��-1Y}��Aj�����F+ˀ�xo|h^"��-�;Ȧ�v��}�|�6��~0��T!ƛ2]?��Gdkkd`���	�dJ�F�K�o��lK�����K��Rߌ��k��JĪ�V�FAZ�SԎ�vsr/�bѲ�f�ػ��9�UP����Q+��#F�`�uN�?r���V!Lv�~'?{H��o��?!�R�,s����6�n�;���C�v#PM "-R	�w�.�_7S���d�ݬ���C�NhD�ۏ,��X�-Y��FO�+5,��18���D���t)e��
 a Ӣ��g���m�L��i���[�9��[ $Vo�f�8N9�����.���y��j޿��ƶ���28xͣl�+Ь�c�k�]3�����E���{]m���eq��?2�g�'����UD��VR��$׃��Đ~��3�=3��юN7}Hf���,�[B	��ﱬZ�y��}�����GB�*��2�6>쮤� � >(V�\)�R	�޻զ�V���&M������ل��B�5ޒ��_
��x�!-���7��Ź�B������� ���ax>�+�)k2��E,2���f�I�0T��I��ot�'(ņ��v8�4�y��|���j�FH����ئ,�؎�H��a��Ift[�
���&��-���<�$�ܦ������:���cs���4bD-�B��@ß�Gb�]� K�Ll�3*�E�����[ΞHn�c�iʏ%J/��g���$$^֧ช�}�٤�"�Ž5���? �����v�}c��{%{w���*A��md�����f��PE�n���<eJLNq�|#c˶&��У��e28�FSԑR�B��$�5�2��76�5����VTm�G�/�����$���B��҂��C�F-Q�W�0g��ѩя��嫨a���ꉣ���M�(_D���%�c	*�X�C��,o�>5,�˗z�۳DC6��'����c�����dmT�O�k�ʸ�*�;~���r� ysH�=�y�s�ZI�5Gga!����-��Q��iLz�={��F�Xb�vL 1V�R�@0�|�ˣS�T�B22� PW����Y���&�ֳ�D� �B����z����{�!v�A>�}���F���eA}~Z^�k�X@+�7P ��M�f)e̢%�U��(?�th���r)��F�|~Ն�T��m���O�	��d���!�u�G|x����&�����UÏ�@Djo�h���dxƧ��@�x���w�EN�c��P,������J��(52�~�p�+H,`{4��Lp�o�����Y~���8�l/�ԣu��x�Q�@k��� ���������!υ	f�b�x'��K�"�� ɕ�������[��c�{.�n����GTD;�3�r����#ů^�� DLˀhT�7ݚ�M�0ɾ� }����?�|Ñ%�c
��c�a�J��d�������fo��H�<�0Z5��d�許u}+z�
���ga=�h�>Li�"{~N⠝�B�ގI��-�$�B����gқ��Ȣ�?D��>����UɈ�����=����Gs�.`��Υm��ɥ��5�<ȳt�';���N����b�w��r�����6I�׌D�� �P�Ü��������Z\c���fx����y>�K�ö̺�IUmq�&������IΏ�~.i��09%���;m�\���gk��t��oy�:H
�:�R���5-3����f�|qV,��&�[eK �	Yw	#�������,�7�/t���'y�����^h����ق�^_|����_��cHl���m�륳�����aЬ�5!���H>���C�*�����FJ:�,��<�e�aHo�7�bf����s���XB"��5�r&38�j��:�� i m�>%���
�r��ҩGx\���^����"��v�2��w���Rw��J/��Ն0↳?ᰟ�~ށႹ_T�����$ޱ��i'��3�-tm
�_��T�2N��=��BnA�inS�<\��JV�@*�(IQ{�@��ˈ��9���K�������{�~@W��p�1Z�S)3���}\.�r~)N�~N�#m����\�E10}�(���18�ײCv�Bn��2Mc�G	.4��O���d�A��l\O�ze��f(V�8�'��5pb�2ۛ܄DOG�=ë�\���1������=�<8��Zn%�c60��2����:%i�c�z螘��4-@m��Oo�q��Y�y�F�������e3���j�W��GR��>y1���Z�$G�k��֠�q���2?��ȳ�3g�,Au�.���&NF�a�qLf@~��
BOzj�1��M	���P���q\��2�g�k&��*�	x��y}�G9u��<����!�è��z�)3j�I��h�آb�aO����^An_�U�d�k뭌���Ik�����ƀb��,��~ۙI���$��prf||���('��/�Xu&O@u���-.�:%V���OZd-�l�v%G��Z)&��T��L�\Y���    ?��(�8���"@�);��h����(F�pin���Vm_��B��A��d��g|�k�U+OpaW�jf��5?/w5��R,�u�'�AY�����K�~��ԘuU"���2���8���������+�J�9���'z'����ع������Ϻ>VY�M�:�y�9� ��'>)3W7�b*4	�2��Sl-��CKm�\$�L��������ElO����2'~��'����'����ިr�d�=�Mʬt�l��F�����&|��m���&ܴ��ߞ�O�J����[�7��ߔ3.�PT|�;�⚛����A|\ϵ�����l�&{���؛�yD Qj p�|�h�f;"�������)	���w�\����tH�bG]4'Wv�g����x9�	����7t�1x��7*<�s@�i�Ȝ�0�X>�I+[�J>����OT�J2Ŀ�ؓ�5�2`7e��	�Q|���MS7��vp=�HRST�{y	iq�zT�%�����q�$+��3�ʢ�Z��qF�r>�V��t�Sv��\>/���u`�;Ay����'y�(V
J�����O�<g+�����o��!6Շ��6�}���uǂ����\�q���Ȅ�&U��ھ��?�m��ߒ�}�ǘxS7KbgRW�$���ט2{ǀJ�Tk܋��Q���wy�Q�ph�w|32Dn�
̚�,�Vjˋ�]U�Ia�&��	�
� y�H2H_�Dr&W�'�s4���������Q	_XR�^���)�I���}����?kێ$�$�v@O�W&�@L`~�!��K�<lM'ģ/h:����6l8��n�J��܂~�ri�֍/�bt�+�PE\`"���qbv$��[~n���'I��E�b@NC!rf�3_�h�Y�^^��ܽ�h��5��ͤ��)ƚ�gy�˱�\Vo�"��g�����~��hK�1� �����w^ض�dV4�/ܱk�^���o���^��j'�8��� ������/0����UTZ�0�A�en{�+�z%�
�/��A��� ��ν'��1$S#����@6]�m����P��o�2+c!��p����۩�~���L0?}����&��PO q�C+6'��}��J��)��>�h��o��I�o�L�j1z4 �Ix��j��D��I����u��t#^FӮV�ȡ/�F�z8��C/r��C���r���+:\����Y.�?�pЮ��D~�؄��o��"ٖ=�Gĥ�i�#���Y�ً�}N͖lSC��� k.�SͫZ2,9\5�WyP�.[[\f$_�S\o~� ����s�@��/�ohM�J�U+h؝M���-�4F�s�;%����٤�(H&�$���Q,	c��cϬ������ �7��l.tj(��+���"���/�U���k���^b��1�����'#EC`t�?����z��/cV5s�?��4�Ƶ��xt��;����g˴v�󠱧D,8*�Z�l� ���R�+���R�Z���g4^Ti89���t�_[��y�
���5��H����l�"ʔ�G����3ǽ-������CL�;q���*t�6I�k1�J�>�0����d�G�K��A�����yݣ�ʹ�h���|���8$z�KA6֦4 l�k����;�m^a�A���$W4����KDAnn�M�*f3�~\=�b4e��7��	�e}��{�ڿ����l ��� ��Yxt7�}*��*��lv�vZ!������gl��Xο���}�_�(�����쩛�4p'��!~� IM.;��J�B���Y�؉��J�ڤ�����j[j�3u�*���e4���;!\�sOt��ӿ	5|��R{�S��	�����z�E�7W���+�T��
+y������qM/8o�ᶊ�gs8<���9�M,������CҬ	/%M9���Q�}�idȋ�L����|��hw��]KuEq���'<s�3�c)g"�
����y}l���T�Ȱ3z`�P6���>e[�f��V96��9��-�1z-��GC:t>�f���M�����#<�if�h��=��'Q ��~]�f�����s�B�h]��L��a(R���U�|1^��o��Џ#�m)�i��)}7���d͡)x~I�g�r��$�K�۸T�Z��Փ�4T��۫Cl/�j]�{�8�ZXL����9�,I`�0�Gи;��m�#�˛s�;$�.@_<�P�?K��.:H��������bo�&v�;C�;����˺)�tq{�/V�ɡ��`I���{Rb͝ "��T�A"��-�33*���?}��"�%誶����
�~�x�\�p?�>���,
lb�ɷ�h`\�35 �o;�ld}�����H�gA���=�R:DY�_�+����_�ɛ��,��0Xg󝹤gg��Hdw���`W}y��[��+$�mY=}����l1�	M3�O��BdT@��7��|�Z�c��o�s�g(}`��+�O��Ժ��5a�w{����̭��*�@��������)��OAZJ����v���7�}Y�?&v"��	��x�����W]��R	q9N��j��m���,�$�7��?���ry>�{�@��c7�\����Dހ����12Ċh/+�a�x}�L^n۾���a��;0��e��^�~�5�+W	��[�M����_I��n̢��  !j��+B�����E+9c�ë��H��i��m#�$�Ĩ�d
�%J	jg,������1j��A9B�3���b�.��;.Nx��D$�c^��2�����65{�$!B���Go�����" I�z��m�ɴ�D.t#^�DoSv�hwL��Z��e
e�[h�����斳U��/��Oe?�#f�`��G�f��n�1��oG�
/c 2��C�x���S kO�B��*�Њ��K���m[7ݻC�a �Xv���:#)��P�����S@��H�~������G�����z0����ڱ��.�p�'�%�@Py�տ��+H��D9��-X���K�YD	�Αm��Y+�m�gX������YO���rhy������e�g��n��`9`��F��wğ��u�[E����h=xfm�Ol2��ǢP�L�^�}˒@�C��՛?؇@/� �7�;S'�iJG3���B�Rm���7c0����g7���}�՟J�(���z�r���vMkIz�^y4�.kJ����8�^�U�Ig1]=1��C��ژ��%�ۢ�w��x�:�g��k�T�Q*�THT�#��g���6����*R�6�-�V��0���6��[�U�} ��O�̯��L�p�g���
<?y��pta��IV�}����n�.�=��#u����`�/�mF�����ݘ|	��~����m�+_�Eeٱ�h@Y�厜s��ɾ���3� ����W":Bl���\�`���߿+a��q��:=��HB��<��|�=�'ۤ���XM%�俴�]�`¶4g����t,X�8�;����1�_,U�B��P�Q~� �Ђ^Vf�?O�<S"�59�����YK�٘����J<M],����R�-WMV��7!G �2����ٯ
�8�z�d�mw��!��T�zߵ@D�O�(�3����\���ƅ`7���#��7�w�i~��F��K�N���/@C+�1��]�-�	�S�cAn*F��΂t��TO��\MJ9 s���_:�����YzO�_!y���_5�%®p�+�HK|��ޱO�`�	����SӬ��+�+��\V����'3-�D�o�q���w�����b����;���H<r���e��PK^	N����$�������O����-�/���N�=��,c펶Je?����e�П�X��ML�*�o �7Y�wr�����2�mȷ�H����	�����OQ��'n�����bM��nb�$�M��W�S*g�#���wC~Zq��\ѡ�},3S����}��C3���$漀� �(c|H".ʴMU|���_�����Ƣ�F�BO�HL���    �r˰74|��e_GC����k�L��cu���|��8_&���%0Z�6�9X@�
��#T�r��|�>�� 64"֌�x���JQ��&���b��c1�`	�r��$&��qx0�����rZ���Ʊɚ��/��]�n��/�{Tf6h�+�.���nӮ`��t�J���/�мUL�a�<���N� �d_���R��[|��y������H��>��7F��ף�9:�;z��G��S�,�4��1�g �z��Ro��_����I�`,=�O��\c2L]��1@V�J�;��׵=�FxpqiThb����5��wh�L����Pa /DzD��;?�tPM��͉�Ģ�'�0�E5!���V7��J�*�oS	<����h{�{�l��,R���V�6���j���7����� ���#�[�S`�Ԏ�߈\Ö@��w�<։�W_-N�/��X���~���~i��&M�P_��(���)5�y����������ź_m��5�T�^�I+}�ۛ�����6Z�z��&Z���3I�k K��A��f:���396�*ZBH<'ј�]�R�_������j��Ż�*!�<7�s�e]e8�!dd<H��ą��Sb��"�*�|!�׏*У!/U�ҫ6�aK�	 �t��/P�q������V�4�~��{~����j߸��$�kw皣�wŤ�4��%�J�c��V��{֑��H�Yw?����^� �޽O���D���nb̃]EkKx޽]D��z�����0P܂f��3�ޖ�7���[Z B��	��U��4�����"���>��{�k�cB�s��~��>�|c�Z�N�Ű���/&�V�S��6��t�yop�c���a�5����a�"j���{������1�p\_���d�ZR3�+���'V�e�ɭ�k�"���4�C�$*��	���a7��7��mv7��`蒑y�T槭���l�'��0$B�k�ڰe�8�a��ا[��G�v��y}>�6���P�S��
ݧ36��&t���f?V67h�c[ݺ1���\6�h!�E�����D�#����C��V�~{�.������G����4��-��Sy��&JbBVV�r(��c^��6=�������we����t�����z�T4�8������R� ^'*n�щ'�![���� ���"�����	M��3IF�6a~�U��QP +l�n�Gu�a;��"�ݪ�kj6Ȇ��\i�!鿆!`a	��)�K�a���d���d�	�}����o{I�+B�G(�:�-��"�7{�F�t�^�r�D@�Q,ms+\�W3��կ�1Qљ���{�9(y�3AU���W�/��b
�F�y]^�7�v����S.S����r��|@�� ��9��ٞ�t�F��&���&(;��jmu������^>w��fU�7���%~Lx1��>Q��D���>��]������u�l��nB��OTX��Q21��"u'�н����������ެ'��;������"���V��C+�C��B �aAz@}�����B�w��PP�,GU��c��kXk���%�=���5��}5ѰIm�@��bbj��v�����"�X|���%�[�k�ȫ���Ps��]�O��kEGb�|�|/��Tl�m�,,5�}M@�K�4S*@F/��ҚZ7���-��YU!h�+��H�v��-�t�Y8o�y���Q�'�4�3E�H��ݺ�g@����-Q�6���,ߨ&O�)��3�S���>9��sE&_葔���ߣ����6��R\���W�s��Rf�����#�;~p{�[B�q7���<�"���(�����K�G��!�b��C���	��Xc��a��)*|m�m���^��`�VK�8���vb	�oȠ�6��+�HuE���O.����8�
F�1���F�
�sЏ�*t쳚�|O��z�fh>�U�f^p���2y�o9zf�i�A͗;�|Vc��7��6	�dM�#><��Q����9�e~g-/�㜁Gf�VTr򘣢�N�j%NB���d�hҽ�7�2r��L����z��£��mp8�(-��6���'��lv>��i���[C
|�6�s�U:�����W�y�;���l�ڞ�˪�X�
=*��Q����#YM�Cع&h�w�us�E��/h�W��.U3��ô�Gr���&��\�K��k˨Z
�&�!�hv
�&����z�I��I�2����r���5?`u;��z��7��߈?,�`�H�3��ۅVQ���g%ȏ	���+u�R�~�潢�b���n��Re��c�v/!�͆�����pڎB���C�Cf�`�9w4F�L��G�@���PXs������^�|+x�ZAN8�赲.������bP}'~�:�Y� s�YgP+|�,;ʊ��PdD�J�Ho�#�3��66�^���.����C��x�F� �N/�ٙ��ou��h� F��cH���m���N�'4���F�P���f� �:T���}�c7i����<&W6���L�	�� � ������Z��2�Rv<��+�y�x�8�܉����')�?�����(����;���vk��xG}�@�x:�PZ�A���MmY�͎,^��>Ov�����=2�`��2YY�R�8D�b���Y���-�����	�6�I�T���b����E��Z�nd����v�S��i3W�Qm��ֳ*^|�'�<���_�r^n��w 2m<�5���{�D�O��	v��a�������]��2�����G��3��'5�ϑyZ1Ah��1J2��m��5�� [��	J,O!j)v�v%�	� :{��E��:+M~2�����7�@��o� ��)��̅�j�@5t>�߼+Tc�A���|�G��8@"�	jK�Ќl�8�L�N�m?����E�S+����؃��:@K��<��ِ��� �B��'��i�&i�s��kn:���U1
f��Ox�t�,�f�qR�,a^'����8"��F@2�\��=�z�M���}sJ�	Q�����)З����B�&:��d\�<^�Q�FX��xɂ�0
�mͣ)&F��E�ً�����Dp(�w�o��$� �iO�XEm[~�)|v'4ۇ\ �"�/���U3 ?+h��8�,38LK��~1�P< ��s��]�����)i����@ru
����z��i��[�oB\�Β�Ŵ���;ՂY^Q�մ�x!�%_}���auH"��>��%]�$�E�϶��C�%�&���}���ry��&!V��Gz����)�MG���6�S�Q�y}[�=h,",ֲ�3���?_���K���-��s�Gt	1e�ח������P�}�<R�J��x�d)�#:��A%�n��oXg�H���P=��U��cj�oG�S�з��"S����r��Z��oˏ��kC���0{|J����X���)b�Hh�����^��a&��5�!�T�b�\�����Ix�؅n�*k��ϝ�c|ph�����BV����v�W��[�� �(�����Z�߲�N{�pg�b
�4L���\n����'Cbkh�����-�}�2Wt^~�s���$Q�����D��C�5�C��-���ٞ��6��oQ>�N �P�߮�zbT�|�G��Td��!=�19Q8����a�=-����8��j�.�w2	f�,Yظ.l��"9�g�ڝ2����^�����5Q�D!��0���m $�����U��	�=�(EO�Fg�:�j��������6f��U���ԑ�~���#�7S����R|f�
�{R��L!E��6���X���L@�ě�w����y	n?P�A@ky3r,��AX�x�\Ղ!�S���2���Pv=˄{��0�u2����C��m��N�>�R?ʧ��g�m�`�_<m=͖��$��e�B�Kf�T_����߀+�x3�60R��+�x4�x򽳟l#{6�e�5�{hN��    �&f���Z���������2pqU�&*h�gA��A^d@7�g��^���Z�,?�jƇ}|ū���!aE?��~ƴ(��o��cё��ԓ3��n���-q1U;#��t�Ϗu+4A���I7�ǟ5G����L�ZXJ�k�W�o��5E+�΍��_�n��$�8C�ҭ��C�y.�0Q�mhnD���"S2!D�;��<�p���5�=��.���ky�lʎܹt��mm?ظ����1��I&p�&J��Fj@�g�����N d�s4b@��8��*m�`d���T�%�� ��/���,Θ�ݠ8WZ� ���o�1�y�%���3'hiK��Ī/~x��*�R拞m��n���-}��PͧYg��F��5�>���Ԅ#P�H�uK�\�L��V}�����KL�!sc��g:~m���hV�B,l�9��z�\���I(0��v��%\EN����m]�G�9����O�qoBD-�ջٿj�n�Z�؃���,�ܾ����0\m�NwJ�k}(�ݨ�E�bߌ�e�on;_%8υ'C뒑"HW����I����χVS%g�[x\% �]�l�DE�>�*?0���	gw��Ţ4�c|�h� �����E@�]������*N�����'oK6�^�6;�[��/�� �97���rҚ���B �aa2�g/آ��VȀ�3�oZ'�T~YE���s.z�q'_�_�hH�3��^}r3'�[h6Ѯd��hh��?\m�����5�&w�i���Ռ�F_���o��
a�fo�h�~�`�8��K����5�b_���x���@�/Ri!������%�M���YfJyرF1L�?f�eb`����2��b{��~K؉ G@���(�̱��7�HW�یp�d��
/���]ZB�F�fbL�!��7o;Y�
���fQ�+� p>�b[t�lV��o��L ���
��Z��z%Z3>3#p���7K.N�t�lF�SgTz���t9�f�$��Q�x�p�Ϭ�,�F����5�[�߲�7�ط�����&X��̈a����:F]�auM^�A�.� k�N.&ߟ��{Գ�f�>�i�w�,�I5V�fN��j����y�;є�45�C{��W/�~�(3��0\l"��.P��0O�E�&�{�Z�4ie�� �Z|�i��s~��C�z�t�+�
�؀`��	
@��M��D;�ߐ��������|7��~f9�]A{�6Z�>�#��M#?�2[MسE1���B�)�wSi��d,)�-Db�W��~{�6�^N���D�s���%�@ݍ ��%e�� i��&V����t>�9	~�� �ԃqS~�H;F<:�P ������s��c��K��M�̷L�
�:j�Us�Ҟ/ �P/�L�z��?���=�b��
�Dl�p|�����C����Iq{6�-� �)���p-�)aXP�'oY�y\M,��N�n]>^3��P��Z�6���)_כȬ^���[��Ll,��UEW��>+���u�R�}�p��ؒkxw�C���f��O�73��:���]����S�����VEM�29o���ϛ���:���l���!�(l���Y�"�^������x�z�_�ES�ש����ҌA�z {u$v_�I64�1�
P;�Ȑ�9*Ws�/,�\�]Z��Yn��GL�t �l�������o'��0z�қbQ%���m�ɥ�
�]�D���Bn�X4ʝ�hhŁ����*���c�ɧ�'�]v�)'�l��o�-�B%�Lqo���P�p�Ry�@"&��=iB�J{�7�]�;A�A��g��Op��sP�l6L��4�Z� ͛�z័��U]��$�xT���8X�r:��ȶ ��[�{����_����=��	������&e?j\�w��F�r��M���A�T�K2�Q�5lK�XM,&���1&QE��<�_[��t�nL^D�dY(�o!�o׷_+����� ���so�q�*�0��8��}J�H�	���/u�
U�ιi��O��8���g!Zhw���C���ͻB>�x	5�^4�w��{uXq�n\��-D��v4h��NKA���u�}[����L;V`��K�C
�6� �I5��t��Vχ�6 �o3L�����|�gB�@0�,���l@Vg�2ڗ��	��ǋY���e5�!^�`"r���	>�ODL�j
t�5�C��M
�����,�Zp�N�� )\��߷!.g��!I��1���m$O�I�HP���S�ɠ
\�Iѫ`=]�nQ``��Epm���LY��K�L�r����Tޙ:�s@�3FC9}����Ek�m��!k7�ϫ\ �EA����LD�s�e��r�� ����1y%~����0FM��]4#����`�/p��֭kn"j�/�Y��q�┦�����R\��B`ۈS{=��.��\���ah~������]�܍`u�>8�H�ɇ���/Ġ��r
�u#R�#FTW421l�L}_\]X�z=%��keF��D�cܭ}I�zU68W"ܗ�v�q�"��Fj�uB���f��D ��5MyD����g[o��i����]r��p��G	���}��u�ZXM��_�to��c���&��W7�.(�6�Ŀ�b_�3��he_�a���>4U��?��9������.��m��0��!�cNV��5�������9�ZFcڮ�A���IdZ�v>�ܤ�@^�����E|�����m����cҁ����V׍�>�^M��W��mJ���^)N�u�vM������^�����`����S{tC+�A�&L�o-���d�����bUxo�s3Pdrd��~�%�-�eů������wՒ}%x��⛸�֦��`�K���`�TUB�^�%����z���U�,�d@N�љ�>�5!I�� p�p"k~��(?�>�=cl����*\���C�fʦ���#[�G�gD�f֦e[0CgD��Σ��(��m۔��pjV�����f���w�wu��[p�B�y�Z�hZ�Ηy����;�lpQ��-8�Z�mJ���p����ܖ��bId_�j'<�j�#	!^�(����n���<���.M-��oP��l�GE�N1{��Ïr]D#����EPAPC�ǗA��Z� ���A�a�&Jj<�N+�+cZA�%��y��#������!A<��Dw,8�2��:�:Y��!<������U�oFy���m�߀d�_�z�� �|�����UoLZ�%XM(�۲Al)p[(������v(�v�^�������m_����A;���C	����B���؈ː7'n�<��I�u!G��D���;���a�`��]5�is@�*�?�s�Z��|I�]'������R��5[=�(����������m!i�������d	6����Պ��|3�s�#�IZMSx!@5IC'G�@��Ab�[a �B��G�_��t�2Y���p����-�m��%�i������A?O}]g�4�Ç���Z;0��`7���TR:N��3���@�����'1�PL=%˩O��[�刓mg��<����Ł�����������t���	Pr���b���jOn��??i]�P����$�����_R]�<�Q�]����p;~4�U�Rog�"q���.�����y��Eה���'~�&�h��su��ŷ<�Z\��#]��E�ٶY!�!�օ{�y��̬�3��� [a�����׾�s���/,=��@|��N�C�ζkR��`(7�=�����?�]zt�P)�Ћ>�Ԅ��/�ϊ5iy�oERΣC�R���B����w	/
�So�����1;LY���U���?�R��t(�osذ��U5 B�!�%��܀�Aш�R�{Tb�e�-�%	M�s�oB�q�}2-zr�����*�r5��ur�T߳��o�>6.~ S��M877�fp��=	ڇC���~}�$�EJWqi��!��'Z���l���W�XB��wm��R�Ov�V6�E�����+����z�i»t���    �}�ۧ�sM��<�6�{x�(S��pd�	ԂK0�G�,��j�'�)�.ܧѮ�/��ͻC�$��)�f���g��\rC-�8#0���NfUטֈ�]�*V��f�k�2��8��m�`�~6���d&��9!��Š/,7�@+��E�J�����*{��ױ�i��4�Eخg�� �ө��W�n�o	��� �>�Q�m�W��咅���\$����K�[3E�k�5-�R�fw>���.~�k�,�1r�j�w�S��I��3TE�*$��z��ڐ��<>fvn\�.����P�{��EK,���d:5�����
/�����$y��K0�Ҏ��@5�_���������T�,BI���f�6>�7%�OPʗs�����k�֤��o8��hS��r����d=>�=�����4/(���ħR����!�\�<vj/�ť�Q�z�M7v�'�Lo���G}�k�S�4|����2B`�@��Q�j�
�W��T�����r�f��� nُ��G�]̪���G��|�Y6����s�&�1�Q�hM��P4ê �Q1 ��|@�=A��e��D��F����8��G\k��ݓF%�:mV2�,9����.߂��7���Vp�C�x�׶�/2���V�9�)�}!�Y���P�:�ԼN*�c8��`ZE�K��R 4����cP�+�:�xl�1e)�mi�ڶ�f?�� c�/v�B|>8����?ˍ�g��`�fh�Zڢ����j��4�f�>8G��� {���3Ys�Bf|,�E��[q���[��1RM�Nu����}y�j��H��k�~8�ç餆�$���=�Y��;ymûPYy��cڇ�7��.��v��'l̞��ՅSLO�^41F��:�92��?o�m)t��h��z]��Z+Ƙ4rl�{r��#�������?X
|���/�b���g(�J�Z)�͈zp2YޯF��%7ϡ�*�1��u�ퟥ���g8xW����A��,b��"�m����Gt�e�,3����i�,�zE��LkvoPUG�%ķ!v٫�pر���[���K���ϦSQ<v͸��G�\S��0h�|�y�F��3�@�I�lϡ�2���������6c�[�>��x0S�cog��K���#I�i�}����qE$х���#r�	�9����c�l���&�)�e.�D�$(w�]`>���^%K ��X�𲞍��fM:����DH��H�h��|�;e�#������:�F�k繣�Q�O��mi��C v	�͇��_ң�S�H���yB�\��!��� ��Ԇp�8l�y���c���f	 `��l�ٌ�Lo�N�h���bEЫ�&�
��tT��OD4��I��g��l��[4��Q�I�@�Ǧ�<�=����[~��qr�>��]���	�c7�����O���&|6�Hy���+h)������N��Gdid�*���q�57X�H����� ����Ϳob�)c��e�=F3��ᱣ�v�\��圭O��Ϸ���B	_��Rs"*�_�F�ӗk6�V�w!v�6O�ȕ���'��G��# ��߹�xy�Y/ٶZӛ�`(V���t�~tL,���ֵQ���{��ݯ�a�>�{����t�|�9�7 [�EhK�G��(�� ��&'�aG49�ӏ���O�AjU��;�S��+n3�/#�i�m�k��%%O�?Bk��DzK�����Dz�}My����4$�n�n��������TV�7����&T�J�=�Ȫʓ��&�o=�#�v��?��.�^~��g�.!�|���~��^�5b+®of�����c!U|�i�����/?S�v�����V�1�7@�>
XB`�)��bP���x����������9��@��X e���:���PKB��_)�ty��D;R�|Yٯ. 	��k8���g�c2(�������hH_�s4��m�8IB�����Q$����d��2�6�M��Զ���KZ��S�,�/�#f�|��V=́/��3��С=��dpc��ӽ���˩kqP�8;�'�(K.�P�1��[���C�� հ���
�����5.��tҿ��%�-S/p��l�i�K���_�FX
�ayM�L�mD4&��.^V���`R[���<�\���ˇpY��&h��������/U�;�oL�]i�G�����T�	�6#~Q�HW�z!�7��_�톓��2��C��A�}K�H�ŉ/�ɘ.=����p>��
ة�C��Ӏ�v|}r�J���K%�	m>u�p
�BgSa��M�C�� y�|������� "*F	�OQξ@��F���.��@��*�^!���&k�.���/�{V;�{�ua��K����Y$x�~�9GPC�*<ζ�-�����y #_&�ʘo��O����>uc�N�X�����"f��	XN���
`=�I�J<gR\(,ʜ�m��x���_�����p@�Ki8��9��r�~-$-HT��"�~ǹ�+��������f}⑌!ԟxt��{5�_�чs�4��������~:�7���z��'<4X��^)$�Ա���$ �vvĚ-�8����V^��;h02�	 S��ƄI�U�DF�a�p�e��eq]�Dޛ�͇D�:�^��v���Seg�[n:��[4\��u9p��0�3�ｓܹ�O����W�O�w���o�F�)D���j�;�3jR2>�A"
�:�~6r�:�����ۊ��m���o����6Z���TV�N��%�a��R8��F�/Ic1ID�i���HqlB]_��o#����.k>���G�Ʀ�<I-��B1�6�0��Z��g��
#�ݿ�r�@]��'�[�Z._Ѣ'?n�
5�Բ]���aO�[1t�f�f��ق��!%�K��An�	d�5
f^<r��:q�\3�oZ}r���x�"��_������0W^�BjXs�L� (=c�N|rB�����v����7�ѫ��K�6� dk8�t��!��&��!���﫝��{J�� �`:�o����0��C:(n��-cC����pv�=��T���� (f?p;*/"E)Es �7�|Yc7��<EM�B����(L��%ݝ���7��cr�($ � m_� ����+x֨���Pbd�3���d)��LV"����]Jf����� I&��ނ�c^"l/F��1Q��>��"�}��yH�J�L$)�����omK���ƮE���Q������Hg)x=\1�0�'�)�[Z~�[�#ØE��>�ey��6	lW��͓a8Y�Z~)�믒$:˅ʆ���i�:t���P�5�^��~ݺ�/�?�BXG��:4��}k�|J�'s	�;\�ߖ�A�c�������d̑��|�Y٨A�d�k���TI<�"�F��[H#��jЏ6ݽiԧ���S��\���S���3^2�?Ƽ�����R7 ��m��NM�	!%m�q.>�f>UMǯ	���7S؉6��I�s������n��:�鸼��RI�t�9��8�w=W�^IkD
��x%�^n�LY�Y�^S|2Њe=���F�>$�dz{D����hk:��� t&Lƃ�i����̾|WY�߭c+_�3X�&�W���Ύ����4+�aU�[���<|r�{�E8��DW�@�����A|7��Lr`v�iZ��F��Q+?�
��"�����o щ�� �h7�?޾e�fN��z;�Wj�N���,���H��U���VSX��,{u��Do	�W� 3o�2x�9�	 ֈ!��j�V_�I�����C<�q`>'��qsBC�K,�
�W�Ώ$�w��~��D�ga2H�$�2�û4+/\�|�z7��!ً�C��2tJ��Ƥ�]ƴ�F��s��Y��%+�\w��/p�Yn3q�@K�}��v��� '�6�9�2���J��e�������'��'�-!Pux=�G*��-	�[�t� ��y:Q 3�B��i����A4��-��%��x��ƨ�8��ޭ��m-��_7�����    B�x���m�v���V��?PM���]5�t��2ȣ}��g�W��I�	i�F��z��<?�}����e�Š�шSv��[�	6C/���q�E���5���-w���Zf��[OJ�o��Dc���<1�nmzA�!M�*��B\W�*�թ�2��/�'�
�g���^�� ��S�0�m�;�v��H,	T5���?E�������WT�D�u/�������T\H�%��.z*A�����߳������S�e1ѡ �#c��q��s��z�Ol��([H�Oŉ=��Zn�0�oPC�Wv<�32l�}/���`9����f��~=����_ɻ�j[�X�����s4�s`׮CX����8�,��C���,��Q���a��1�K�,B$�3n�*U��<�����*9�<C�Ϛ�.z��i��i����ן�E�H�R�$h��?+ޚ�/~7:�V:�F���E�=�R�X�MY�B'��1��+��1����R��}�4�P-�%C�{�a����7���PfƂ�l�p�6���[�x�@,�=��ZXu��{}bZ�C���[�4]����3����w���񿜀m�H
���Ql���!�y����:Aݳ�E���ЕN,�TϤ�x��Ƣ�
_j��yQ�R^�e�z�B�~Q�%S,pc��/iG}����
��&5c��[���Ӓ�͏��˴L��41K�Y�c�&H��Y58VF�O�SX��:)��ڪ8K��KŴ��k>D*!j=��ކr�I��a����:�)�Nb�F5���
���3�)q����q}�X3�s�������̽x=��T�Ci��S�[A�7��'����]��i��2�9��~�
��K�b�>�v�Q��]�V�1����=f����̨1��R޻�P�M�Ŏ�kh�IB�#4��xps��O��C��1F82]4��;���Yt
��eId�M�,/�oOE�wD��;�i��r]����g������:���"������F��G��u����.�_��!l�ۖė;����;$PH�_r|SRz�A�-Y��̧���6��6�R�H�*t���6����k�n��-�z|h-�.ܾ欪M(��� /a{W�Jm;��_��Ǐ���t�;�f��JQ 	$xCEi'���>���jn���¦�7�qڹ@-�Q� �Lwz#.K<n�y�k惻���n�v��Gx�V΄����6Z��(O����<���'ǐ:�r���<�H����EX�� >���R�ts�<Z\/n��jT F-1�v��_� �`k�a�, ԡ��0����=6�0M�	�"�F��+�f�w�S����.�U�ė$x��|�b����5}4�����~-	����W)>�=�z�d!�&"k���Ɉ��2��s;�h��`�[�����oÿ#A_wbIQ*�b��J��_F9U����W�@)#�?U�Z�R�?	�yO� ��
ik�cT�� ��"@�ԛ��H�
����i�ޅPWPHvVt��)nA�h�.
�d:�㛤Ĉ��,*�s��|��H!�Jd���=����)�I�#�<�������k�Z����w%�g5����H�\۔�lc&!��OVU娐i� �����]h�ݺ�]^ U��֭7�u���y �$$kT�~mW�M�B]��W0ن��i&d��{�
��"�,�ɰ炸R���|���XR� �8sg+B�;�qIm��1і;��v��#-�AClH��2]�s�Î�:���(�pYZ���D0	�n]�]W�u���\6�O��pf�f*�!\p��뒍$��Wgl��-�o���I��'���7�^�4Џ@�{Sq#n]l��ܣe����ֿËc�Gy0��vn�/��1ov`9����˱�A8'z
�+����kaL�'���d�r��kS��-
�a�-5~C�_nX���S�ZFq����0e��F,�%Uy+C�\�pڻ��f}�m�d'*\܀"�4�]e����[3#����dH�|�S
M��n��!M�8��laG�d%��|�z�7��δT�B�t�		T��ͅ�O�@)"�B��%���K�(�J���l^1�|��y��K)��l�a\L�B|��-C�oZ+�w�[Ζ$�GGO�y��ۊ�Uo�4�����/�ː��~�U�΃� r�F����u2V�h{�k�|��c�<X��]��5�M�	�4s�zˑ֖�2}�B�֫s�p�;5B�bx����&�dhax�~�|�U��� ��|z�UR)W3f����~���a����w���G�-�@ru��+�$�\�%#�8�7�q)>E�ܓyi���hm�p��(�ͰVl�l�͢o�����z~��`4:�>��U�S/n���-sv���zL���}B��
J}zM�_��a�Z`m�~��۽�`���V��qK�v6m�Ynv!-&�b~��7�V~"������d��ԕ�q��3d��p(q#�z�?�a��y��T�$QgP6� ( �S�U�驂����IA��?!o���}����ݶL}�G<%��7�Z �_J�j6I�΢�����t�Xb���8>��{�pcq�vQN�*��}*Ra�.O���������l��K��@��Elm�0����=sI���$��-��ĉ�xo#R��ߍ�y2)���:�_� zm*9y'�e�1�����9Iԥ�׳�qM}�g;wNI-�~��sr�K���'
�%V΄Eq�y�L�}s�2ia4�l������0�k�a����e�e!ßX|�X��
�������n̅��p�T �RNZ`�����]ȸ�`ꐜvX�A7�7�FY�\^o�A+�׭u [�l(v��lXͧ/ "	�?�-<�M\�䢟>"�Y1�*�g�����[�I@�^�8�_�G���@�CA2u@�������
k��6�R�ڠ0���	3�o@�,��|����4_O<��v����W/���@��o;R��Hp���s�D.m#m�����2�@���I��O�'h�aٴB�(Z���[��~<���"���8:�]���A\�Jsu�+\���F�>л_��i�F�߼�z_�U�S|S�s����R�� ���M�g�|ᗎr���	�����z��	/�����40�i��}�.f�.#)t�fO��'bq����w$$u�x���`��El��.T,g���k�_I,T���Un0h�����`�����A4�OP��'��k��DD���kt���IX�k�,�r��oV3�k˒I&�6m�+�*��ƶ��!������v�ȑm��BN���C.��}�>�V�l���G#�G���E�5���T'�_�Zڠ��{w,�_�-��Խn:�M��
	+���7I���������m��̬�/�(3�!v�٬k����/�݈�ع}�~~�R�U��g������ۧ���L�CJWQ�No=v�4�w����AS�a��n�i;�3��ڕ�����{l�vEL�Qh�g� �.i%�4@�}\1'�`<~���%n�ڰ�{��s���l�9t<zc��yFfU�0���"6X?&b��F?���f ��,	#���rs|;ap�����h��#ʕ�?�{���l`0-�uPR�b1LI��;�Jc�{��*E��5�N��"e��257����ABn
}Fp��+��[��0z%g�>���;S���jZ���@0���I�!X���rx�.0/��.ɟ��
}:��{D�0�I�����W˭�C��H(.5�0|����Zb��H���!�a��N�,�z�]��
`Fg��(cm�E������	;���_�Ѓ�n�9��`�W�Y-�)���� o� �~�'�
������X
�A��D��>T���r%�QD��`J�^�f�q��~F#�Ds�&M-z�s��	/�VK!�,/t񴙎�%�I�����O~��`5R�g� K�P=3WI̶_�Ū;�N+6�G�Jy=>��K��m�셌�b�#:�
��5�8�ڗO5���w����]�Lx7�4��
��]��S�qC��`ilA    ��'��o�>POZ�SP*�^K��4}Ϧ]��/M�-�l�G�x����F�����O�;���J$��w3VX�� ��w�^Tѕ�Vck��f�,��D�><�J�L�pC(~�+�D��E�^A�&?t�(��,��̟Ȝ�+���j�J�,}Od'���bȥ�`
�oW#sb��%]��X�EB�uc��Lև�K~w/a�p�~��m`vY�*�� Z4zYۆ��?�\�2$BH��hN����B��'��o13��
��h�	�H�d8�!�~��}r>1q Qঠ��a+Pb@M2�_=�;�@�ȼx�@/g��/��A5%i�"?Lu�b�?5Ʈ_���&�/�c	����N�;!�8���)��\�-��q�y�,fb��Ĝ!���L&�mqy�M�n	A�X"�w�Oo�,#΅y�xC_���3Ҳ�̟:K���tc4�����`0�\����/ݽz9)b�����ߦ�Y�H��w�\ݼ�uiz�E�(
,J����m &�T�j;F���Ĩ�T�Й�5[���.�=O�Q��^oܽu��#Fߑ� �I!�c�;�Ƭރ�'vƻ͌�/-�Pat�驀��$)B�yH2J�ny������J����:��q��B��F*r�_����/�&<���s�I2�\�aJ}����*0������n���ڏ��N�ɺ���R�~�ʣn���_#�X*d��Y.Z:�I�u����'U��#TJr�ըCS���� �k.���vVe�]KT�G�|�HSe�LPh����Ц�-g�Ç=6���<'��B�R׏p�W���T���/k����&1��y�x^���P��[]�~�ߐ�* wsa�����
h
�l�P�z?�,/�Ve��IJ�
�L���!����C'��e�,ހ�$JЮ�?)�U����U��{�P7�\C"\�s�����J1���J�v���,�ci�h��+J��R��<k��,��~QYkWQ򍡗�k�l���{�S+�W��Ȕ��]��&J#� 7�Q�e�w
݌�L^Z[�h�EM�4�7��.���_�/��zK���; ��<�s`X�+�Q`��$Q�P��=AY�N��%��S��s�GPI��ns0���p�D\v�Z
!��iw�U�)F��R�C�y`���H����}N&�.��8��[��	ڊ��fŦmt9��8��D�=ԑ��)aK𡺱?�w���a�,��� d�6"��-(A�� �ۢ�B�R�:Iد�ZiN�ű�=q �Ƴ�3�0&�Gd��/q=˿� ߎ��Β\� t4�W��+�x��$-X��"֘��](N>�ʫ�,	�n^�3t=�q�� ���%1[�'�� FC�ҥMo��z���$`���!]� �Z$���a_��B�$�Vp��w[����j�藻��%|���Oo��M��f}P���QE�`�>���t2�P��dR�p�Y�u�k�"��.���tжSl�mvRb/1��ߊ�R�������hR�����t�u���P|�/�����.u�k�+���o���&���71:�r`������d�̎���N2w�7��c��T����sؿky,-�7ʸ��׺~����w!/3�GW�z��=����!Y�/��x7�4����ϬhOQK��,��e����'
k7�"Gvl��L���yX�E���v�#ȐB�v�$�.	��b��?�u^x�D��qbr�����qI�C�5i#%(�W�]B:!b��[�)�>{���U��2�%a��䄯��ʚ[ɑ��q%�Q�'����>wˏ	CB�pyG)uU��'It��Y�B�����m�J�����٪��Jtn��Go�e�(6�#���{���Ŗ��-�6���Y3a(�-pI�=S�㯪�r��'L�A� x�oJ`҃g�,1>�x|�XT�Q�|Ғ>Ѧ�3�F�� ���Fַ;QYi(C������EZ�N[�VM] ���۔�Zɼν2����A ,�m��Z�<�2��f��M�~u����_�0�_3Yj��P���m:o�_�����	�Y�`����1v�����#�Qz���������	w䛢�JS�Bʦ�=���i�o�6�$)X(J4�����HZD��/�]u�q
�}����6��A�r,�qWB2D���0�y>m��B<_�?)�$!۰�A��$�Mؔ�&���Ӗ/DY�M}m!�B�+Oq][%��<LZֶ��K�)��#�E�_��#g0Z�E��;��Y0�m�
�"�	��׼����{�_��O���*(F�(zvۯѢ/�;&;5�U�e�?�1�ံh��;-�F���E��L9���˸}��wxhv,���U�"8��w����������2"Me�gA��+��E2��1���Ј?:�e~bmr�'C����a���^W#_,_1´������k!�voͿ%b+t q��t�����$Z�(<D�|Õ}�ߚ;"o�nI�m��X�GHJ<z��g�Ę�i�#�Gg�g�f�:Ƕ�yD�8", ]�qmK�Z}p1�Eay>.֔�;&�C�+����@A�^�2��*�&.�?����Gi:Ԉ6�_2���؃O��]�>2��W�o�L21��O�#���g�}y���Sr�|Ɇ�EM����0����~�����Cp�҄�hr��B�J��������Y%��k�	p����T���u����ם���.���lP���N���K3�d��{D��~����(f�IY�Dt��q`F�!��W:K�%�
�k��G���r�3n�X�	�T���ӥ���Y����[�L\�V�=��bԥ�3�ʤ��ۑ�=W����|w�p��2v�j,�`"m!�k�e5	����X��k�)+�������a/�*K�'�S7GcǻO���:�[Z%�6��Ci�TM1�`
� gd�-�C��Q��&���#f��e�e2ɤ���A�=�hȘ9�m������WוpB�	��2�|��{K�n��9��|�#n��Ϛ�__��g�\T,f�_���>��J�b �K��@�'�S�WZ��.�Z����g��؁]����.�<IM6ۈ���}�n�ƒ�Z&rJ��'��I�
���B7�rP{ʞ�l��W�G|[r�}��s�^�i����1�IZ&�w�k����q�*��o�&^��L�D$Z�1�k�߷���_%�P�1�_�+2��P 5��E&���.�jv�j~<��s�:#�?�\<Ȝ;�����3�y��[�cӜ�j�߽��g�E@蹕]-K���P�ߝ3��� ����MV��kQ����i�q}u�X��^))�d}Q{01]!O��'Rx#�=����mO�ͪb��L���0N}>|	��x�QQZhC\�.&�c]�4T�w��G���5��E���.�͋^F�wۅ�\��ݗn��B��h��7K�6q�[�a�[؁��R��e&����EU4oϱ0�;�oZ�9���9%�@�
?-d��M]�0��ޒr"^�s�T��&%���P3�� _xD\���r�%o�4~E)�r\Q��f��/F/t���}h������gH�gog�s#��; �o-�v��dß�q�s�����F�_�`W��,5-c�q.����K�'��g?=h��p��s��u!��Gɓ|�1���=�������G_�����mGY�|[�n�&�$X��zYx���a��p[���ۄo�h�y��(�~i�����M�	��f��$�W��y�2\n�'��=X�õ2��a�>����zA��^ơ&�p��|��g�"�
}�)�㊝Z1�z����jQ�1��8߸������|4�G��εA�]csr.�]��Ff�c�:�d���MSO���heR�UK�VS&`�dJ$ϔ���0�����ԋ�h���.D� #���Q];�G�5�[��8�>�c�Z����!��-���ԛ����}��.�bO������X�[�io�W࿖O���۴0Z#<X�Y����#�W
�� �m�y�/2����e    �/�>�d)��.�F<��*�����N��(��=�	��V��ð�]�6ci�|��ׅ�f�3����ۮ���Ǿ!qƾ������AT���$�,1��v���+��t������.)��%��G�ᦥ�0D�HYX��~�ZR~^���ݕR��=�X��a�#��igܐ������O۞6B.����H� 8?nSY�Ȟ��� 0a�~p�$�jR}h�W�'��b{�7k����z�O�d���s��/
߆-�T��V��x����Q�PD����V��sIi,%}/6��0�OwDT��k�g�(�ꛭ�&y�ve�Zql�Oj������FmCت��aF�$*��E��lG���r�H0��o�ǀ;(�>^Ҥo���aq��B��q�����7qc����^%!��|���t`�q��@"R�����x������}c\��h��ۦ?G#��VI2��0Fc���勏e�� %+&����\��%4������;�Uj9I"f^O��Ѻސ{�uO�2�ftJ�� ÛSC��_��F7,I�pY3�=�16�<�B�R�t0�4%󄽍���D���g��D��I����B����U�?r��|���� ~Y}��%r�վ^�+��h
���J����v�𘾕uyR�K5D�/�7,��O�m�݉���j�W���d%��	mZ�����?1�����3a�5�C�$K�[�!VLWw���@4*K��-�=�v-�]��ir��0Ey)��\K���Y�3�
�����\��'�0GU�H�53-|'ژ5m?�!#9�Z����I�R��F��n��P�X�׵���؞,���Z���@�GZ���f&����噮4�^�1{�+ū��a�	�u�j������s��*�A%G�� ~�A����R�
y�EW�aw��'�O{��$�j,��0?_C+���C<Ii��aG���c�%�"�sϯ&���h�B<���!�?闕������L���b� T�@K������i�~a�� 7i�/-z㲈�N�\�c�*'���;W�G�EǺ/����R�P��]�j��W2j�w�e-1a�^�n��>���/�`�>���N|}�D� ��]�~��e[B��o��G�nx�)$�8T��%t3�`�&��T�}:�hՉ�ߖ��GT9W�8X�bY7����Tx;x&�k'!�7�f���f^F"�~��i
"�\4!N�'ϑ�x3�X�*/{�k�C��ByW�!�)��� �k_P���~��2q�|Ÿ���k�-qK�Ɛ =�
�tg|��5�!�oч���ݴ7������%y��3Xqnt>0L�K��e��"k�4�`
�����K������c�aGcP��bi�qhP�niA�5!�>����ڏ�/��e�U�(�h����'�h�~�8�Y����HC�����C��_�<��eB=f��C>_6M{#H��Th���3�f�(�++U�o�H)�d�7�X�Uknnm�'<���v��j�8V?�����
�8o������h�W�[�,''l�x ��3@����S�nZ�N{�m�����Ay�drN��&���ٙ�B4��Z6P���>;���S����/ɭ�P&���0;�>u$���'s�¼��x�DxX������oS��%�-T:�P�f9F,��!ʿc����#		�Ya������BG���/��*��mdM��}z�"BH݀�6^�Ch�N����5��:nP�G�����4��r�&��[�fz��󝴒6fl�.JH���0�j/sz��4�����MK��N ��$	'��l��\7h��8��e��##���3��˵�,�1,Ч����+6J�"�������B��N��i1�y��k��?2K�{W������'�|B�ҙ4��Z𡓲tg�ɣ�c&I�V�P(��,s��
s�Q|��@02�i�X]&���O�}�]�A|����c�>V�CýIZ�~��\�5��E��N!p8!���G��#�8���r��Zm������[�(�\l��0bĖ�{$�1'���b4Xо�OITx� '[?��f��,��?�q!.8����$�W��O��@>X��_Gw��:_?~[���lyCB�|ˏy� ,SP�w���[3�HH6����W���p�3;�WG����k�
Hnt���8�}��d�ۢwt{Q�<�&'��%Zi��[R��� X� ������z=�G�@��4��b�q��](q_��^�}�<ō��B�@f�T$�)�m$�%��~D�{SAv`���|����I'�g��WmkEvf7�p����wj5!Z�CW؃x-�/��^g��w�Q�F>dW($�H+��= ~~WH��6)%f0��0wum��u���1d��s���C���8���'����Hv�������7xq�/�j��}�J���݉E�'��BeM���$�0���	~-�Zk	Oxg��a��ŧ�z�ճ�--ε���|��]G��l2�5���w��".Fև���۷������|� �J�~plU�a�y���Z���e'0VM̙myE��.�T���W�Ґ�Ϯd6cG1��'�����y���u�S�:Q"�z�&0݀Ӕ���l��d&7Q�G6����X��7�62�����Lw�kJ�`����e��/�ћ��q��jyA��M���Q}Ce`9�����b��AA�^��|��"^�'KL��O�\; ,l��?I*?��ccźl�M����Z����Fh�z���(���^-vMv&Θ~�D�#��PY:��@?v�hF��U�>ߦ����}����i��\�i�ř�?�\|��{�J�r>����:���T^��( 3o��(żSi��J����y:�IY��^,)�+K�}�i]�
����NyW	*N�('�x�~�(,��&~?�k�>�ed�䟕.������1���T�P�S�x�+���jd�Gr�n��qim�M���;�`��<B��<���i�NY�<��k%�7��i�>U��9/���g�:���E�H��Ъ*������}lOV�Ny<�n+��{n/:�ߙ���!�A
\�#~�.c�=�8���W�}�C�a�|@��� �]A1���\;�g�{��d�$��ѹ=,A������ͥ�nz���M�D(5^�S>;~�Nj'?c]%88�_2g�c��"bAi{4dwX��=�-�}"M�v��a���P����"�dRE��6��׃�H�ĝIj�BP��GҘ�x�{?��~V���D�(�qę��SW��b�:L�)��6bUṆ;���}�j0r��u̄���=�R~{~��X�>�tl�{��EK��������M��)�ԬrbnoH<^c��J֠�K<���4�mSv3��!�x_���|�۱�F9k���:!\@}/ۅdE�ޝ��@"=�;�z��v¼����?�_B.u.�,f�@�Y��b{��l�&�|0dK�x�J��(Ā���^&�$����y}��޽���|
��~�޴�p2�!cY�e��f�%���P�\H��o��y����v8�ڃW�Z%>�U(�.m���:���8�Q~t�}�3�#T��!E�iQ�D��qy2�r~w�����[R΋z"�eH�oH�F�D��b������:��En�Q�*p4|>��⾻S;�N4q�^�ce�;���A��l=):pc;�̑�j�,�7��ߐl ��u�+�Ĺ �~����8�
��.��*���xFNҊ��b��,)yL���(�Ȗ~�=�| �UUU�����9F�{]�:���ezG����jM�Z�'�4K��ض��~B1��~rq#}m�F[��]�i�(�t��!c��Xt��_��W��n|S��-�<5@H�ç�vE����~�C1���>T�㔹-ho� �B����b~�y���r����]�T߲��?��J�a�}^�n����F����$�%�r�2Zj*mv��flU���T>��F[��N�U�,�.6�A�]�')/g
�ޠ�VH8�������o�)X{�l    ��_:�j��	��<�?�Ѭ81K������y>�u�%�r�E6�A۽��'R�ʧV7���z��:��<#��[p�D�3�q��!�V�4��OoVws�%�[7pU���k���\#0e�y;��R~�I�c �ςC{�@:YS�5@q���:��ʭ藺�S�qf�Uh�`z�/��_za���4���%`��B�[��a�����B��!��!{7�T5@p�.�����N��\W��݃w�8\���,����`L^�p{�#��I� 6+#:�L6Nu��8��+��.1�o�=H� ��=1�%�:�)�H	 �a�1����}f"A0�_��f \#&��l�R������gFqJQ��(&��!^��B���Fj�ȇIˏ�N���t�"~kh(��b�1�^��o�E���$E�E���t�w�ד/�W4��j��j��Be��o�;�����mB�i�i̽Z��m�^7I]��|�^]�Z��N޸eKCǲ��3.���׭#���Gӵ�C�^T�'tY�H�A�,���TH9�h��L�8\�TW�@hoo��%�L���-�$.�����QT<���nգ�$X��]�o���HeKUێ�a�4�����7�~�L��Rl8�%3Q���w�s&k#�DP(��N»�^7�R��2'δ�W�|�X�j�H�t߃������>HI~7K[7���c�������d�e(�p��Y@�b.�u���W-{��D���|���
�����<d�����P�+[�!�a�MD>:A����*�G�椾mq��~1��%���l�G�үk��zz�a0����'^��Co� �f.�X����TY~��Zu^��x�ӵ���b��-�"�xx2�TwK����tO�q�2�:�!*�^A5��@���5YO����?C�{��l=l|��sт���f�ftՆ�6�j�$�M��HO�C��R&<Ȁ�=��)�Vx�o� ������K�o�����a�^�y�rb1��>�=�=V'�悍�M�Ѿ������|�՛"y�v�-�/&hHW0���j��p4p;�2M-�!'��5����@~P$�#�V��퐴KR�'jF%ˋAYK��~&��I V���t�S�x�\,�KwV�*�7];��^A�Z��,w��[��(�F�ʹ�?O���_������|;���O�sMu�pq{����b�?xS2o����~������so��i���g78 <�B|b�r�'n��:5m�Ka���� �|CʣTS&֟#����!�c�\t���/����Dۘ<_[h�k��m�Y?�f�8J��Ws��@�:3�A�-���$v�H�BWH�϶oʺ�U�k�� hTdq
&����Y��$�;	>��s�����{aġ�F�G1&FV������SW�x�w��1,�.��C˔�j˭���n-�i$p0#�Zg]P*�Y2��/��C�qV�^O|߹Q�5���vj��y�ǫ�ػ*$�@��C��5��B�7��`?7��������S�x�*)�n����v2��AX�zނR�H��n�_�5}9U^�gQ�)��u������Њ��@�g�ͮs��}�WH�،�I:�$r'�h���fR�T%�c����J��do`������߉�`5�5g�P�y�È�nJ.6S
�\�A�����:��h6Ӌp��A�0�1y~�8��4�:k�m����:�U���i�r��JQ��
y�ft��|۽�\�b��ǳ�o���ny���w�;��Rx�U�F�lD��[l�/" .�����:9��� ɓ�)�����"�3D��s]�-�&�WX�ՠ���Ejbȟ�G�[�ǣ-i�)��@(̼�p�;ԡ��y����(�"��kBr�rv�l?�rt2�s)]F���|M,Q��QbA�������ԥ����m��}i6Qz�L�,BɌ�Nx��mhn��ߓ�8��6����.)��/泏�*Eޥ�=H���j�yY��?�>��)e��	��	�Q��E����.x�A�P�匓_�������L�OM͠c��2��Ai��C�߫�� ��C��f�=4��G\�O�U�2v��H��V/u=�)k;���<MSi+P�S��I�gŚhzG�!"��%#ZWT�[8��Ą=���jGjZr�`��g�����1��C�C����2�?~I��O��l����F�2ϙ�tQR���
�:�$֡s�V3n)P2�� ������������~��O*ʩ6��Jcn�^+يrP�	�]I�)��kG\�4�K3�+���Zi�-cϗ��j)�u���5"X����EuN}	|靚����C+�n�c�Uǂ��j �W�����Vٵ��ᷛQr�6�u��m��0��������^m���lc�w�<!!|�d�KӚRnT09���Tt^PBO�ƼD+����
�o��a~<~s#��-�Г�n?� ":�S��č�7�@��eB�k�����A��C�4Z�E &�	D���i�ޞ����8�ۓHW���ֱY�; �������y\�`��,!yk�I9��
���W�>�����*9-�e� �	׽%�3�������mB��˝P�j5j��]:v�K44v�i��(˿ge��)]��oVceF��<)k���Dz$��_�A�אl�F$�y��K$���2�ٞ�ʛu��T����5�I�Pk��4�Z��J���uQ]{#F�20��JƓx3KC�V��}ى�Oq$��y�n:^�N�q�����'�S��5}y����&Y/Z=�j{�p�@c?p	lCEh��nHb�ٳ�ڍ�Z�� �ߐ{\\PO�̛B���Wf���s�\[ӯ6��.i'd��F-w�}R|1LyUӫ)H�.ZĈ�̕����'�A���$;ר��|pLvdNl���D���F���#�
d#\�r�>t?"���wJO�4�ã�ܯ�w} �3�.]e��[��]VKD����V���Z�����~ܺn���;��V�4<R�ׄ�M��fun�V���seI��8)<#�y#3b�v⫞�6_@��D�Ԃ��J�Bh����}�M�~�<��V�6f�9�O�)_��)�ì�U'�I��;��c�&}�����j/��X�$9����!�`)�&����S�u�m����z�t[5:��PpR=,�	0��7&�]�7����o0�sp�D�d�Nț��X�m��_6��+1,0)��Թ����K;�&�[�%Aw@s���|�Բ�I���U�H�v�\jC� CY�2*��L�$������IC��	�>U�og�Ӑ1[>;���*�4&��U�v�X(��ԫ�	��уp�H��3rT��}k��!4Ŵ��n�:��qi
tĹl^����Q!N��'�����|�$���>�G��Ϙ3����h��`�c�l���ү�*~����B���A�U�LF�������1o8&���8a�e.5���m0O{_����n�3@zBc|H�jy�ٞ��yy�W*��e�:��Do��W@g�����s�ǆ�	��EU;��3tv���,lzJ>�#��b(��{`xp;�j�	�������;����[�a�����*���@0�?µ~�g�/HU3�D q�����G?�鎇�Dy�1`ٵ!U~���APFډ�,�^�㸹��iz��{O���	u-��1��3�ܛ���;6g\���8Z�K�W<���������n`�cq�N4�Ԧ�LwF԰&�����G7?^�3�+� ��<N��<n��8�߅ �Z��z3�`�-��m� �eȸ.�){4~Fu�W���噍Y��!KjfS���Z���o��Q����Y[��)g�5M��|�Ռ��?8nM����j��]|��iR"U#���l���	�WAJ!!x[�Zp�k꟥~Oi��瞬53�fɿ���)F{z�p�� 7@�t��M���j:E
B����$.^�OoM��Zu"�,�Ð��L��8ԫ�U��3�X�VROvb#艗��/,4��	��3c�J���hzW �  �] V����>�G�[��#��]���k��[<o{y��2�mQ(�5W"2�C#=��<s8�����^�7u���{�@v�◫"��n�3�o����{r��}�����U���o�z���G��}o�㐷��]v������11�n����� J�bd��vJ�W+R
	P�/����IϞ�b��\���X�r�4���n�Mc��0�|�ɜ��Z5�f6��zF�d:��O��TK��b���K΀Ȓ��iW�l��BұIa	hla�mdr?���D��D��8� 3�6���,�ԫ�6���a��Pe�5%˹���#�b����6E�\��(���CI�+/�n�7�xv�C���c���} �����sm�W�Ka�5��Lt��_Ͼ7�H�ڰY�7r4����#��!>��x�XIȕuO�w���
Rgr=��Ꚕ~s���f��3A�<�D���46*(�~�o�^R���cKB����m
��܏ᔨF�+B���D�M��~k��~?�@����!�`I`{�f���;<���M�Ff�ɤ���X��-�'N��#P�"� �lWɁ�}�Jf9�˖W�ꁄ��	ķ�fR�YY,�ɺ<�F^�:
 {�gP,�i8�W����߆���.��yy{�+$I�i6�I�T|H�şk欥�s��z�l�Ɛ|�ȴX��8��#e��f���lU����,i�jg��Td��O��sc��T�%�5n�vh��Y;�U�Э��TD�AQ����/������|)���/I6�)|j��Z�#�[�!&��aư���9�,�4��i���QI���aLs�*��-�z�/�Ҟ,q�c@47��_�zBb^ſt��'�*���!�]�׊&6H�:���h(z��u�)~���c@ R�#�J��g�����'s��N��{rQY�i�����[�`N؝�j[Fӕ�ou4K̢ѭ��v��A�̕�Ѳ!��@��/(��/��e#ԢɁQ����0"����fuOgK��hӷ���f�۵]J)HMȄǂ(>�0��«V�+��E�W+�6-]�Rk�+�L���h��H��BЍ��wф�xqD�dK
V�y���2alp���
f���]�uOx�lY�$W�o�p�;U�'��c�=��bhWK���iưF�:�c����by2���bVY���u+��pL�߰�u��I���N��K16p�F&����)o�}�������l���+mI��X�ԋ�;�+w���B�3��=�m��M�j�S���$�;&�%H����쮒�bF�r4��g��t��N���z�:��,���NԹ�>��J�J2[��Q��਄�m�Xm/�O�_�3d6�3)KS�/�qb�j���=RwX{��z����X҆�M������ֳGf�q���~�H}���0j�Z��1}�������g}�b�8Ŧ8�l�5����.����ւk&l�ȵ���A<��{T2�Ih�FBF�H�=��џs2�W|��B��I$M&��f7���b��N�+s	jRz��K �`R7�-���-�A�W�?�����]�����1�QS+���(7�*(��"��o�c]�N*�o�"�����I3O��J>JƎ�b�!/5=���č���?;���S��>(4��ż�%�=�e��U]IW�wJ�4�R���=�F�	7i�>�Q�?���;�	=���e��́7_lNP�-���$�������Ax��ې{�E���GW�{�,^>�}�.$[ҧ���^��t6�\kd9C�~C�)�_��j�3�����83=�&k�������i�s�����
�|Z���7��o
~ٰn�T|�f�� :���H�7�}h	P�6�5��?��>�T�x~����-ˈf�Aa�P�[����%�.g��K�@� y�~\1�O�'O��EU92-� lTL���+z~nK�O#�I��5<�]��5s#�ڒy�g��M*�`:����/)
1�W�J�RK6�q9X�H�f�R�����W��NW ��~@��juҾ3�:f�(�M����H�S��'�f\#�H�oA�Օ]���$/�Ũו��g
�ٷ���r"�醹z%��D ��e�����:�`�s�/��Q�Rmā��zXu5���F;�T^���Xk��ş{�4�B��i �X7�xX���8��ҷF���!��������h�HT�F�>��$ �f�=q�n�C�^e�>,��Ȥ/eH�N_dg��B�	s���X�	Ĥ\�F+��:�Zz����խ��z��䒬X�nZ�~�|��|��m�^̻z|�M�^]/C<@��f�H�mOA�v�7W�熔���E���4��s!�&��a�#H��c�B������~��kG�dk�h���"p�����L��y	���V�8�Gg��Ve�ꞣ(J�הZW�?�������"���W&Y�F���*����(��p��?Y��+�6��.�׿8���R����!��P�Ja��c=~��gY�<�l-���`�����I��x�������2���כ�q�g���O�o����q�g��5�+��U�|����>����'���ǘ���1(��M_5�e�n���s����w�t[������Ǌ����՞�j��vj��a\~�+���8�`Wp��׶9nV���I>���(�g�׭���;R�6�2^����y�gɛ��h��AG����$�5�O�K��y�������O�n�϶�أ˻���
�`��~�i�Bp�?��߻ʀ*�`�G�`u�%��3`\����`��0`��=�\�2��>mk����������[2�`\�L��f����
�f�����0�$N��<l}��th�������`$��?���?������?�?�e1��ߖ����:��?�g�֟�����ռ������p���IZ%�Z���x��R����ɕ�j�3�����?�������&�L�      {   ]  x��TɎ�J]�_�2����b2������.hۅ�R6(���q3|�+���~�D�E,J�Ww:�p&�E�
����P<ӳ�:�V�	(�q�^��E�~�# F j"��UC�X��<�§ ɪ�,�X <�E�U�"t��Y��5���)oI{�T�����?ˋ�`�Ӣ�,�O�U���}�(l�C���(Ydǟ�Q�+�4�G#�f����%���C%"��S��b��;�na���d#�Y۠�|i㻦�x+��ِQW&tƶ��z�˝C�tXV��,D�*��57�H�6�$��a���I̖Su�O:D����.TϘ�h�Q�VQ���r�k��}��2�xnk���v��3��Z���.$Lo;�v�=����	���	���Ya�`SD���2R\cڹ���_I��2	"����Q�Ίq�!|����M�YǏ��s,��������A�BJ�'���)ڴ�=��\l��v�/�Q�:�eM�em�=��q�4I=7J���w�&�^[4@�]� �����7�o���+}E�����.���:L�����4� x���|�<o&�~��7}���HٝRxǚ�����Z����*Oʝ�q>yt��%���F��4j��/Ec�;kI�χ��/��.OqЉ�G���{2][�F@�����x�l�X��]:�.d��却[b�}�;���`�V���n���T^7�?���w~В@)�`�^��r����#եUBr��ōk�s}�v���^������=�ǻ7�%�2�	��r"ֆ���	-8��(�+FCV���"�ah�*����?-^or�Zw�ݫ��v��n��C���:M�RơӐ�{Dx�p�1J�����u1�q���3E5�����h
�      �   �  x��]o�0���_�?@w����HЅ@�|��v�j(  �Y?~��:U+T����8�����<z�2�L3@!�Œp�r0�Cp�̍�O�n��,!�N�$�taq,� I��W�-���A��%�"�=)�e]`���ܵ2ץ�� �$��[_}��l3��&6ݪ��2������\߷;3�Tfe��Q]�=M�E.����5��mY����kZ.�u�Y����F�ʲ��\�C�h��8� �P�5ɬ4�������_���<V�7�C��ͬ�wW�i��Un����a����V����d��h1��4�O�c�h��T�-/��?e�7�r<֤�<g�%��HA[�,�yC�[`��H~2F�y�N�=>XT�H #��DH���RI0��Bk$����t2�G{�n⦁Q �q��] �CYl0�1���y^�`Hx�!��9�{Vb@Y���J��q��[҄T��) ~��+@�"X0�4�����oQ�]It�      �   �  x�ՓMS�0���_�#=�j�aٺ�C ��IKB��E��8��Q����+���q��@��zZ�3�8*�\H��DJ pFSN�A0�;�*�U�2��T,�\WEua*�,�1ŘJ(��m�u۸��ې�m��B�7���@�7��,��zvh��u�{6�]]`�Gws[=�7<�;����g�\>�����i�6@��;ۓ��kRؖ�vc��� ]���6!i���:��s�o5o`��1FN�k����4b�aoβv�m���IW9أw���ݫ�SZp-�TK��a'CT(9k��|�P���_��Pon�����d�'��;�!s��ugo��M�$g2%�↔P�i���j�����u�/p�h/���
M�TS\��4���FM�      �   @  x����r�@���)x�s����$*�$�ӛ�C�QQ���6�LFr��L�.��؏��$]��'�$��d`n8s02�����~����0��<� l� ]���$J�\�7ك=�y�jRTUN �Ŀ��о�͕�:����m�Ƌ�
}#=��XiLVL̯'�u5��E|V�)��J����&)�:�/��l=[�H�o��]$�Z��6��Ѥ{h�/�r�M�EP���f�h#W�Sȏ2
���:��:x>�M[���A��s��I��*s/�h�S�'������:��S�L8����g�Jx��C���Q�����;�N19oo������������W|�u�A'�z:���h�T¼E��Qf�u~z����zmL��Syw��wL�[zy�]6;bQ=]M�˿��)p��Ǚk�,Y���5E�`g\*&-����[:��w�i��CFWq�8�u,����Fš2�D"��DÎ�v�߄A����HB�����hV��N�7��㺎���Ἥ���z&���%>�'r_5ld�
���Q��0j��~fY�/XѼ�      |   g  x���[��J���_�ü�RE��AAT���y��r��&��vό=�'���+!|k�]l7���I�_�a4:���C|��7 �a���3���k&�f�Δ�7�r�_{�%���ze�/0ͭ�U�L�4-ŐU�[�8U,�K�휰��NOg�b��e,�ċ%�X
��蕠^,G �O��ఽ��@�����v6.������)�:ol
�V+#흂Z��-��W<�Ot����4�2&z���:�ԐB��̍�FP���,��b�o�F�=0�C�>.ŚN��& ��_��A���S��C�L���R�:�����|/���r�=Ҿ#!���Dk�*�ޘ�V'G3��ڼ��He�y�N�`�F"\�Q`�U1g�<o�e�(6�<���ζ���e���^�rFD��q���E�B���o���W��,��Zg������і��|\��ss$�eب�60P!{�[��cY�
h΢�zf�8�V2����L�����(������=�}/_�lv����3� �zz>�5�LUR�rI��q6�F�W�h�T��	���9=�:���ׯQ��r$R[�,`e.�����]����6)1Qnso��m��*���?"�@��u(��O�P�*e���L�S��r��뱳��3�"l�MւF2���U.5�Be1!�%_��r��GL@	�#��Z����N�qy�c����^�ڇ��|��h��*/�N+�����#�ڸ�?/p,���zm�.��;�<z��Đ Ap�y�u���y����h� ��觷W��rpR���n����%��-�Ǌn�ot�n��;/�h�*׵�����!�߭���T`��n߭��e�\���� ?�7�<����RUޮR~��d��V��z�_�r6��Tt����N��K�q�?v��O�d��>�q��$-�X~ڌ&��9�f:/�`�\&�@�,FΊc`m�e$�nx����1z��c�҂i�qz�P�h���
ftfNgx�lUs#N�7�
��d���9�T�yP]������<��L�)>�Gq�S�z��qR&�:#Q0�'�b��̮��˟PP� �(�T�P~�^^^���s\      �      x������ � �      }      x������ � �     