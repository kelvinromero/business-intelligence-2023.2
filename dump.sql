PGDMP                     	    {         	   northwind    15.3    15.3 "    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16519 	   northwind    DATABASE     �   CREATE DATABASE northwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE northwind;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            /           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16520 
   Categorias    TABLE     �   CREATE TABLE public."Categorias" (
    "CodigoDaCategoria" integer NOT NULL,
    "NomeDaCategoria" character(15),
    "Descricao" character(300)
);
     DROP TABLE public."Categorias";
       public         heap    postgres    false    4            �            1259    16523    Clientes    TABLE     �  CREATE TABLE public."Clientes" (
    "CodigoDoCliente" character(5) NOT NULL,
    "NomeDaEmpresa" character(40),
    "NomeDoContato" character(30),
    "CargoDoContato" character(30),
    "Endereco" character(60),
    "Cidade" character(15),
    "Regiao" character(15),
    "CEP" character(10),
    "Pais" character(15),
    "Telefone" character(24),
    "Fax" character(24),
    "Obs" character varying(4)[],
    "PaisISO" character(10)
);
    DROP TABLE public."Clientes";
       public         heap    postgres    false    4            �            1259    16528    Detalhes do Pedido    TABLE     �   CREATE TABLE public."Detalhes do Pedido" (
    "NumeroDoPedido" integer NOT NULL,
    "CodigoDoProduto" integer NOT NULL,
    "PrecoUnitario" numeric(14,2),
    "Quantidade" smallint,
    "Desconto" numeric(14,2)
);
 (   DROP TABLE public."Detalhes do Pedido";
       public         heap    postgres    false    4            �            1259    16531    Fornecedores    TABLE     �  CREATE TABLE public."Fornecedores" (
    "CodigoDoFornecedor" integer NOT NULL,
    "NomeDaEmpresa" character(40),
    "NomeDoContato" character(30),
    "CargoDoContato" character(30),
    "Endereco" character(60),
    "Cidade" character(15),
    "Regiao" character(15),
    "CEP" character(10),
    "Pais" character(15),
    "Telefone" character(24),
    "Fax" character(24),
    "HomePage" character(300)
);
 "   DROP TABLE public."Fornecedores";
       public         heap    postgres    false    4            �            1259    16536    Funcionarios    TABLE     %  CREATE TABLE public."Funcionarios" (
    "CodigoDoFuncionario" integer NOT NULL,
    "Sobrenome" character(20),
    "Nome" character(10),
    "Cargo" character(30),
    "Tratamento" character(30),
    "DataDeNascimento" date,
    "DataDeContratacao" date,
    "Endereco" character(60),
    "Cidade" character(15),
    "Regiao" character(15),
    "CEP" character(10),
    "Pais" character(15),
    "TelefoneResidencial" character(24),
    "Ramal" character(4),
    "Foto" character(255),
    "Observacoes" character(600),
    "Supervisor" integer
);
 "   DROP TABLE public."Funcionarios";
       public         heap    postgres    false    4            �            1259    16541    Pedidos    TABLE     �  CREATE TABLE public."Pedidos" (
    "NumeroDoPedido" integer NOT NULL,
    "CodigoDoCliente" character(5),
    "CodigoDoFuncionario" integer,
    "DataDoPedido" date,
    "DataDeEntrega" date,
    "DataDeEnvio" date,
    "Via" integer,
    "Frete" numeric(14,2),
    "NomeDoDestinatario" character(40),
    "EnderecoDoDestinatario" character(60),
    "CidadeDeDestino" character(15),
    "RegiaoDeDestino" character(15),
    "CEPdeDestino" character(10),
    "PaisDeDestino" character(15)
);
    DROP TABLE public."Pedidos";
       public         heap    postgres    false    4            �            1259    16544    Produtos    TABLE     �  CREATE TABLE public."Produtos" (
    "CodigoDoProduto" integer NOT NULL,
    "NomeDoProduto" character(40),
    "CodigoDoFornecedor" integer,
    "CodigoDaCategoria" integer,
    "QuantidadePorUnidade" character(25),
    "PrecoUnitario" numeric(10,2),
    "UnidadesEmEstoque" smallint,
    "UnidadesPedidas" smallint,
    "NivelDeReposicao" smallint,
    "Descontinuado" character(10)
);
    DROP TABLE public."Produtos";
       public         heap    postgres    false    4            �            1259    16547    Transportadoras    TABLE     �   CREATE TABLE public."Transportadoras" (
    "CodigoDaTransportadora" integer NOT NULL,
    "NomeDaEmpresa" character(40),
    "Telefone" character(24)
);
 %   DROP TABLE public."Transportadoras";
       public         heap    postgres    false    4            !          0    16520 
   Categorias 
   TABLE DATA           [   COPY public."Categorias" ("CodigoDaCategoria", "NomeDaCategoria", "Descricao") FROM stdin;
    public          postgres    false    214   �/       "          0    16523    Clientes 
   TABLE DATA           �   COPY public."Clientes" ("CodigoDoCliente", "NomeDaEmpresa", "NomeDoContato", "CargoDoContato", "Endereco", "Cidade", "Regiao", "CEP", "Pais", "Telefone", "Fax", "Obs", "PaisISO") FROM stdin;
    public          postgres    false    215   1       #          0    16528    Detalhes do Pedido 
   TABLE DATA           ~   COPY public."Detalhes do Pedido" ("NumeroDoPedido", "CodigoDoProduto", "PrecoUnitario", "Quantidade", "Desconto") FROM stdin;
    public          postgres    false    216   �M       $          0    16531    Fornecedores 
   TABLE DATA           �   COPY public."Fornecedores" ("CodigoDoFornecedor", "NomeDaEmpresa", "NomeDoContato", "CargoDoContato", "Endereco", "Cidade", "Regiao", "CEP", "Pais", "Telefone", "Fax", "HomePage") FROM stdin;
    public          postgres    false    217   8v       %          0    16536    Funcionarios 
   TABLE DATA             COPY public."Funcionarios" ("CodigoDoFuncionario", "Sobrenome", "Nome", "Cargo", "Tratamento", "DataDeNascimento", "DataDeContratacao", "Endereco", "Cidade", "Regiao", "CEP", "Pais", "TelefoneResidencial", "Ramal", "Foto", "Observacoes", "Supervisor") FROM stdin;
    public          postgres    false    218   ]�       &          0    16541    Pedidos 
   TABLE DATA             COPY public."Pedidos" ("NumeroDoPedido", "CodigoDoCliente", "CodigoDoFuncionario", "DataDoPedido", "DataDeEntrega", "DataDeEnvio", "Via", "Frete", "NomeDoDestinatario", "EnderecoDoDestinatario", "CidadeDeDestino", "RegiaoDeDestino", "CEPdeDestino", "PaisDeDestino") FROM stdin;
    public          postgres    false    219   ��       '          0    16544    Produtos 
   TABLE DATA           �   COPY public."Produtos" ("CodigoDoProduto", "NomeDoProduto", "CodigoDoFornecedor", "CodigoDaCategoria", "QuantidadePorUnidade", "PrecoUnitario", "UnidadesEmEstoque", "UnidadesPedidas", "NivelDeReposicao", "Descontinuado") FROM stdin;
    public          postgres    false    220   ��       (          0    16547    Transportadoras 
   TABLE DATA           b   COPY public."Transportadoras" ("CodigoDaTransportadora", "NomeDaEmpresa", "Telefone") FROM stdin;
    public          postgres    false    221   �       �           2606    16551    Categorias CATPK 
   CONSTRAINT     c   ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "CATPK" PRIMARY KEY ("CodigoDaCategoria");
 >   ALTER TABLE ONLY public."Categorias" DROP CONSTRAINT "CATPK";
       public            postgres    false    214            �           2606    16553    Detalhes do Pedido DETPK 
   CONSTRAINT     {   ALTER TABLE ONLY public."Detalhes do Pedido"
    ADD CONSTRAINT "DETPK" PRIMARY KEY ("NumeroDoPedido", "CodigoDoProduto");
 F   ALTER TABLE ONLY public."Detalhes do Pedido" DROP CONSTRAINT "DETPK";
       public            postgres    false    216    216            �           2606    16555    Fornecedores FORPK 
   CONSTRAINT     f   ALTER TABLE ONLY public."Fornecedores"
    ADD CONSTRAINT "FORPK" PRIMARY KEY ("CodigoDoFornecedor");
 @   ALTER TABLE ONLY public."Fornecedores" DROP CONSTRAINT "FORPK";
       public            postgres    false    217            �           2606    16557    Funcionarios FUNPK 
   CONSTRAINT     g   ALTER TABLE ONLY public."Funcionarios"
    ADD CONSTRAINT "FUNPK" PRIMARY KEY ("CodigoDoFuncionario");
 @   ALTER TABLE ONLY public."Funcionarios" DROP CONSTRAINT "FUNPK";
       public            postgres    false    218            �           2606    16559    Pedidos PEDPK 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Pedidos"
    ADD CONSTRAINT "PEDPK" PRIMARY KEY ("NumeroDoPedido");
 ;   ALTER TABLE ONLY public."Pedidos" DROP CONSTRAINT "PEDPK";
       public            postgres    false    219            �           2606    16561    Produtos PRODPK 
   CONSTRAINT     `   ALTER TABLE ONLY public."Produtos"
    ADD CONSTRAINT "PRODPK" PRIMARY KEY ("CodigoDoProduto");
 =   ALTER TABLE ONLY public."Produtos" DROP CONSTRAINT "PRODPK";
       public            postgres    false    220            �           2606    16563    Transportadoras TRASK 
   CONSTRAINT     m   ALTER TABLE ONLY public."Transportadoras"
    ADD CONSTRAINT "TRASK" PRIMARY KEY ("CodigoDaTransportadora");
 C   ALTER TABLE ONLY public."Transportadoras" DROP CONSTRAINT "TRASK";
       public            postgres    false    221            �           2606    16564    Detalhes do Pedido DETPEDPRO    FK CONSTRAINT     �   ALTER TABLE ONLY public."Detalhes do Pedido"
    ADD CONSTRAINT "DETPEDPRO" FOREIGN KEY ("CodigoDoProduto") REFERENCES public."Produtos"("CodigoDoProduto");
 J   ALTER TABLE ONLY public."Detalhes do Pedido" DROP CONSTRAINT "DETPEDPRO";
       public          postgres    false    3211    220    216            �           2606    16569    Pedidos PEDFUN    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pedidos"
    ADD CONSTRAINT "PEDFUN" FOREIGN KEY ("CodigoDoFuncionario") REFERENCES public."Funcionarios"("CodigoDoFuncionario");
 <   ALTER TABLE ONLY public."Pedidos" DROP CONSTRAINT "PEDFUN";
       public          postgres    false    3207    219    218            �           2606    16574    Pedidos PEDTRA    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pedidos"
    ADD CONSTRAINT "PEDTRA" FOREIGN KEY ("Via") REFERENCES public."Transportadoras"("CodigoDaTransportadora");
 <   ALTER TABLE ONLY public."Pedidos" DROP CONSTRAINT "PEDTRA";
       public          postgres    false    221    219    3213            �           2606    16579    Produtos PRODCAT    FK CONSTRAINT     �   ALTER TABLE ONLY public."Produtos"
    ADD CONSTRAINT "PRODCAT" FOREIGN KEY ("CodigoDaCategoria") REFERENCES public."Categorias"("CodigoDaCategoria");
 >   ALTER TABLE ONLY public."Produtos" DROP CONSTRAINT "PRODCAT";
       public          postgres    false    3201    214    220            �           2606    16584    Produtos PRODFOR    FK CONSTRAINT     �   ALTER TABLE ONLY public."Produtos"
    ADD CONSTRAINT "PRODFOR" FOREIGN KEY ("CodigoDoFornecedor") REFERENCES public."Fornecedores"("CodigoDoFornecedor");
 >   ALTER TABLE ONLY public."Produtos" DROP CONSTRAINT "PRODFOR";
       public          postgres    false    220    3205    217            !   0  x��KN�0���)|���7[�,@�e3q��TM͸�A]��)r1l7U�}�m��f�����
s*@̀z�S��G���=~��M����{��#������ ���<�-�-�Fy�[Ua�p6��
7f��8�[ ����r���d*�7��6�}�����?��5�rԩ�?�T�p�q2ϐH�Ǵ�LNb]���� !���o�41��Tܠ�/��u�i[`(���}�n{*C�.�B]�k^��LЦȵ q�D?E��"�J�j���"��v��*�t��j��^�ˁ��D4�=      "      x��]�n�֙��~��$��*�$�eY�Ne�	r�$-K�)���;��\�	�f2��v�� ��(z5|��$E��;�_$�������bx�Mw�l�g�M���ͳ�����i����k�g��y&����02��3�M{��os=�mA(߻�3����~�n�u$�������Ԏ(	�� �n�6p���'�0[.Gw���M�d���E7̮Y��]�������w��g�s�yAz��k:�O���k$Įzw៭�p+r�'ց |�ӕ$Q���z]�'�Et2�|}?���e��K��n���ϫ"�qƵiS{�L7���z�B�e��4�Zl��Z�u��tx�o��;z���+J�6%�X�&Ɯ[:{�/�ݤ��?���qG]�&���^veTH�ǁ�cHJ��&��"�nF�:J�< ���� wU9O�#�k�����<�;{sC=�B]J,��҂n���w�5��a�_<���mS\��wʓu溦�Q/�.��v<��.�}𝔿8U���K�+rK���mR���9�������>Ц�l~��C4�
�ۯ2�7�]��o^�~p�5������m�a����9�C��;�;{nz:-��M�=d@��YhS��[����uђԭ/6����~v]�^�/�,VH���6��"cs�\�n���3���� �0ML��0��Ը�.0�AX���[8|�LX�7�Z��g�;�]����.n��.;܇r�%�g�D�<p1�����b�x��P\A��2���|��3nn�׎�pL�h��x2dn���4A5���Y�ؖ��i��m�3�
܃��f����Zj��	EEW f���+nBMԥW�{;�:��`\M�3U�mR2��%6���Dd�|����l�w�G���J'������>�eG�
tO�t3nK�������~���������n��U�C|��zkj1�S|�h�ܖ�D�nC�@
>A.�z=4���s3M�ө���8p�I��LH��4�l2q`�A��)� ?��G�m��=9�W�ʂ��<�j%���T�8��_�*yI���1��pȜ���a��BG��ՑD�0�G=J� ���u��㛸w�Ej?\k���]�=8��h���/�P��-��kȧßE@�� ԋ�� ��G� DU�Ӏg��17tw�|2�,�����4{㆟�5p[�|��X$^�G����_@&澄�������=���d�Z��F�jL2���!�zE���;��;v%bM�d�/9���1������d����B�-nxȒ,� �
<��NG��G\�Uk���\���.V���,�Bn)}����>�Ab
�>&
0���G���Gp��A(	�����*����L�k���$J�)�ѣ�`�r���$0�+�v%�Ԥm4��نF*X�v�o���y���}�9�F�����.0��ز,]��ҵ���̠m�u�>kD�×��{xw�R�[�������5]�8�1�@��dE��#�Q�O+��B���.ݘ��ܘ/�[
�_�b%W~�۠�sΉ�Fv�'I:���t��{�tE��	|�%��H���x<����m�� ��/N�U���D}k��!*H��$~gk��b���ARzb�%v+�)ѽ�p�o���we2�%g�w��vM&h�I�7�ɫ"�F��0�̥p=;?��/�u(p�4�K%�u1G��y�1b7���(KB9���Q]-4���r�z���h��g
��+��8��8�}�d���k�2��أ��<&�H-��>
����ud��S-E�B�ۭ�E�p�*_p���6�ҟ-�]|�ٷ�ˢnb@*��e�����^�<rM�ָ��'A޷^7I�Z\�Wƿ��]�&�U@h�M�ӑ�e��H��2�(C{Y��(����T�J6�//_4.uL�a����-ƑM�^�H� ��#TF��g.���1�^�tb&�]��8jFN�ۂԖ䶔�� pp���k��>nx�C��O��]��G�/��)�t��ۙdIm���,.����Q���31�8'��8�	^SEW��w��S�#�ـ-C ��H`�&��`�M�?��*�����wr���T�mF��8A$���(ŬXQ��}�B��hj�M?��������X��|�U��B���ɬ���H�B[����z��o��Uj�I�L{���C�+^����¿����T%�����&�ns"���B!	"e"���HUO��><h��`�'f}���|����*p!ͮ���[�
����Hg��ҫ�߻�r;Q��?(!�9JQ R��! ��;d����뇿Z`��(�a��Ìt��b���+�F��K4��`�����q�Mn+��I�77�^2��F��`�A�i�� Q��5ip�����p=2��>�5]��D�{w�Ġ�zg�w����"�����!����d��	���;u�)`�\PT��%��z\T)�G�
9��P��!�7��Fš-�=᯶��z�M����lS.�ʹ�_Y4��|j���s�\d<�C�	K��2B4"f�Ah�n֨���N������N�.�8�y1+�z�շ�~&q�l�[�^5i`��b���%]�`�hM�;�x���!#Ǽ��)��2,f��7\�.�F�9��ԧ��+��-s4��$6Cp���!D�P+7��x���:�8rE�X�1��Q�	?��z�8���ˋ�q>aAİ�6U��Aj�؄><Ž4Z��[fY��-�t�'uR�{�+�����N.�*���8&��C��	������f�x_N�sK��1��J��n�A�\2��;�¾�w;�n�!v�fKZ�(Is�	@�JO�$b��� �X���;�����s�0ߪ J.�uv��`�j����A��d�\��O����;���3�=�0����M�n$5���V�B6!Pi�4n��/<�XM���m��n)0��q��C����ܱ�P
��L@��z�(��Lo� oq5\�L�ᖬ���m��¦�c341�cP���
1-�4Qp��U�)��vHQ��3��x� ����$>j�H~/˖��5pDH�{b5�+���l|�8�fֆ<:.|b^k]�׊t�8߁93+:#�T�����ۋ�pN��K�ijB���UUN�%��N/�ȊTI%c�
 -��R/��-���`!��d�:k�� �4q+�Y;�_`��ia:�ʽ$k�0��~�N�t��'�������V@yՃdh$���h�r��@�}��x���b*���xP@F��:hl_R�1��N�FWy�"��:�����!�lSII���h�/��5-�{0��D4�ʜp���K�[�>1s�7�M�gޞ�I�����7�.Ǎ؇��)�!ȵp���Hݜ�	]Y(�@��7���[��[P��y�[c�L�+t�e}˞���b�Hߎ��B�9J��6�*i�˗#�< �"D�#r]᭞ $ ���e�ܐ�^������}��hq�������2O�U���M4�"J�����,Hm�7M��F7$m4����L����1wìW�w��)ݖ�ۚZK���>��\F`��s�gJ�`&EQ�4)�ܫ$|Λ΃�x3���C��-3�'2��[䖮,������;2i^�wD{embd�B�߈��"�z���/����3
u�z��-�7฻�	��s���+��}v 
�|Z�g��/��G�Xٕ�>���������M�2���$I�-B=k3�C.�q4��q����;zL�T�nBь�~`�|�<�6VL��J���x6�'�A�=�>�m�����NK$�(r��YK�#Ӈ�b��AT0���X@�<��W��k7��	?�&ze�3�tzc"C�H^,�C�,,�Զ-W>݀@�[9iG1��KZC+Jz���vڼ���#!o.%����l�]d���n?�`l���lLWn`�KUMz��;;u��!��řaBcѓ�� h  \{]2�R���iw{m��8�ԶR���#s=��ܵ��m�`��U�̨����H��ezC�� ׬w4��sDX�#mZ��k��Nd�����3�#�\��B�Ц����n��f���Ө�X���_���I�b�Y8o��?��w��(��]h��
��b�\�-�C'kǅo��+����]�4�JZ: T��T�0A�fG�D�/Hߙ q�qam:'j�Q�;mFj��R���:&���Ǔ�/4Ϭ]+��v4j��.��S^��h�:�5v\��?�q����܇����۽^>��	'��k����AB<⽄�����Sz��3Z�7%r���G�:/�$B4�v6�2s[�ɝč+c�CP���� ���B���ac>Я &Ϣ�I-U���~��l�qp�`���+� U]��.��{
�^[�##ݩ!d�M����p��)ּ~�\l��`�Ǫ�jJ;���c[�Z��倌�0MR0=�,����izMKl���ǣ��q���w��Vٳ�r$�v����YM�о�jE�.f��}�cdjmv�|�\Q�	'�fi�j���h���v�'i�|���R2Y�1�.DMQ�B�����NKj�$0��>�����p_#��c�SP�="�'Ib�X�n�8LH�Cc��΄h�%i��Y��T��+_΅6��DGEH��6�K����4SrN�S��޷2S�-IU�[��#��5��k&�P�@}l��;�(�e�qc�If`���sC�y�6|o�b�va�
��ǦM�K�sό�ْ-=6sDA�tQnu�� ژ��Bu� �b0��[x�8"�1�J�q�A�)�8{{*�zM�1!N�`��F[���g�B�5:dϺ�.�pYZ���]�#�Pf�Ѧ�r�
d��G���u�&fx#;<f��=��by�M�������)��8����W���s�I��G䵫�u;�JG�$;?���R��+��}��'���YB����[Ĭ�@��+@ؗT�]����3�>�0�v�p̮�Q�'��y}0]��6�x���Y6���{�/��c���R�I�&�D�.�y�b��j�\��Є�X8*"%���K�1,F:���F�.�m\[�O��.�6��\�z�̵ß�/��7��DM�X��Ń�P��x�C6�i��"�F�Y��{4~���ƀj����� Bk���'��\�֙zE{�q��8n�����(qG4��1 :QN����AY4���TjhDa�ZQ���>c�זڽ3S�`� �p�L���ߦx�ۣ��T����3�T�����އ���[�{g�������	���v�潳g27�s��&�d�S�i&��X��>�ܡg�`��{��S=љE�$������91�K���JB���������ѷ�_���u�3�}��֎B7��2��[��n���p6.
Pi�)�rKݍ�'�w�;�i�ɹ�F�����qEз��~�
� ��I��EYj	r��J
e�81�MG���b%#g*	D��ʙ˄~�,�T���]8����@`�sE�
�^:XPL��s����!���%������q�����9{����,BS���3n�Ҧ�Å= c��d���G�'��<~22��m�'8 ��$�^6��! _zc���2�����U',��:�a/��}�����l��������t���G���@�<]�ƅ*2�3<�=j�����k֠aR��b�_ 7  ��9�LqR�������S�]�,Ǔ�A��X*_��� 3��^4>5Q��麶�e��{�+�4d�@�ݡ��7���Q��H�׏�q��V�#As-�y\F�X[����'�Y��>���x�6�W��/����Q�%�!���ux��	����|�J4���<�[^����淕0�iG����Y3��s�4���w�5�����N�����a#ErS� z�����	o嚛FΩb�G�ŷ�A�f=֬l�b�z5�9�v7�׵�`���ʺt�G�v�)6� Ϩ��ͷ���x�H��i���EH.5�f��`14�D��#�MW����5]᜾�:�����s�QT�꽆?o10�Љ�3����K��1gQ��H�ߊ'"�'�d	�3���A���l|7�j�3q�;��LnN4*Ee2J��jWu�6:���1����h�\�wß�ϙq�E��XNW�cB�c���Zy���܀Ｔ� ,��3��&L�L�<��&	�	����ɽW�\�gn��#���l}�m���pZ�|�(��@X�t�����p��a)`$j"an�c�຃Sq�W��@}ǃ$�#�K&@��v���<#�B2�T	���Zx�1_��̓0\̌����Xk5$D@l̇�a�Ug�4q����;Ǡ?�Ԃϡ{�&w�N]�I_qW�y:�Q��������k�~EEl	��?�8%���?�`z��nFcM��s1
�e��V�՝4/7wS�O#ͮ,\�B��Jpz'�,�%��u5�Fi�Msј��*=�u���Z�2��;�+�J�H��?��HP�g�D���X��sop:�{��UJ4'8������'���'֑��'�
���>��<s�|$qc�cip��ђ
�T�E���5H=�|bk������a���!���FF�^��<#	�ȱ��̹����ډ��[�Sn�WJpF�ţ�8IMg �(��+J୴�B";&�b���Π����F�f=���k�=w����z����p��*�� s��1�L����Յ�������S{�|�����b�<%T��<c�<<�Qח�<��/V�'N��jL,���y����ʜp�m(b��`�.,�H�R55&�E'������w��WlM+�6e.�� !�����1ښ�����c(N�p��\Ƴ�>��҉�zE��C�Tl�H	�\.�gp���<��6��lv ��'|���L�78�R9r�DNh�bV�/�E����Ew�N�B�I�%c��ȧ�*3&T��Ӑ�9ƃ�	�� Xۋ^(��u���X���>�0�Ad�F�FO�RM�U%�=i�"ӑ�A�ɽ����.p� ɪR��RBn���X�����gR      #      x�m�k�m�
��Әߏ�T��Q�1p��䦾x\NE@@�w!���?������s�����S���6�cZ�/&��������_g����/�_By���տj:TG���K��2�A��BظH��:��0fc��G�_�_e~�^�8�_�����4Կ`�%��;7[[,S2�<0��*Қ;I��~QG�?1��u�_�qM�6У�����C����_�s�8�����i�A�N�o�;i�3�Z�˓��1������	)L�5n�1Y��Set%3�c��.�3'�E���������8��*J�q�2�눵��󠫲��aЪ:c���7�3:���f6m�X��h�r�QD�иq�ߗﶍ�xE���+Br4虹 ���6V����y���p���$F��*d�Q��_!���'��=���ʐ�����2U��ʲ�A�n�e0����a�7�ƴ.E�y�?XI���PHE�qPQ>,$༱vBzP���>t����9�J�P?^��j�g|4C�am+��n���)$�� /+4���1�v�݉}Q�%K�Zyoq�:�����15Xc*�Mfa�a'}���>�m
���))�,�1�C��"�O�����F����Z��E��t
>ChL��2X% �&����!+6�v�;��I�>ƈ�W��Ҝc5bv�L�w���D��U(��3pL{|��Ne8P֬�!uòKS���t���c#��I[S��'�X_�;�4�A�3c�C,�9�N�n���%L�Ս���xxQ+����0X�4�}����)�IE�W�٫�Ui[Y���a��{�~��8�N�c<�Mh�0�qr�/��0<�d�Z��m����)�.��C���Q4�����8q�x��y�Yo0��˘�Ih���8^j��'�hqc{�q�6�LdW�������ظ�4��
t=�"{�o��t:�Y/m�HV��,P�c*䫋]ġ�d���u9-mEj�zU���'��v}�'�c��W���UP���c3Xg��<�Q<���I":�z�!8�)F�$�Ҫ�������3�=�ծ+�J�?��L`�:�4��<5�:�<�N�(z�R@سa�2�w	c �'3��.1��4A�pV���qE�qxȤ6�iw�p��	��g9�	��A�)�F4��M��"�R)��EE�B�5�j#q��
-��V�7&CFؠ��S��b� � �:�f�0���S�p5X8�D��ɦ�o�Äg`��84��	���U�y�����i�Зˑ�c%�P�W�}�29;v�הFĤ*AbGr ��� b�4N�nm���=�O�;0B`��F�ȉ��Z���w��SkB�$ҁ�40�9��LT�X�v0�ئD������BK�l�M:��B�l�̃���8�CZ"���0�x�wv�3����	��E�t�ͺ뛡���O��F\�����R��S��V�A� Q�+qc>k�g���?	��.!��󧇱�ެD�թö��dc�����TX+7F�����P5�h�S�4��H"�:<� ���0�i?n5M�T4y�P	��'�-Q�#���t�#鐎O��Y&eEu`=�BJ��L^���V�-����X������+/��f�P쁶�lV]0o��0e��0@]I]��� 3$��E�5D�P���MS�����C�W���Sa����!}x���8
vRf�������z��M�)֞q����h�9��k� R'��4G�Z5��|��P"��5�X3g�+�?;ƌ��K��!��W��Û�^"�؆�_��"M6��R8�΁�^��}�M�qS�e	��'���MǸa����<���g_6�م�.�~Tcl�֊u	
��A�y:b6d�b`�>Wg�Ȫ��f�=?G�G��WUj�3��͐��Vc��$#��+>��N+6W������٘ī0E�,0V��>����5�{�#0t2h�N�1yf��t�/	힍U �+���x@�܇M��ƈƓ����DL"��Н7UAj�S��z|Rm��!m���uB_�Ş���w�TMu������7(T��:��[�z���,��p��7v�h���GҟQ��1�l��eT�$G>'92t"��N�_JV���jZ?*i?�;IH~/��j
�/�Bh�Ӝ��!���2�+*XOn�b���^�4����##�N�1��X]��T�xԖ`�,���І�5*lq���/u/�xPԯ`��ީ�K�)48~�{[%���"��MbӀ�as��i4�m1�#w+>9�NW�;oz>�D�SeK`���H"˻_K���E&\ﳭr՛G!D��0V�A��(��)��7̦�2k(�E�錈j���9x�`��Z���1TK�����Iuƀ��8mm}���������$�*ʹ��(�}�8\t�XYj���a�rS�
�5���*h�v#��NŎ>��_M����z$�f���6��I��-6E`���3><Rr��[�#QZ]ڟ!���.9L�t��4�P�u'����2�[I�FJ�p���$#��h���1�j�aS��I��\	�E0�mI�Ɲ���k�G���T�b��*b6f�ɎBc7'J��.Tb��c�3��L$�������i�jei��ЄCQ�$.dq�!���j���Xes~��
���R���P�	�C�ǉ��L�qq�4���n��H'��(�H?3Q������S�B_�SvT�	���8`��QA�# �L�zc����*Z��Q�`3y״���0g��+�u��j��|Ő���i���Cf�8=��s���ӹ"S��є��G�����L�`efl�{we
V�_���Gz>����s�G�'@ogI�Cc��Z�u�)��i�N�5���9��� �����g�#��΁6�������T�x�[%?��L.�6V�����?��k��d�G� B��.7��"�$>7�d�����j#�J+��I�ej�j��q��R$�{x����� rLBm4f7FE;M���w`���B�K�R���Qii��b��4���@��|(�'������2Z����׫Sܽ�����#�Do�ۭ��M͓�N�W�R�*��"%��.�`����O�wb@��DW�@��X��ȹ�uţ���0�,���b��s���*3|ټVmt	M���w�v�×6������|�RwOQ��:�*�k�B.K��|�6��)%�)Xѩ��6F��UDw���(��X#x�o�����N�S
�&{S/w�z��/��ϊ��O׌g�A�s��N�y�c^����Yՙnz��W#~0���^EՅ���:+���0��9K�w���0*#�΅��k���<I�!S<�"������yG�[6�F��qxӇ�gm���#˩#uٷ�L�M�{<�T�m\�CH�����M6�$�	7��Vc^���ݘ����l���E)�� ���*K<X<�Z���9D��"z:�M��P9�Ύ��u	Ga( +�q�
"R-8�]Q��D�#���m~JX�\$���X6�g<��>�g;9����_�j �Ǭ�s���A�c*�`����݉NTK�Eİ޽���|��y�/+=j��ʩ{]�5P��\�%T��BUe��Ҕ���\�E�٠����a;�ƺ(�qkH��ݼ"isj���(v��
d1=�F[m�2�k揖`��$tгM�=	��C�k�,�`U�H�d)��Q��?X��<�m/�4��lx)�?��(��v��*�O����~i��<�s�a�	��o��)��Ku�M�(6��--v�}�0����3���/H�U0h?��w����0|�d9:L3����*��r����9z�V,l$����+Z/!�a�t��1!����}��oQ��� �I��f��m�W�%�ݏ�=�Ar��w��B�Xܸ{o�����GE�zV4�hf\w*��Lc̵7��5d26��j��z躵CxI���C�g�w�3�]h!4�*�,�ɑA���."{��*sDf����V�0�S��vD0���+w�\ZH�$	�W�H� ��:��k�5I	�    .Qs�*�q:ޗ�0W���3]�&!�2�ю�\+�Djyc�����C�3\ׁ��B݊U�4}&M�%txO�8��Q«�i[x|P���B�M��^0X=��H}7��BS�x˒�3�=���:���ϰ��vB`v� ��#��P���/�)g��ޝx/��U��\��TW<�.��qy������C�YR��鱂̧��8���-Ճac�znC��8%g�pL^!7r�V�aY�H���[�无��-��p�ާi���yJ��$g�$�����x�)���⍞�%gu�R�p���`��x����C��^��8�P��f����1�&���R� �^Y��g�yM�	�Q�^�M V�O�^�|A�S���7�t�MP#�)I)�?[��&8�)�9L���֫��ƒ֊&�,T�
/L~�M�a�җO8�nQr�v����Sc�Jڗf�]VJ�:�􉝂u��� F���[� �ͩ&��IAL�x��k�m�q�ܡ�gbS4����r��[i�:EmLJ��)�Ͷd�[Q�FW���PyO�1��֊q�f"��(����;:ǄH�����A�x���զ9���-vgi�� �!E���(VV�m��B�G�xM:�d�{�ه6gϗ��Lb�����@
,h�h�<�r�DH��G�i���*�X�$���Oh�W���Ȧ���s���!\j��|WU���Uq�3W����q�s�uB[�r�V�n�_�`�,VuPֹ�4��AȣP�$ۙ޸�&J4M��s̿&N��8<>9���8�14�]B4P#���9-��y��.��5w�"��ِj�3����e�Z��p�?�NTl�h����g��D.Wb�sԘ���!g���	b��u�9dZ�d�C�-1,rd�f�E�`��r�t�8
�M�N(n��M��Q��s�$A�Z�3�b;Fn����Y���L|��
թ5�=X#��RX��0�CS?Nq%�ᚩz���X��950�eZ�L3���S1,��Jh�Q�q�/�;|w5p%::둹p(��S���m!dA�uޔ#v�@���"S�~�c�$��"��R���AX{�z������Y�N�b�F>��U���đ,af��D4�W�Q�L:�}=���ZbC���h�������2�:h��n/3ol��ưc4��� ���*�bw8�f[6����#,Yٙ�9�8�$���/Q�3ey�5%�H�hiЅ���X�Dt'1R'�@�~yx��ã����U
}d���@������Jsc�2�6P�#�;D��Ȝ�e�H��������'����Ω��)�sփ<	o.���C�hsqƂ'F�Z��%C��-��M���ȭQ�F������0�v�3c�hn��8��Y%ƪ�p׵,�����~1E�p��d�8+�}|d���]�M3u��^���	)�J^P|#�Z��r��� 92��k+�<��zae�$5�0��&>dnXJHvi�>S�a[�}��*�^40U�/�����W:�g�Z�jL�,���_���(���>���1}Ԝ�S�b�ֆ�"E�r'�?��&�F�J%���2|DhK���j5E 6*��m�� �H�0:�r��c�u˗JĖ}���QN�uMao��Z��bHź(���U�$�ߌhiH)��8���!��-�|�?�	�V�!�O�W9�������g[8��h�.�kO~��Scd��c(,W��+ ��aD�hJ��$�u{_X�Vb�*�Ru�N�Nka�n6'G����I�>u�:�\�(cf����q϶�U���T3�Ԗd�b���h��V���L�fT�¸��&��w�L�jWJf�?I�tl9Ul�!ǡ�[ �<0VI�j�
a�n�BOu��z �`��L3�2p�9��#�.�FS6��_����;�Zu�����$��q�U�ƅΞ��~J�J�k��1FЯa��2��ŎA��@�
�Bc���U�QJ�G>	^g@�jR���]oп�2��[ݍ�e[�D��Uy�5J�	���B�
�2��0�q"h݃�r�l�!>_!����TW�2��]W���u}�$E)�19w8�L��+��4|�U-L�,��N�
����
�"+�-��)A�M ��dx�`zD�p'���͌5ς-��S�\V��o�u�q���L=��=��+�)Uà���yc����n�2j��02���?�j5���5�W�R��gI#��]��%��A{a:$$�Q;E�$I���A��Ȟ`���ȳ�;�E_n��M��8������"<��Q�S%n�s��C�c{��k�����Lل��͚7�N��C4�X
r���ҔS旺�/D��(g�F�VĄ��7�)]�h�9��	��	��_f�#�I�LRڢ:Ū̻�{��6Ȥ�� �F�	�jN57���u�񣀠&�.E�$QС0}��j�b18���/��p��'3����+h/Y'ǭ�)o���BL)(���P�$���LJ �@�2_�x�>1�^��|oO��~�167�@��X5W��x�ɸU���j#:D�װ��#���z���W����>�O%U2��Ck j�t�P�`-x���7����fѕ� %ܩх���'�T���L?kc�T��gX�F����a�G[�=}o\Ig�Rj/1}�������
Cׂ�zr9
����qIn�o�C�f/�\��e���"��#�T�|:F�:%x7O��
H���R}b�4���^�).ՃR-3���Z5|���)�ȕ��J��oi������!���i�Q���Q��V���Usm� ��j�g:"���h	�[Z��
��^��5������P}cZ[��5F�h�$���cVl�u�V���5�nZ��]1��-Jb����%��lk[��D��ө�D�7�@��|�p�9�4<*#���)|�����%F�����p0'�7�J�B��I�@�u�k���˫>M0.]en'G�ND�e;�E�����V*/U��P�C�6�^w�CYY����Z��<���o΅ ��=)k�`�&���(9
�(3�7�7�P�[�qO��NW���ׅ��8s:�x����c�\��*^O_N�����=�v]���y�2V�f�H	�R��P-ymL�Z���e~���+�3�{��h_�	��y;��ҥ֔���5q�2���V�_�����jw��q���z]��.���|��g�F��������)�L����+���}�X�������*-�K���q����^h���Y�8=bVBu4_�yŨ���&_�$r���Ϩ+y:�ˍʬ2S���?��P}�����#BQ��QHu�(C�����R������]�|5C��Vy�
Ơ���q���cl�o����.Ih$��3Uy!�5�0l�%��y�c���!�Q3�'=�P��~Wb��W�����Å�}��K_�!��>
�ƨ�O���#�J=��|`��]_�p"	!H�庱���e��}6�q�k߷:V97���`ԍC�JbV�	�#5��R���8�?3F}V`�Z|Ӊ
�gZ�4�gj�=��'x�RE��֫ڤ�R}G���'S��ʌ5��	#��cnZ�"�Yg
%���C���(������-�PhT�b�0�M!���:T�M��Q��<�ʑ�Ʉ9���[����|}N0���>��������֖�GU|���'��r�.�m�?ev�7<N�>�-��Aq�$ś���Q�K�/\��I	��ld+|��t��I��e���Û,�2����>�����%^���-v�r$A/|Zĭ��;뤍I�`�Jѵ*�7�,�*�Y�xf,?�S��0w���?��{�J�A�2M���L�l ��w"��L�x0���K�� V��V�U$l�x-�-����V�+��*�"ѭ���RԤzɘ��
�bd���uUg	�`�[��t �y��"�`�?�y_j�Ȼ�Fw`~����m��Ɯ3����R6X��c�7�sb�7d��>Z��U�F�3��),�_F���R����i| ��[�1~Q]y�m��+X��s���n�4���-;p�b� �  w3�WX��G��u���\�pE	6�6�����{KM̑����Lu�*���f�qWf)�Ԩ �� �¤�X7i�����zA�׀�����4�sB���3u��0�m���G=u����Qw�9Ϸs���t�.��R��_��W�f��V���5�r=��A%{w͆!v�J@Ƨ��sz�w��g����z����c������e�?��åT�hxN[�x�5�G%C_�����P
��M"����M�P�0�H����x����>
ĻG<����P鞓�:���i��S_��]��<��ɋ��S��Cx��=D~������b拣��� F4��N���0}��_1:W�b<_�����'�j�>"�B?O�|�zh�����yc͐wC�q�� ��I7���Ơ�^Z�E��P�W�acx�e����_��Pٍ�A���ǻ1
�iU"o(?���qD���\cOQ���š�� ��c��u�F1"g�1l7tO���Pݬȟ����99;�M=\���%U;�����7+h ��Jf��<c\������q��;���˲���	ɯ"�Ώf�~K�KX�8@���K
]b�� tC5&��;�v��.$z/����O�'��"U5��~
�_��M��(�cр��(M������E�+�7�q�L0
�2ci�7ӭc���3]i��g��DsO�h�{��tr��l�Ο`S�\��u�e��u��^���ͫH�p��ُ.�Y���]$���}h�d'ke�H/�b7���46~p_G�`~Jz��	~�-��oa�����ɡ4��g6Ä��ㅔ�jd�����V��P$�@��c=�V����$�~��e5���u��zn�P�E��;v����`�ts�0}uQ^7�:?����%f���{m��`-umW�L��Kڇ�9�+�g!r���Z`��}4K��R0�gb�"M�`s��s	L�,���:���^�ށ�^n�2���d��5��kuiS5~�T�&�ʔ�!��7~ќ�.0k<���#�����Ǔ,����O�۳��DQo�3x��+3/��G�t�A�j�&
��h23փA����oK����$��N��-й&҉R�NŽ��C� �?_M�v�y*��.��Ϟ)F���Wm!��O�sZ�>�	&����{�P�?<�����9{�7j��R���c`���Iq�Ȍ1s�
�$jK�}����</���_�?�L���c�����2������s�nB
�cE�7{0�㡜�����'q�y��UEt�����|R<��0l*���ػ�e���
�_r�����n��&&E�`al=�8~�ڝj���}�I����c�͏k��~��|�(��a����O"{���������Y�S73�y~S����P�����>�W����뎍�q�O�������%K�7�F�fbhoPn�ž���~�B�
�Zg���J�%�E���ܡ_�{�����q�U�P
O]��%4K�����8�`�楗��H�%�uJ��4�&jVk(d��%��b��1Uw�3��@L���80=�N�Q�`�}�|c��V�o䗽
0����>�n��@����ڤ��5����'�d�E�2|~w�֞z���p�:l������L��(DM��W�Lk�а�y��7���I�w�����X�
�K�QA5p�#���N
���.�e���y6X��\����PSͺ)�~$���������\ҟ��[4�7��'mL��13�ޕ���Z�w��T��}PqF64߹쉿���?�^��[�g��{�
~2F�ں�M) c����_�θJB�"�Gjb��D.�{8����}��`���z_5lk�7���E��Ǉ$�D[~�)=4V+��U�I�K����X鷺�2}"���J��~��}�g��Fў�(�N�\�.k�f��!,���?A01N�Ժ?�O�N։�qu��L镥=��Z���W�����싢��B���	�8��q�QEJ�U�ڿ>����zZ�#��|�¥7�}�b��P����o�n����℃M\�w�=CM�	�"�{q�>�����;�����+�B㡚Tc�S��t����-������KU��,s4;�u�*?Si&�@���?L��0��߹�=�nӔo���߿���Cg�      $   
  x��Y�n�H]����&	`	|��R�;��h+�`�lJdY��b���b�g��Гf����cs��,R���7�|�q��[2�ك�DH��\D)��CN�L�2�8=�r�Ֆ��+�@qz��rʓ�m�#N@�E<�*������ƫ�2�d���銜�����O�\$����Hҗ�g����,��ڶOWG��_赊9KRz�>�	=���-��`��/h/W��V7��D��b�T��A��rӾnӞ|����3M��X��[�{�iz�?�~��`�a��w��mr�XM}�/Rz�h�gѶ�|$F/s5/vu��3�SD�����*z���^���F�y7IhWe�f��M]������6���g���F>Vs��r���=���u@ɿd:�X���B�dțL$��8h�t�'b��'�)��S���҇��J˪��^z�f�?��,�_ a��`�KV��21gZ�_r�"�_��.��b�rC7�d"$��,耱9�[��k��a&UƖ�"'���V�,��)r=<��E�i�+�I5�6�u5�3�������>�:ԭ\Zz�C.�"��O�|�a��^��$ީ�Z�I`!�Y�O���8��I��l�*���묓�)�WԱ͖�{����a�X��1�gO�&y�4<��Zo���st����"�%r8	<?�o����C����3r'�L"�k�m�~�g7G�-���U�;�ӲlǮ�(踾_�͑O3
g@}�����f���	~qZiM�p���B�}`��z�-,	���Zqri:�|_?��FW.s! 7=�.Y~'|��?#�����π���MV��7Y��c�d�N�����I�ϗ?3���N/���e�:�����G(6%Bd�{���z�+���
�Ӏ���(؝r%B������z.|(���}m�������T{�r�i���h8k�쁮���r��q�fOz�mo��4W	@��S=�� �$ @t��������txA�	�צ���w#���"���$p�� �W#�2��^��Ʃ�s�~�{\�j���篎 ݘO+؏B7A���w\��l���y�V��
M�m<Rr�m���&���65�A�㢡��ە8��T�B!�:(.Q��^�a��V�_���Ώ�w��Y�	�Ֆ��\���&W�d��4k��� ���*��v�Q~�����v�P��
�x�U�4�=�!MF\(́�����5M����'�Ø�o��[����lv<9�{uT�
j����C^K5e����q4m�v���Y�N�6r�C`����S�	_��ݐl<���*�ɛ���V^юa[ۮ(����I�bȹ�(P�P؏�{���;s�=0�ðw����9��9�_n S���o[eikr>�0?��
\�0똺.��ѽ��)�E[���`��j��.bـy��ƨ��:�i_�����h����i�̹�BPN-� ���I�����.<�Xa��(����.�7����	|^��G�g��?����֪88P=��l����o���A2�d8�x�1`�2��74-�x�sJ�}���Y.8~�0��?R���-��r�/���A�d�P�:�e���6��j(�V�vĥ8D�A�Uu�V�s���O[�U-~@�a�}�m펿O`U<2���,Ũ/L)Ea�Kd}]�[9�?F�w�-�_���n�tЙ�t/�Q2�@R��)��K�&4��8���m΍&�f�g�˭7�2�}o�+G��U��o�	X�s��~h6�O�=vŰy�X+�0=�3�x�=1!?�옮��a�n�m@9�i{=%!I�\���B���\�m�1�S>����HF�d��v\	����Pal�� .���M&8�0(>n��o��r��2��c��c��1+��ӌ
_X�#c��_�g�l�N��9jB�y8��6���FU|��A׎���/|D�a�n�ZFlZ�E���#-@d����c�`f/����
�Y��*���p���MM&�^X���\L&2y*1��(϶���MX�S���`���f3��R�JW��Y����?�h�J � {�����)��!�/"�8�ile����0G'_���C��� �J 7�Y�!,�H��'�K����{W��(�j�|��-�q:lx)���Ҡƒ7��j#�����֊�珺ro9KZh����;�QF+�E�_������͗2��?��Ta��͊�-5O�y��-�8�5��?M_%tP[)�gO����'��s�G"ܚ#}��	��f ��+������fL�GK���<5A� ;��u:UX�	��,���!S#�� J��30�f}d��)�5B��A>eS}zѦw8z(��W#B�VqFƵ+v���]OS&��.����9t��#C=�z�d�lz-:̞�����^���d7��Y�k@����T��n�o{�v෍-T|��NZx#����?H����b�x�va�P��2��N=ꗦ�^�)i����j�Ճ��.,I6�M���Po�ӧ!�
�ڷK�U���>�������|P      %   *  x���R�H���)�r�Va�%K�}4��l a��K.�4ؓH׌D���>��R٪��~��[#�2�Jm-f���Ʋ����o%pv�h�3���pNrq)�r��Y.X,�{��ܰ�3u��>��V���q�k7�V��g�\k���L�,Y�@e��߮��sr�����X�L�w��U9�<tan�����2m?h;�ãW{As���^��X�4γ�P:UE�6	��x)��1G�O�&�g���6�h�#�����XIC�k~Γ�,�L�c-g�Jӂ> �x�I�e&m�17F��RL\Ċ���j�r:QiI�M�N�V�&�2���R���y��U�c%��+�+����^�Ly���f�[��J��T]R�p6�����&{�(�g�&RY��`Q��*�HD��'��l�ʋo��+|���ʸĲ����H��]h�E�̪J�?���8'��rq�P�
*|��X��z�t �����|�U�a���KU�A�e&4;���f��pa�0lח�.���l.a����	?@-�T�%���.��o���6+O?��ؒ�9�剼 2ɷm��j��DE���|�5&��
wW��o%��$��(4O�u�8��4`�eΘkΎ����[��$]V��Xe(f�e��`	�N��ju�܁?��bXس��l���F��<�`+t^Sr\�8V�B���i5ZA��d�F�%����I�� s&�h$p���՚�^��}��N��*�AoA�����L����"]f���t��Pz��zĿ�H��#DBZH�J�rN�S�H6�r�(+<�TBu���!M�ʳ�WfA��%Q�4ɚ�>4L9����@\7(��g`Wbu	����)�%n�J�<����s^��uSja{�^F�q���x�Wr��z$@i�%^p�m���ku�Y��X�ؙ�ea�S���r�����r������ku,jz~׫M�0��4����E5sD�@���ZE�=�$�&,3 D[rr:�a2�
Ҵ��F��Ă\�ֺ6�t�bR��k�EAeF$#Us45ٳ]���_)�iAM-X2�ԇ��K�R
��R�<�����=���K��������Ҡ���.%��Z[��`q�l�Q������x���n)c��&*p���s�|������4w��3����M中�ގ���j^��-r�����8�PXA�w�%Q��|�7#�(W�KTVh�Ș���dU��<���f�1�+6p8ޖm������<�5�J�g@�w�{���X�)��[3v��5��7Q�
�rY������M���sQ3��Hl-��$�e�	�vK�����ȁn��/IRB��.
Y��Ufr��]��&"������n��l�'�c,sH�Đ�Clp%� Ii�^Vz����Q�5t�m=�j�z"�� M��S���W�uV����ӛ��}h��8!����W��{P�-�ќ�{,<8e+_5aԗ�A#˖�沥�3�Ja���Q}��5�Ћ���#�_��13{�46z8��Kdr~}�5�ee���nå�Lե��q���1y��c4��#�����;s�i��*�^7���T}wsisR�0qU�Y:2<��P��$/�\��%���MJY��t����N�l@̴�#����v~�����iӦFp�Uц�:9!`p��a;���$��Q3�k�?%|f�����}��5m�]�	���������A_h	�VL��09K,�ِ��Nqڬ##t./p~��o�L�3U�Mو��	R����F�>M�F�20`9���K̍�(۳�ڿ����*��K~��1@�ͭ��9��I      &      x�սKs$ɑ&x��.�"�K!��6;�LT�E ����3�3��G3os�_�?`���aE�0���=�ت����Ex<��y�,��afj���~J
�Mvwuq{�Ɍ#�
uT��>"�WI�����$���y��~�����h��E5�[��Η�y5�/f�������Ov����K����v�q^h�>돫�r�T���)�(�w���M�0zf��ЌfR�4�ޕ�r6��lR�w=�Ͳ���u�����T�s3��U�c9�F�)|�c��Bp����yv<+���[�>��N3�|�q�c<�8.��h<X�@��t������lY��|0}~�f���οM���5��(���ͬ����\}�b���뛓p�L�%�qI �"�]~�����<��2��Tv<]�����!��7z�CN�8�ੜ���tԠ9>�EQ�_�q4\��h��r,:)�C�`��ht���l9��]]�f"\��2�#`�����o��h���僧`۶��X~YX��ȫ@ዏ����c�����˯�s`Dvs6�����������Br�c޿���|�친}^ly��E9�&?W���;�y��j���_�w
���682�?=??7]`�i�UkCXϨ��G��׳�/�٢|���|�z�]�!��!��ك����OVh�����`��:b���98g��~��-� ]��!�7g/���Q�S	Fn�e��6� 2��ޅ�ת�gp/��.?��Ţ��Y��U�n�I>��拗�*ᩳ��?�F�;����{�c5��/�q@���������������?���\�9���j��L�ӽ͆O��N�����/~;+�����)�g/�u	u=�N/��:5�i,���z��j� #4��~C~1.�Mz^ۂ������@�6)����r��˟F�i~�{ӫ���Y};�"������}������W3!z`-���x����_��[���i�T� ��v�Ľ�����-�(s�����wNON���;�P<����R�_~�Z�A�׭a(�6��~��8�:쿌(��H�v� ivӿ��C��e���\,�����+8��S�Φ�j�m�Ѩ&*���4��z�Y��?���㲚�������"�(e���,.歂�ο�EG�{/��G�Zɳ7W�﯂Pb�� ��y �h���Lǟ���)���/�������>W��rf��W�9���e�9�do�4�֩�K��p�[4";>����h��Vhtݢ]�:;O��|y��Y�W���Ѹ�>�(�!�2.��~?~��S��vG��t9{\���{��N���s�.�h�L&t��F���Xv_�#x��U�ϟ�;�n:}.˜�6ƃ_-���F,�X��7������<�����M�2�ش1r�qVF݃�ߔ���+b88;��K�`A����{��y��1d>5��;5�pE����ۛ�ۛ����Ӹ�<R�e����?okQ.٢�������ss��ǹ.���;�agԱz5�F�\�hv�&�>)�w��i��wg`�E��6�}g��>����SX���j�~z�כ��œ�w{���n+{1�>����7�x�f�U�R�̈́�_g��T�'Ip���n2��u8B��2-�.��
����q��ˮ{W��x��\�^|�����������T�������F�%0ֻW�Nx`���l�>k\��cB�m�gA��.�_�<�]�˅nj��Vy}�l��T?��:�~7a�v�N������]��K�������h2�K��S�WO������3�ZU>�M�ӧ��k����c}nX�w��E�-D��IP�5KGeϰ�|,�MFp| :�,��-'��(z��p^ϗӯ��0l��t�����w�+,g��?�׼%�����Y�.6�^�]�z���Z,�|�m���C����հ����ukh�X����.�n޾�Z������A�^1�=V�wP͗����y󓽫|Pw�jD/>�F_��W�#N���N�wyz��6X��cB��������yv�ӧ�/���؟\~�}��#:/��|���z��/X��mߚV�Z�����E����"�C-S^=��6 ]��-~�;\#KȽ�2��	���rv�w�s�u!�{K�VF~e�wc�Ը@A#O���h��\]��k�7рlAc�3<�ANg�����x<my�����?��������W_��Q��֘�p�);�	��A��PD�!b�L�X`����o��b����2�{����#G^;.w���Ĩ������ׯ�,�g)������d����ǵ_���Ό�p�-�[�E�r�D�m[� ��3�"56:`1B��T���Y�B�&��h� �fɺgZz,񁯱4_o�e����Q����d-��		R0o��������th��-!385�|0���rր�"Mw +�M�ʊj�ݜ�};�m.�`�;����>>B$���y�4�h���_F�	��x�$�a�%��_��`B�z��{�������~̢S����%�=����!�
��qw�M��,0��-�f��!�������C��F,����;�tf��d�+B1E6���8w[P��*�����_fCx�.Fn+l{�n�ϗs�|�9츃������t��6�s�3
1K;o����c}E��H/����OBRg�阆��16�����_��|7j�ؖ�e��l��7�ӂs��M�99�0�d�q�L�6bMе�:&<c����=ـ�MK����Y�	�n���U v��1³!4�j��FR�~l�l���S�dsH�Ћ.2ʊ��pT��� Z�W�����	�� }����U�H�Y$.�7�{�0�[N��\�<��������i�R�*���ӧ�|1�y��L�ٖ0���s�9�W��!����C�]���� ��J�#.+
�-nr=���x`��GTO�T�Eg��y��[�`��Bg'�*��� �*z�|��8��jR��-���M��r�x,g���k��ꍈ��5�g�Pt󡱎\Mɖ028�o�N�n3��A��
����)����I�߽��%��k��ܱ*?��U����:�W��Fp�l%J���i�4�E��$�)�����&_���_'�4wi�H����O���C~?�����UYT�y[}RF��p�G���v�Zg2|�b�U�>��1�m���0�͎�V�1�}j�,��O���n��u`�k��4�E�����tR�N~�^��6F,�-g��p	�o^�H�5��qC�eW7�������VHg����M]1-��� l�%�-�`W���K9���-�"��~���,8
��r8z��.�����?;c��86��,�-���<f�����Y`hs����yܧ*?=b���0;w���꧟ &��������v���x�l��i��v`�N>\\]�!@�q؁���ٟ,�gt�spu6��OK�;���&\ZK����_�7?�Qv8�����М��Z`��'����;��<��_A��
a|jd�d0#5�@B����=�	
��Msv{޿ˢ3����v��lnO��&���������n��Wh���X4� LO��*����[�
6㊑\]��J�2\��Lv�Z�^H�tb�jס�MYc�hp��e|���V���Q1���ى���+���%S%�"���֕���O�<V��T\�nǱ6,���}�+;���ӛ�A��jSN�S��R��k����9�@顜���˟磠�w�h�<X��#=an�)g�����q,{uz��N	X��ܖk�-0��#��O�i{�z�r��ۂ,�*_|l��'�<�j{�R�k�͋�����񴟙��YA�馄[
��Z�G��bWu3�A�U~���'�8���N:��B�>;;�����^;��:uk�� ��- �e��$���`��X:�l=�\=�34;~���_}x��*d1Ѻ�8����Y���h����m    4�7�m4l�\CC[�¢�#Y�Ʉ�k87o>ܜg��pf�!n�h�Yb��q9,�O�2��7�%�{b�j�}ُ`�G�9��?�o8B��"��|4�4m��2�<�j#��k��B1��>�"VPB���#��ԁ2z�LTs�>�FA(��{�D'Ry�����u`�`ala!�0`U'y���o���6$��ԅ��^�z1��y���s�|����6������b�׍�1�j
�/l>��!з��<�Y,����Zm���L'���/�Ò�n���a��ȏ9�у�0)^�cc*i.YD��:?�$렢���dE�g�fY�D�;�L�	m�΂��h�y�d*\��7g�gYL�'�w�ؘ=M�ռ���%84���䩵��t��������a��H��Z�"%|/o�]��Z#C懄�#ń)4r���F2�}���K�Cc0\l҉�3�d���q5�*zRv�dC����'p������e����Iv{vquZ�v0x�P�S:�=O'�����v=��O/�}��9{�����~��|�hT����Ѥ|.g���t�4�&",�u�c�?U��Y�4r<$<L�.��4��O���!�~�5��ax�q�(dxhC�G�QnP�"դ�S,\�L�p;�N|Ѕ��q�w�lV���X�ٛҕ��1���3g��f/����W�HT��鶺gƵO�T��d�+�P�֚�_�v�
��`�d�`D���/�g�-�
�i>D�Dr�����a]��o���V7(#�M���::��f%f��u7�M�\q�V_�����TW(���&��(/����Ss��#������2s�e�g��UprV~�S'S&<;ף�p
Fg	��s����${[��ct��^|[���D��"
�sY��Hs��+�y��tʩ !���Շ�,6_5�8��j/�MqQOU�n:ۑe8�M���7����.����i:{�1��=Y�l0�o�R��0����W*�?�~ؒ�C{�De�,�)l��"��<By80k�]&�uJ]�X�n�B��GD����5B�=�ӽ{�=8�xzbi�ūp�j�����+�[��Ͻ�L�)`c><-��~]		���u��_����q�ّ��	8+��,��p��L�ˆY5Ơ!|;��ŁS�$�����૘2��C��\�'7��I�Ϛ��a*&�Y��W'�I�O���r���p��}9�W3t�>��ː	q~-��7X���mS�����8����"(|Z:y��t2����t�]
V4����:���r�������}����ywu�����f�p)��E֟@Ќm��Y���P����V�%�.Xd�){��q��á;<)����ӓ�_sĔ[����j�d���r��٣��������n��O��u/������w���9��n���E+�������7oN���"���=p�>�?�T�� ;���Ag����|��?���k����͞~�֮Q*k-��inփ�x���z���k��t����
�P����.(�`�exO���p�lO�JV����N��M�\$�o*�������ڮ�x�ic���-�
�����=O\>W�/��B����l4���ks�2�jxN��*�3ہ hͩ�彄rl^O9��xvu��~��Z��A�b^�����(�}�����G̖�^�f4�+��2��&���{�s����<�(��0�?&��S��a�k��Aa�E�4����N��l�xd��~��,\�{��� 2����7=���G�Eh����;�mvN�t�:c�5�ϵ�=�w$��N�fe} tM46+�
0��hs�	�%��<��Ke��Od�Vht�0���NH�0]x@�kn��� �,��M���������1ݠ�4�>8��Z�8�)|�Q�+U\3Of��K�r����n�ٚ{mS��M:�N��	��2-|�0�����E[��
ld�B���O�p��8�6Ӆ�LG��<�����p�dAΈ"�b�M����/���,�.,�� ~.?��9��U��μ]�_�P��&�]N��z�������B
�a�O��zC��xuww�o�xCAj�����t��>�L�i�Q��Q���!:������ZW�W�Ϗkߧor}�NV��j
/����Ξ��2*{L'{1�yn����"�vH��6ԧ�i��VHHh�04�=.�M��#���wN�ފw�y�p��W�;��'�� ��X��k��]M���q�����u��΃@��TK�����L`3�|iEWR��0�ۉu>�ai`Y�N�*鄙0>���(��k�p����&�xQ�	���v��F8h��_�L�rx�@he�G"H��yQs::���uځfRaS�./Xț��08F�&(�o�,����b����D�My��ϗW'�ᑫM�B7�wԾ�hը�C�:iы�������aX�zh6Z����Z��-P��]�Ҧw�mW����F5�'�ŭ�Sh,��D��7���A���DÐ�Ɏ���O����n���~����S���]c!ѡ�!>������%~���[�G����)�Za1���g,N��(��ğC6�]_~A�����y��S�@I��:�<��`�ʯX:4�S��R\��`'�����ˏ���k4��u�K���a��$8C��l�:���ζm$D�.�%�����E�p�á�� F��@l�j�W��zR*Yi,��JOXthj(��m��n�DkO8<����>,�� ��	�����!���/�E7�N��Ijܢ�������%����>,��[uS��๹�t���8��֦sb�?�~���
2|�֖)d�nF�'<.S�=�[�B�ʶ��:������߿Ƶ��´UrTf<=?M���\n۞�m�}5�TF��ت�������Ҁ��2��!J�4�F�FN+���l����7q��߶����n�p�n�{�C�aL�BA��6|巽/��l�X��B�nx��5���IcvjOuGKqć��ݦaDkuߩ�8���i:�[	;HŽ}?�p�þxP>3V��ͽ��<RZ�/�Uv��hU���xKҕ2;NE�K3�4�V�)�T]<Z�M�֠�t�V��5��m����.m�s`��ǐh֒�zڤ
����[-<� {��&9�B��6k�m��LH�*I�J��b�f�pWΩ�(?UZ����d;'�c�G'XF}�Y�M�H���x��8c>�o�Ʋ�MIh�jʕ�[wc����J�[��!�\�����fM$�w���{�3��E�����Q��$Ct^��o�H�#������y#������$�������I�,�h�&`K��B4�2��p��1�u&]�������6Z�`���CuSp|�����K������/��y���,�͡�ע�$��g�sS�g-\�J�Q��c�%�H����+]	x��Ixbe�;։�ʞ`]�'�x�����^�l���P���W�B۶QB����d�:�|��#ö�q��$Ö�T�uE��b�^)�t{"8�h���$	�,m4�_Eѥ�����n�d�"�©�[�0�a�M'�s������]���cIĐЌi�����b�h���z4ą��|N����z}j���t�VG����'Y�,U S��,��X"��Te� k��J�j�X��U�&������q����eE�,�.�n�n�$᥹FB`4�K�;�:���|#s5?*Y�9.�F��r�y93�_�j�*�p��]�d�O� ��|+.��B7���CהBp�_�Xtv����$S�-��l��7�Nn�e��g�y^~L;*h�a�W_�3���aY��s8O���ٸ�M}��h���?3�1����0
w��)��2�kp��z���s���Xa�k�L⨻�9QIBU�]pl�4�=���5�����ђ�Y@`=���Y�����m�O��Le#�)���ɚ��qw;�8�Ԡ�a���\
߼E��BC(    �0���ނ�ypuqq.�l��<^����y~�e6D�ɑ�=�Ea�Η�_q����a%�:�EIR�����F@�jo����	Rq��P"˹��Ti������۠
ƺ�^��'?�pcm�����ll��>0W$;�=>�\�[�`�/�8p���V��������d��Ƿ|0����������{TQ�9��C���;`h����)�v�7���K��n(S���U=�Al"�Q*-�f=n����𞛉LY��DvIk$���ܔ����i��������}�K*TJ؅�ν�Y�T�v��w�6Ms�m� �&�F�ʄ��bޝ7�&�̩B�Li��u�T���l҇X��T�Sa��ĜއE8g��N$�'���}��0�<<R��Ea�y��[�>?��[K��˄�W3K�����f���jS`�ܿ�6��0�l]��c��6Y�%@X�����Q����l.��%Q�"Q7U��	ѵ��q3��POе�]A�j�<;j '����Zya�s�"X)�]8&N+��g��h͜$*�ŵ�(2\���� �D��'��GI��`%p��N:NT1]9K�x~X����f�.m����kZ��͛.	f��PJ����%���7*�7����8n����5R�^pGho��������P�[���(Ir^.����4��=���
wc�a�����_]�/��ݻ˯u��������=�o��Ofw7��wY�-��s�C5I,���W|Cߍ��e[��kv6y����Fb�9?в�f���F�y�`#83\�4ǹ�7����3en��)љK���9������J2!cԅĹ(����a��X��EÉ�v��mf�a�z�=����8S6���������3,���2����p2A=� �Ԭؚ)�7ZZ��W�
����L����⢨�K���ј��#� 0�c�q*-�~�]Vaz�u�S`�]�W��i� w��W�Ց�/Qԥ���o\��0�J4�.���a�j'��6q �HwX(\N^���f`����,�`����������6D��^@��1[!	�.;�G*7|$��{au�Z���l���l��L�T�c��4��5!��	M@�f���}��~d�:~�L���	x��V�ۤ�/��=\�:t���;�<��r�x,g���UR��_�r��Z+k�E4�3��M�#w�Jx�cJ�˳1v�Ռ�Ǔ��.�w~)�
A�H.�D��6e��˫���p�����6�i���l��[��ێ����GVUB`�r�Ҙ���
����n�UNn~��m��Aa���������u�zlo�;G��7�|Nf��q���������jX����T�?�-&:�Զh�G~��S2ّ���`2945���L�:�L��K �L��B���A9\,�8�.c[���4�j6-�9c��`�ů���d�JlNkn�UX��X�T���Õn�{���,�U5U��L�vS�Z1��b�k�9��HWe@�v4	�F��@�^��΂�
�<�MVnf�j���Ή6w
�����r���D'=S$똁�z{s�o�X�=r�m��a���YU�+^o���n>U����s��fQ�nZ�)Z�6�yὀ���E��i�
<f�}l�Q���#�O�������U�qΫ/OG������<wn9��*[�>������������`	�([��^���WF����6�1:ݑ��~,�
7�
���e���4�r	�P��ۀ��a`�N���tp��Eۇ�v
Q+k���6ױ�C[C	�U�y�tYh&�°p	VhHx|�'�u���D �	%
�1S6��@ �����F�֐�E��*�:_��G"�g^!i6u�oQ�%Q(ܻ��iin�փ
O��&�-�/�7݉F�d�F��]9��A9��^?s�|��������Z�H�V���Oz�f� �Z����H6�ə�����Rc���ר�Љ7����up�����N���O����i�s�6��p���^�v�
�qs��;��\hK��]
��&X���	���Byڅ�β�#�[�	�e�#ǱN�v�	�<��v��5��{<Y���+1��a9,�$U�K��_�І)�kk�"�+����cr�N�B2�6�5H*��A��vj�_�Cl�^~��kO���,!�쾚dǝ<�W����$J�P!Ț�M E�E�ZS�Q�lV��j]�7�Q�켧�#պB0O���2<HN��TH����G�}`�f-P-?�
)!��jZ������uEB��-e**
Y����E����{�&� n�d����$J��&���*�z�&)�N��
Q�/ǖ�F���{�HW|Y��b�v�ԪY1G�b�����
I<gM�c��/Ŗ��9kI���B�'pK���4��B2/^�K�ڂIY`���
!�WN�m��\�eI	�֫�Yw$H�+`�l�=��u�#A�3�Lt�j�������;a�|!�/�$���6F��lʥ�R�Y��=Z�� ʋ����(N!k]%ځ���ѝ��X�W
����6v΁�摮�E|ٸnGM�Q@�$��*ժq��9;���|�!"�݄k�[��
mH�4��sߊc{�ٻ�yhEc�-�ꁷ~7���y��s\�Z/n>�N!�Oʏ�ܽ��
���0���X�����\\ݼ}�=Z��&�2BN�����+�y[�a�}��[~���Ɂڿыϫї*�]$N�v�DI_���}TDk��%f�-�Gy���&��0vB '��pu�B��6�+m�!7���AJ4ïLv~zw{�s�a­ǝB��Z��������ikn���]�Y-q����ÕL�Ft8������	�و�E�����*\/ۉ���$K�j� �>0��`�F����6 ���x��Pu��l���و��VQ����b:�\�.ژ��B��O8f�"�?=??�Tx�[<lR�6&���1v'a��r�8d�%5Y��\����q`�a�6����ъ�#&[e�����3���V�.tI�(_�O�b��P$EA��-���5��۟giU���O�ٛ�/ԁ��T[�H��Ѫ0]�H��\�L��nH׮�ڟ#���=N;Ѯajz!�FU�����ՙy��Q66����<��R�d#]+�(of�,F{p��W��b$�ܺ�#i��B��Z�*�6���r�K�:0�\�:�M8j,�ux��̎�d�9#��U�ƑKs�ln��N(Y���N\�)t1�]�6�!o���]-��p{�v��7��e��0�8�Ĥ*�.��f���@"S^��y_�ٯ�����&�*���h?���`�^"g"���7��5~���qX�Hӭl�,Ț�t�,ɩK��#U�	�֠q�HD��R��$��l�$Xtx�
��#��BU�,��d'.��P�T���J[�DƠF�C$�d1RW�E-���v�0��,�j���#�:w��lHJfpJя��٪�%�Ek�04pi��XM���AF6`�u�ڔ��דe���d���;��L�F�d0��qi3iW�=>�{�%�p�c�ZR�Z�YG[����=+�Cm|��"����������ۂŎ�+���~:��/�P~�U�-ǽ������e._���/g������:���_����$��%�����X� GNXa����u��׋�#]��'1�`�Hz?20}8�&�$�W����"�Yc��
��
���������}5����4��}�w�x>�|��v�1D�ۓH����-XA��;W$X�b	у���9s�\z�u8}Ӕy:^%#�㌀������5��o��سEgJ�%R�v��
[��rk4Pl��`$�sn2߇�z��8��%xD�?��}����\~XF݁�	�E���&LZ�0�p�{��=⊻w��h�ڱ`$o8���=�!��Ck��j{������F߿����U��Um���r��ewk���Uo󦙧(�Կ�	-�np��Z�l( ���    ���`	1����Uv~˟�N�ދ��68#�)w��r8z��ý�[�ZI���\���rf6��F��tK�%Uk_�'�����ra]�>�/�k�t�R�0ahk�Yae�R�)�^8����h����؁� #�
R&�yZC�(�p&*$��I���7an9ep��J�Sa��F��8�W�� �t�����Km*�wN��tɸ������k���w	g�����7�7&j-{���������H�-'�E���Gx�Ηӯxk��x1���>
{��M[�e��*B��e���D�LdT	v�&Z�+Y=yZ��wb�����样$!L��5~���=�NK�dfm\B;0���婎K���OKrń�Y;�Bo��\���$$Ls���S�';C|s��h�NlƉ���M�r4������Y`�hs��l�5x��?A(:��`H<�����]AL��?����C�ճ���~	˵�}P��*�����ʣ�����";)���*y=!ʄF�~H���B���L��u$�*��0�3N�6�BC��&˜��
�W*�x�j����s��gF�$%ӝx������͊�C��ȵädOw�]Q
���0E�t�;u���^}�i��۠^r�g��z^ba��Zl1���w���W���pV��+��<R�ݒ�:A����Y��>����H���W����$�ӥ�!D�ƚL�n��C���Rȵ�EMB���̈́��B	���t.��`�b6��Q�a�N4�Xh�Px���	���aJa<9����b�85.�n�C���ъ����C��by�n�X �`c�`�LM�g�"�TR1$��><ږ�;ہyR2?�06�_��s�ek�NwOs��}�8�u�i=�������Mh����){��3��~�Sp^hc傝g���m��q�R�e�����R�ʥ���{$4�+,��s�h���D�=��"��P�>��U-"d�ǀ���*���)b�܄�LE^Np�زn��|���)����~+Ǉ�*�/~}G�J�Ѵa	��'/�z=�xU��Z�&�K#c[F)�rO�_�R�mXl�T��ݨ��-䌁����b#�lGX�����=�X�\�������T�K�n/�aqÀ��NV9U*�i�h;���� af�*+w�Q�p	��3�ϩM�(%��n��������J4R�6~Z�iW�JJbKy�FM��؉˹������f�59�g5�!Hoɶ&�z��� 2�EO�d�S%���.��6�.��хT��^�h3'��Ц�	T�"U�#��Z�6,N*�X����Q���L|���:G�" �LH��3��]61jb4(�JS�� �quLn�0��3����D�!��h�"dE�8g�f���j��P_�7���kg�i&I�0�z@ü�^p�j��,3��Ə��Z�t$J�c���m]�n�Z|A��luz��;�DE�%|��tb1!�#��n�ĎSq�@,ȃ��U�R�]�0�gNxxfV��'kQE{\%�:��Kv$��YE�Ȣ��S?,��+$U����9��Gu5B��)JA��JL�&�p�b�[ ���@�u��Օ�����t�E7�Zh�I�8��'(�q�;YT<nfۂ�����Y'���6��Ȅ�e����XOte������$8btX�>��`��A�|X�Q��(�)ލA�
uߝ�e��P��G�:��ʕ�m8x�����0��X���y؉��f��!w�!%2�KTa<Gڀ��j-Pj!\� ���+dY��A��p��ƕ1�9�K������k��F�הf�f�I�n���U���G�aZ���M]
��7	l�s�Z�}QH�t�L�K",��bqXH]��� ��B�����)��N�+,.��,����UƖ��FUpт��!.�7	׈bA�Pٍ�������8h�1
>��n�g��ˎ�����hf����տ#��h�G`��6��P��3	�)�b��O�ő�-Vp��T��Z�`�$����@K0��7@0z$FfPu����9ٲz�dxŢ�hH�AV���m!Gx�*��Wn!���`���Yq|b����d�����M\t�L	��Q�Ux��6l���x3 =ͺх��&��o�Vcx�LS7Q��<����ZL'�j��d:Ϙ��#/�BB���Z&
������=h���zb�&���=�/�T�b՞�㑙[�����B�#<�p�s�m�Bb�&�8�cށ��c�Z�Ւť�g �p��������H�0<��z�ռ>)�8{G�e���&�9��]���p�j�l�����l�b��s��G�]�����9�8��]�V<��h�߈/~��D��C�q�G�}x�m���l$>r�Ⴌ`5��'���NDNlM�)�h��v�8�pS&��>�]��et�[���9����t:�#���o�g�xӐ�������
�絺BAȎJc� ��>��Phs�!�I��~�G�R�2�����:��G��6���5\�k`�(����ua��(k�ppP���6����1"#*l%!rB]��8Y���$n8ّ���^��]dl]KF#n�eO�������k�Q���˟K����Q$k^�ߧ�9 w�M�/x�%�EaH�f$<A+d"��8�ve͸������*M��[$��/%΢�%JB��UC���q�c�`�<�
wîRآ����-�����Da`�h���z��49s��7Rۺ�.P����[�Q7�A��;ѢN��e�� Nd��j�Duٕ ^�����6g�-Y��w�r-
L�����m�~����	CY�p/����oo���6m���Ym9W�e��f����j�z{�rr��|�6c��&X���
�������H��Fp?�A���Ht&�u����J�zS�SA�%���`���&��i�+T`w�b=��*��M	��q6�������wճ3Äx���έ�P�������T�zV��r.+���	�*���n�Qѩ̎#*e[m�m[�8ڑ�Iwn���׻2D�S��4ψ8-#Q�k%�+��������E�aQ�Ͳ�I�g�O�.G/�!˨&*����:���Xz�i�
	�?���E�}�V�N�	��7"�}����Q���	7"H�G7x�	�	�7���R�ܤ�<��1yi� =ц1%kV>��Qk�8ō�*y �۩g�M4Xh|j��J���g(	���뛓�h�lm�)�;g/{0`,G��o����W�N��l��!��{?�ੜ���t�`9>��дj�D��������ǺB%J�ĽШkT,d�T��ttXj0�����U�>��������@�K��
Ņ��N�d+������6����2N �z���b[�gGֽ~m���-?���-�w�s�a��>�k�q��O�R����,s�3�.�>_ò̡�vٔ�S�U����4��B�B�L�VJnn��Z�����Mv�)_Ӓ���9��&�
Wv�"Fi_��B�Z��.;�To�eKj]�������L�R��������m���Ԗ�C� P�G��q��=M�w-�������WpS������|\��u^��~Mv\b������b+�!~p�=��Z���O����	&�S2� ;�T��٠?�����ױPW&�à.�8"�y�c��{7�������lo0{�x��h��,{���9$"\X8j;u;��:Ѱ�]#U�H]���y����	o�v,������9؅=�ə��s��6�u�og�ؠ�հ������M�}RhR�g-6A���(��$S�X�C��QWz޿蟅�.�:�����2v<��o����DbFln�?�����|:���ɡEs`,�r�}�ud'��S$<5�u2��RXE��6�(݁��qt�,Sj
��=h�6���ۆ�&��Ծv��[MW�^��_����u,��c���d�����(�}�������l9��oF��l�s��    W���_Ϳ�?��ϑ��ʮ�3��I��2̦҆�����+�U{����0��@��F�>�{�9�-����F�FzU�`�5�Bh�����,�Q��Mp���'�C����a��/0E��˅ե��E�
�x^͐r����엡�s�-�v�\�_���PX;XW����rf��}��D#%SU�Ш�x���6���-��(�������
�u7�r[m �/���ֽn����>��_����q뺀�Ȏ��y!3'��fFa�w���1��UD>�0((�!e����Y��%�A��aqQf�����^[�f� ��X��g�K�G�B�h�T��e���hX�� +$��gxA5���B�&��e��xz�^_���Ʀ�j�?Պ�#&[oU]pzֹ�\V��֝�zx��[/ـb�{�P���z��g��0q��G�w*�؝�q4\,Q�	X.p�����@s�&���t�����*H��|sWK���k��,np	��'ZђW��� ��w�\wB�S��:c���rb�Zu�֑";�x{�����Y��'\��r8��{���V�	1�����K�/��{u����������=����;�=��x��1
���	E;!��	��+�L�l�\%NTxE����8����y�q��2�u�$L���th��m�,�[��rX~���CN_���k�Jk�O��i.'�����^MD�"{zޓ�U��H?�.(��=�|�ieE�I��t:M��c�&��]��gX!{`�Sd�������&0w�y�-E��X���H�vH0��Yְ�\� ���1�T]46>�N��*:�+(tBr�ɞ�]��������|��.\��T�(�� ��<W�y�U���|4�4k��sR~D��ն)��a�)�Q����2_O#"Wa���ېHf�:PP�i]�� �!��C����7ٷN����Jk*��a^=+(1�̑���T�&W�	����E�O��US�E�Mx�7�.w;e���r�"ݚ֒
-P�buW9#8
�t"ɢ�\�Et�.�m��ܥ�gb����W,�y7j�v�f��t6y���7�v��9?P�㐪 ��6yW�p�����,*I]-	�"
���'��_V�뎇;Ų����s��0�U�,	��߯� ����j^N�>F�
F�
�X\Q�<E�N�1����&��]��O��M#=o��V�R�v� 	?
m6�^$�T|���4��$����:/&;T�X�D34S��`�|s�����t
4��$θ�1�-�pp��5̌7{qQۚ��`]1��k�7�����0qH�"�X2�&e���b�����jo9jL%ۦ�9��n�>dd?8Yǭ�Mg�%8{J�k����E��W�\۔><Y֦���t8���.*ѧ��-��K����+��C�P�ɰD���J��K@=Zf��M-�֫k.����q^�5�v�� ��_�1�M44�Y�t���B���lp{s4�Z��L3݃@Ո���\>l�1*oU���s5���.0�cL� ǳ��r|�季;H.ϱ��-�Q��0k�B�jvH�D�M(l�%�N�6Q��7�+�8��
�u"T_�B6S?6W�ۀ���VG7v!Y���y�C4#m�y���:�KTi����6l�����H�
�p2AN��w�fŎ�Tk2�2�!��������*��@���
Uf��P���ywuk�x4�_m'<
�O�d�����*�	�J��/�nV���Y�p߃	��5h�v����E�*�=hl�h��}´���ypu�rM�M��%��̇��n�ߔ��"/'��L&�98J�z���r6�r����l�o���;)Sa�1���X�P�M��v�i�U߄��we��V��Ǥ[ǮA뼄�鷲5��%�͍mYy�s]$	�[�n�Kc刲:`�w܁�Z֚Lz3Dv��U���$5��d������T)[~�ۭ]lZ�p�h�qr9���z��H7�ш�Fߛq�#��8j)��*��^%�!�I{l��*;��<m*."<$�yĖ ��tRͧ�U~��ņY�xmp�E	N�.����ҾB|�����S'[��X�!uYI�:t������)����N��J��bs_�^���%�m�OP�$,k�04��Z�����U��Z��ˈ(+��vj�t��6w/�~	�������׫+jq/����ܢ�e��Uঝ�_�oVـ�钬�i�ݏ�`����x�!�軚^έ���%P�U��h򹮛�U���m��Ҋo�K+;M�m���]�������h3��ޤJ���Tc0�g�����\��_��m�b%�5�w�-U�����)�5"�=�lS�DQ��Z����u,,�=���UӅ��VmPN�����B.��ķ������CZ�/�<�N�	��6$�p�K�l]H9j����qX
ׅ�6��������̰f��O��}ȴ�~�<�L��^9�����9�'�8����Z��m���$<U-��`:�>����%L0��h��&/n��n��O�ҕ�-������p�Ć�a5�����+:��;��{�$|��(yL3AP� UO[�$n)X\��Pd����:�$6Ev���*�yځٛBp�O���x��h�Y����&\�깫E��_���>�Y�(����a�M�e��x�BP�_�:�K�V�����C�T ��TKz��\K}�:T�����n%����M],A�c�����De&H��jX5.�==*{����U�0�X��E���r������?]��7w�D{/� �	q����r�	f0�}�?G^b�5w6Cg<����i�2�m4�U�]aZ����/���_�_�����,��|���c/[���U%�!*�h���װ�9-���/�����q�w;�ɷ.�D��)
�'E����$e��LA6��AIfXh���`�
ӑ��)꩒d'4�c_�GD��)��-��,����0;�A���-���_Nx���܁*So2̾���a[x'l��9V޵s����d5�M� �� ��,AU��|�"���=�����9֛���y�p�y�DC��*m�k8�k��(���[>Sh/6�#�]���7��D���3�;����gV�'ڝo�]beg�5V�$�Y1�h��b���ȃ�(�e��ݷǴ-�.z��J��]��^�����N�([���dh�WȚ��t��M�t?2��$�\C��!��'P�eI��Ovuq������0�v��7��8˕�S���[�ߑ���_~Ź#�=��v�]fNg�Www��<m��t(�N������`S���岤�+�����u��;�&��d��b��@KUs��䦧�.�Z�nu��Q�ǈL�t�r�P⧇�Md��,b��TIMu|��ԇ�b�:����y7BrlװrRj�2�*Z���2g�uWޏǲO稰	F' �,�c &�y�v<.=�ٚ�n�9����d-��1.������1��-�`o��g���ơ�-B������9v�/F��p���	��{��vK����yhVhh��ΙK���P��0�N,.+�]$[�a�	��C]�dX���ŅlSD%�̴
��@	�d����
���D��g8�f4|BW�e��da���.�6�j�Wk9�d���߿�l=�E=j	����qh�/��mk�	v�;a+���68�*��T�G`l����N��}�Lp���́͌�E�f��a"���z�t"����{�H�a���S��;��-5���fv�x�U݆�]l
oF0'�Pt�]�?����DGX^l\B$
x�l�a�l�A�E[i��a��/��&]�43�e� s^���w�Y;β���ӏ���e�z���O���*��M��,Х��F����͆/ni$>�\\n�]3�{�4r�rCV�b8�	�K��n޾�(GM��Po ���L��G�o�������������U^�@����}�>Z���Ts���6.7��-P��	�!Y2�+tZxԈg� �  P��R=:z-E��b�c馈��f��Â�!��`�N�Qx7��k,*�CK�?���#j���AYe�����(�d�A�T���x�ۮ�4U����<V��D�9[�Mm\7�X��̣�j�"g���c:!pn�X�c�
?�ɶ�P�%�Bz�O��(V K�����i����f��E��@�#�ڢn�P��Q��uM���f�>ܜg�5���QＮX<��0��n���Qd?䜿R�sP>�']Mܠ�V�H����,�����[�h��_G��$��L�![��`���눴��tM}4��)�y�T�9ɲ7nΎ��v�f!hOٛ%v���r�T.�*3[�>D*;�Q����c$Ug�9�{���c��G�O�fX!�ߪV�a�X�c�p_u�"Ga3qG�pI�I�閝�Z��%[�a�9�N��������m�w�M�¢������|Y}C͎I5ߖ��ޕ�/7���s0���5�e0E��i�+���.n��H�6�l��֙J��������wYl�v�͑!8�u50��|�<q��B�0�w�}`����J�9�H�4Wg{��z�%�<��2�N���l{[4�|9�����>�3w
��g'���AIO�����?~���U�kVa��\w����?.�ze�Ҷ"�Z���R��R�6,��ǇP����RE7����07`���T���P�>(Vb[`�!Y,܏3�]2MŅ/52��8s����D%m��	J����1� �����Z�����)���HP��D2����.�`�\��^���C�6(��D%0�h��ٽ6��`s�J��YI5����P@)[]�6�ɚ��c��Pt��ٚnd¶ �yc��r�0������B��L
K��6S�s��b�O��:L���n�5��VΥܶ��'��<�9%���f�5�6��`�\��]\�&l$�]^���/L'�j�5TB���=�Ao+�Jy����[�/�\����Z2}Z{�ÖƮ��!�G�t@���
�ӓ��������B��[ڤ�˯���l��*ᢚ`q�-*>�f�@En��ISx�(�H��?o6S�I�d�#C<O6��$G��ڂ ����fw�N���c��cx�T�ǣ�|�TmgR��i��X�����t_~k��s��$�j�6�vEb�ۀ�PIc]j��ᾨ�F&`=�b���C(e�lQ������ #m`�K������Ȯ��h��XMAႝ��d K,`F�������)g� :��W0rm��64n L��t���2�����;��+��N��^�X�3���Pt�$+�eL�Y�+-R`��~3��Dv�X��#8=�_�2�ܭ)���i�50���I�
0�_�s���bۊѰG�;r4<�+0͑"(�$���9�E��s .��c	u�g}B�V<6x��F�G� ���3h��m�
�����4��C۟6�S��د�3G߿����U��UC" �[������/7z����gV#�z�+ ����y��*`^�������Y���i
����ɭPl�BmɷM.�]ߜ]���np��s��Q�]�F�a5/�y�	B����S[�%;���)��|�_�Ѐ��*�)���B  S�1�-`��#S��e�1*`0�݃�[<3��/M��Y-ߋ��F$����i�M���H��`�B1V�;�>@B�ƛ��F�5zn��� 0����b���Hk��r���	�-Qq�N�N/�6�%��l�(%�z�&�=P�Z��%bN=A���d�ߝ&�d5�@�ER�c�8�K�h??��c�?	�V���.�A[z-.��0��JR��{	�� ���p��u�$%kB��`�\F���(�`j�E����i&;���j��+J��� �*
���X�O��h��Yr@ql[K2P ����E��
�ԠM�wb��xӟ�;��n:Yj���zM�r�n�b�g�F`����˂�<\��[��4�o{_z�7�m����(�1`Nsv8qh߈I����yG��ŢQui���ɱ�'����&0��ĵ��b`V�ܠ�W�s�p�Z+�V,�m8a�f+)Pw1�"
;Q��֜kfy�.PԬ�XjQ�����CQQ�c ��Ct0+h\HdCӟ1��׾ػ��(A����ᾓPGF�~(��
�/`]�o$\��i��KD���������
`dvr���-R��<��v�Y�4٧�r�SW<���;��"zq��8�Bn�����u�쮰�x�1�J���a���(���y	o�z��64�Mb�Q�F�>{ml+˃�~O�p�x�m�g��w���8���L��w�R�h�h�+�����d�]$+4 `���� �#B�`�I�y�I�V�&/���7U��F��%x��'�C��em���ʝ�����v��{�|��l}�5Q�	�-���^����r� ����g��޶�8�n_h��e �hT�T9+^�~��;iʱ�ۭYb�ֈ[S �E�"K��Z�-�!��b,��Z'\Kp���u8��~�I�� ]��uE�Α
����2�]�a�h0���ף�p
�f������3����8��}�����5���(������{)���4%HԖQa�ci*��Z�	E���>��MwBJ �ɵv���S!Өk��*Tvyus�=M�Nظn}�aX��x�-�͋m�M�>�Y�Aa`������l��Z��{����oâ�<�ق���mKc��� � �ٿ	�XAb��u�����f4,g���0ڞ�m<5����rX~C��+�͋ڴ���B>/���#�S�&Z(�j^N�ʃ5dn]���@yH�6]}}m�^Cv�%[*��g���h�S,��y��.q �f������汻���ꮨ=n�uhP�mq H��ڿPV����ߤ��m��d�?P
�u����Tp$6��R���.��"�'������]"z(�9Mr�:)T���h�Po�maNrB` ު�]
�@;a��F�
d��Vi$;S�<�޵���X�A�O�5P�#pvqu�/�A�
�q>���y
g�����z���ɧ��>^�#�
W�~��������8m7X��6�
 ���-�S[��n��~����ՉΚ����]4J_��"^P������K �/B�P���~Վoe��a��s���x8���(����u�/ƯL>�M�ӧ��+8d%��r����|���������=      '   	  x��Y�r�8]�_�]�����t�ؓ�s,O�jj6S�(BÇc�g�z*������ӏͽ�$�(;NUb���}�{�O�\�w�!>~y4��W��]�Tբҧ��pB<�%r~z5�Տ��Pd�E"��䏀1�ԏ����D	�	��BVB����l��!�c�*ߞz"$I"+�#=-jU�R�3��)�T�J�6 �铜�J�;�i�,?Ynb6�E��)z-�؀ a��s�B�o������N?}�r{������?��J3Q�/t�.�[7���:ƖL�(��m%��E��~ �e���O����	^V&D����@��sriLnTY/�+5��=[x���#�L��H#�� Lȵ��^���7rٸ��� O�c��y�D ��&�(�9_�M��ƶ��KT������M�}�FT
RtV�\8	b 0�h�Z��X#�k�51�-�5/҅����W�r,��7�P���	��*f��7b��#�8�FDp���~D��{�G �+Y�pe�-9��Q`��j^�"B�'��`%6b[j�m��������$v�aG�Q��t���4�P\�M����ќ�[�6C�I�*�19�e��'��Af�LX ��[�&q�^�'� x-W��-T���E�*md�Â�C��A�5���9���My�0�����j^� �k^�x�0�=��C� ��g�S]q��7!�m�i������J�d}��iB��Bİm�ES��n�,6?ӥ�����a�	<l`�j��ߋ���)��� v����V��BD`����F�yQo~�j�&�� ���S,00fT�R@�in�3No�ͯnT����Y)Vn�	�q�e��x��ʋА	��� 6h�����J���k�`��D+pW�Y�Y��}����LӅ�2I�ߥ:��6�>�L"$Q8�@�N\C��~�ZU �O�rY�>� Ty�����U9��(���ND���?K�b뤪���ߛ�r�#&�3J$D��L���p�L\V�����;�y�MTQʃ������]8@B�'�|Z�B�'��T�"AD.5�;k0Ԗ|M��V�V<\�*��Hjd&U>0 �v�f��Zvr@����d����@�`v#�X���H�=;"2�տ^�z���#>>Y�"�}�#�Z�\�@��j0q���Np �1�R�<��E��0��{ `�e�I;"�V���	�~��.��Y��-aNء�o�׶�99�q˽����{�PG>q�5����K�T�>���iA�)]�r�e�6�(+H菐� I`Ș�k���6${ʊ�iICD8.�1F>�+O��qo�w���r���Y�W(T�ρ�l�Q��vØ��;/��Eq�]���E-�Zȹɮ��7����e�Q�����Z-�z|��B@���
��Io|ߙ���#^��J��y`��:��C�DP�i?����	x���q}�֢��i��ː{{1��E&��AD�A�;r��ң����*c��r@/� K��r��"tf����CZ�E�E�1�0���o�Q�?˜��� ��yubݶ�&@����}��RIӪf����jA�gH!�n��S`̜*g>R|��f�]���ׇ�rSS�� 5���]�1r.�u��������A��x��;`څ�屭���q���1�����+�yS�r�����b�~�� �q�w����?��w�.@Z�cflA �����'mdN�e����KZ�������0e�9�$��k?�rϟ�x;ٛ	�w��]����(3U�>B�2��J����zM�ʄM��45P��?����-�Y��X��2��܊w
����jL�(K58�h�YSNW�$l��B�]��������Q\�8��_��Gh5o�T!����Uz�N$<R��dn�mHH��L���v ܱ2s�mLkۉ�]����\�pӓ5`�T�7��ؼ�E_��ƺnno30:��ˌ��T|�YI�w1���5+kc�.�m%ڭ��>��#��x�t%>��Kw�X���uqO�/�8!W��8g^5���@2�+��pw�{�8���*��Ղ^�"�a܏l����^ۙ3�k;��o�����0i�yАV�����1@B�6�l�=F�z���ྵ}��pn��|�G-V/�l0^}CZ���61`>W?~�R�x�\H�ċ�����|a��#"ĕ̜^B���E���5r����~�'�l�壠o��	�aZo��Q;�����W�'�l�e�L=2�t�t�D�v��Vʜ/�<�����<��e"�݋�އ��%NLr[�L<���G�B`IVn��v;U�_�qMо�x�k�N��ktrr��[�      (   b   x�3�.HMM�Tp�((J-.V�	85L�5LMMu--�\F��y�%�)
��ى�D�alhi�d�1�[jJjQb�BpFfAAf^:1�DqG� -�'�     