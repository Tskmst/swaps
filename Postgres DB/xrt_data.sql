PGDMP  
    7                |           xrt_data    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18100    xrt_data    DATABASE     �   CREATE DATABASE xrt_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE xrt_data;
                postgres    false            �            1259    18738    ftd    TABLE     �   CREATE TABLE public.ftd (
    "SETTLEMENT DATE" character varying,
    "CUSIP" character varying,
    "SYMBOL" character varying,
    "QUANTITY (FAILS)" character varying,
    "DESCRIPTION" character varying,
    "PRICE" character varying
);
    DROP TABLE public.ftd;
       public         heap    postgres    false            �            1259    18101    sec_cumulative_equities_new    TABLE       CREATE TABLE public.sec_cumulative_equities_new (
    dissemination_identifier character varying,
    original_dissemination_identifier character varying,
    action_type character varying,
    event_type character varying,
    event_timestamp character varying,
    amendment_indicator character varying,
    asset_class character varying,
    product_name character varying,
    cleared character varying,
    mandatory_clearing_indicator character varying,
    execution_timestamp character varying,
    effective_date character varying,
    expiration_date character varying,
    maturity_date_of_the_underlier character varying,
    non_standardized_term_indicator character varying,
    platform_identifier character varying,
    prime_brokerage_transaction_indicator character varying,
    block_trade_election_indicator character varying,
    large_notional_off_facility_swap_election_indicator character varying,
    notional_amount_leg_1 character varying,
    notional_amount_leg_2 character varying,
    notional_currency_leg_1 character varying,
    notional_currency_leg_2 character varying,
    notional_quantity_leg_1 character varying,
    notional_quantity_leg_2 character varying,
    total_notional_quantity_leg_1 character varying,
    total_notional_quantity_leg_2 character varying,
    quantity_frequency_multiplier_leg_1 character varying,
    quantity_frequency_multiplier_leg_2 character varying,
    quantity_unit_of_measure_leg_1 character varying,
    quantity_unit_of_measure_leg_2 character varying,
    quantity_frequency_leg_1 character varying,
    quantity_frequency_leg_2 character varying,
    notional_amount_in_effect_on_associated_effective_date_leg_1 character varying,
    notional_amount_in_effect_on_associated_effective_date_leg_2 character varying,
    effective_date_of_the_notional_amount_leg_1 character varying,
    effective_date_of_the_notional_amount_leg_2 character varying,
    end_date_of_the_notional_amount_leg_1 character varying,
    end_date_of_the_notional_amount_leg_2 character varying,
    call_amount character varying,
    call_currency character varying,
    put_amount character varying,
    put_currency character varying,
    exchange_rate character varying,
    exchange_rate_basis character varying,
    first_exercise_date character varying,
    fixed_rate_leg_1 character varying,
    fixed_rate_leg_2 character varying,
    option_premium_amount character varying,
    option_premium_currency character varying,
    price character varying,
    price_unit_of_measure character varying,
    spread_leg_1 character varying,
    spread_leg_2 character varying,
    spread_currency_leg_1 character varying,
    spread_currency_leg_2 character varying,
    strike_price character varying,
    strike_price_currency_or_currency_pair character varying,
    post_priced_swap_indicator character varying,
    price_currency character varying,
    price_notation character varying,
    spread_notation_leg_1 character varying,
    spread_notation_leg_2 character varying,
    strike_price_notation character varying,
    fixed_rate_day_count_convention_leg_1 character varying,
    fixed_rate_day_count_convention_leg_2 character varying,
    floating_rate_day_count_convention_leg_1 character varying,
    floating_rate_day_count_convention_leg_2 character varying,
    floating_rate_reset_frequency_period_leg_1 character varying,
    floating_rate_reset_frequency_period_leg_2 character varying,
    floating_rate_reset_frequency_period_multiplier_leg_1 character varying,
    floating_rate_reset_frequency_period_multiplier_leg_2 character varying,
    other_payment_amount character varying,
    fixed_rate_payment_frequency_period_leg_1 character varying,
    floating_rate_payment_frequency_period_leg_1 character varying,
    fixed_rate_payment_frequency_period_leg_2 character varying,
    floating_rate_payment_frequency_period_leg_2 character varying,
    fixed_rate_payment_frequency_period_multiplier_leg_1 character varying,
    floating_rate_payment_frequency_period_multiplier_leg_1 character varying,
    fixed_rate_payment_frequency_period_multiplier_leg_2 character varying,
    floating_rate_payment_frequency_period_multiplier_leg_2 character varying,
    other_payment_type character varying,
    other_payment_currency character varying,
    settlement_currency_leg_1 character varying,
    settlement_currency_leg_2 character varying,
    settlement_location character varying,
    collateralisation_category character varying,
    custom_basket_indicator character varying,
    index_factor character varying,
    underlier_id_leg_1 character varying,
    underlier_id_leg_2 character varying,
    underlier_id_source_leg_1 character varying,
    underlying_asset_name character varying,
    underlying_asset_subtype_or_underlying_contract_subtype_leg_1 character varying,
    underlying_asset_subtype_or_underlying_contract_subtype_leg_2 character varying,
    embedded_option_type character varying,
    option_type character varying,
    option_style character varying,
    package_indicator character varying,
    package_transaction_price character varying,
    package_transaction_price_currency character varying,
    package_transaction_price_notation character varying,
    package_transaction_spread character varying,
    package_transaction_spread_currency character varying,
    package_transaction_spread_notation character varying,
    physical_delivery_location_leg_1 character varying,
    delivery_type character varying,
    unique_product_identifier character varying,
    upi_fisn character varying,
    upi_underlier_name character varying
);
 /   DROP TABLE public.sec_cumulative_equities_new;
       public         heap    postgres    false            �            1259    18108    sec_cumulative_equities_old    TABLE     �  CREATE TABLE public.sec_cumulative_equities_old (
    dissemination_identifier character varying,
    original_dissemination_identifier character varying,
    action_type character varying,
    event_type character varying,
    event_timestamp character varying,
    amendment_indicator character varying,
    asset_class character varying,
    product_name character varying,
    cleared character varying,
    mandatory_clearing_indicator character varying,
    execution_timestamp character varying,
    effective_date character varying,
    expiration_date character varying,
    maturity_date_of_the_underlier character varying,
    non_standardized_term_indicator character varying,
    platform_identifier character varying,
    prime_brokerage_transaction_indicator character varying,
    block_trade_election_indicator character varying,
    large_notional_off_facility_swap_election_indicator character varying,
    notional_amount_leg_1 character varying,
    notional_amount_leg_2 character varying,
    notional_currency_leg_1 character varying,
    notional_currency_leg_2 character varying,
    notional_quantity_leg_1 character varying,
    notional_quantity_leg_2 character varying,
    total_notional_quantity_leg_1 character varying,
    total_notional_quantity_leg_2 character varying,
    quantity_frequency_multiplier_leg_1 character varying,
    quantity_frequency_multiplier_leg_2 character varying,
    quantity_unit_of_measure_leg_1 character varying,
    quantity_unit_of_measure_leg_2 character varying,
    quantity_frequency_leg_1 character varying,
    quantity_frequency_leg_2 character varying,
    notional_amount_in_effect_on_associated_effective_date_leg_1 character varying,
    notional_amount_in_effect_on_associated_effective_date_leg_2 character varying,
    effective_date_of_the_notional_amount_leg_1 character varying,
    effective_date_of_the_notional_amount_leg_2 character varying,
    end_date_of_the_notional_amount_leg_1 character varying,
    end_date_of_the_notional_amount_leg_2 character varying,
    call_amount_leg_1 character varying,
    call_amount_leg_2 character varying,
    call_currency_leg_1 character varying,
    call_currency_leg_2 character varying,
    put_amount_leg_1 character varying,
    put_amount_leg_2 character varying,
    put_currency_leg_1 character varying,
    put_currency_leg_2 character varying,
    exchange_rate character varying,
    exchange_rate_basis character varying,
    first_exercise_date character varying,
    fixed_rate_leg_1 character varying,
    fixed_rate_leg_2 character varying,
    option_premium_amount character varying,
    option_premium_currency character varying,
    price character varying,
    price_unit_of_measure character varying,
    spread_leg_1 character varying,
    spread_leg_2 character varying,
    spread_currency_leg_1 character varying,
    spread_currency_leg_2 character varying,
    strike_price character varying,
    strike_price_currency_or_currency_pair character varying,
    post_priced_swap_indicator character varying,
    price_currency character varying,
    price_notation character varying,
    spread_notation_leg_1 character varying,
    spread_notation_leg_2 character varying,
    strike_price_notation character varying,
    fixed_rate_day_count_convention_leg_1 character varying,
    fixed_rate_day_count_convention_leg_2 character varying,
    floating_rate_day_count_convention_leg_1 character varying,
    floating_rate_day_count_convention_leg_2 character varying,
    floating_rate_reset_frequency_period_leg_1 character varying,
    floating_rate_reset_frequency_period_leg_2 character varying,
    floating_rate_reset_frequency_period_multiplier_leg_1 character varying,
    floating_rate_reset_frequency_period_multiplier_leg_2 character varying,
    other_payment_amount character varying,
    fixed_rate_payment_frequency_period_leg_1 character varying,
    floating_rate_payment_frequency_period_leg_1 character varying,
    fixed_rate_payment_frequency_period_leg_2 character varying,
    floating_rate_payment_frequency_period_leg_2 character varying,
    fixed_rate_payment_frequency_period_multiplier_leg_1 character varying,
    floating_rate_payment_frequency_period_multiplier_leg_1 character varying,
    fixed_rate_payment_frequency_period_multiplier_leg_2 character varying,
    floating_rate_payment_frequency_period_multiplier_leg_2 character varying,
    other_payment_type character varying,
    other_payment_currency character varying,
    settlement_currency_leg_1 character varying,
    settlement_currency_leg_2 character varying,
    settlement_location_leg_1 character varying,
    settlement_location_leg_2 character varying,
    collateralisation_category character varying,
    custom_basket_indicator character varying,
    index_factor character varying,
    underlier_id_leg_1 character varying,
    underlier_id_leg_2 character varying,
    underlier_id_source_leg_1 character varying,
    underlying_asset_name character varying,
    underlying_asset_subtype_or_underlying_contract_subtype_leg_1 character varying,
    underlying_asset_subtype_or_underlying_contract_subtype_leg_2 character varying,
    embedded_option_type character varying,
    option_type character varying,
    option_style character varying,
    package_indicator character varying,
    package_transaction_price character varying,
    package_transaction_price_currency character varying,
    package_transaction_price_notation character varying,
    package_transaction_spread character varying,
    package_transaction_spread_currency character varying,
    package_transaction_spread_notation character varying,
    physical_delivery_location_leg_1 character varying,
    delivery_type character varying
);
 /   DROP TABLE public.sec_cumulative_equities_old;
       public         heap    postgres    false            �          0    18738    ftd 
   TABLE DATA           o   COPY public.ftd ("SETTLEMENT DATE", "CUSIP", "SYMBOL", "QUANTITY (FAILS)", "DESCRIPTION", "PRICE") FROM stdin;
    public          postgres    false    217   +S       �          0    18101    sec_cumulative_equities_new 
   TABLE DATA           �  COPY public.sec_cumulative_equities_new (dissemination_identifier, original_dissemination_identifier, action_type, event_type, event_timestamp, amendment_indicator, asset_class, product_name, cleared, mandatory_clearing_indicator, execution_timestamp, effective_date, expiration_date, maturity_date_of_the_underlier, non_standardized_term_indicator, platform_identifier, prime_brokerage_transaction_indicator, block_trade_election_indicator, large_notional_off_facility_swap_election_indicator, notional_amount_leg_1, notional_amount_leg_2, notional_currency_leg_1, notional_currency_leg_2, notional_quantity_leg_1, notional_quantity_leg_2, total_notional_quantity_leg_1, total_notional_quantity_leg_2, quantity_frequency_multiplier_leg_1, quantity_frequency_multiplier_leg_2, quantity_unit_of_measure_leg_1, quantity_unit_of_measure_leg_2, quantity_frequency_leg_1, quantity_frequency_leg_2, notional_amount_in_effect_on_associated_effective_date_leg_1, notional_amount_in_effect_on_associated_effective_date_leg_2, effective_date_of_the_notional_amount_leg_1, effective_date_of_the_notional_amount_leg_2, end_date_of_the_notional_amount_leg_1, end_date_of_the_notional_amount_leg_2, call_amount, call_currency, put_amount, put_currency, exchange_rate, exchange_rate_basis, first_exercise_date, fixed_rate_leg_1, fixed_rate_leg_2, option_premium_amount, option_premium_currency, price, price_unit_of_measure, spread_leg_1, spread_leg_2, spread_currency_leg_1, spread_currency_leg_2, strike_price, strike_price_currency_or_currency_pair, post_priced_swap_indicator, price_currency, price_notation, spread_notation_leg_1, spread_notation_leg_2, strike_price_notation, fixed_rate_day_count_convention_leg_1, fixed_rate_day_count_convention_leg_2, floating_rate_day_count_convention_leg_1, floating_rate_day_count_convention_leg_2, floating_rate_reset_frequency_period_leg_1, floating_rate_reset_frequency_period_leg_2, floating_rate_reset_frequency_period_multiplier_leg_1, floating_rate_reset_frequency_period_multiplier_leg_2, other_payment_amount, fixed_rate_payment_frequency_period_leg_1, floating_rate_payment_frequency_period_leg_1, fixed_rate_payment_frequency_period_leg_2, floating_rate_payment_frequency_period_leg_2, fixed_rate_payment_frequency_period_multiplier_leg_1, floating_rate_payment_frequency_period_multiplier_leg_1, fixed_rate_payment_frequency_period_multiplier_leg_2, floating_rate_payment_frequency_period_multiplier_leg_2, other_payment_type, other_payment_currency, settlement_currency_leg_1, settlement_currency_leg_2, settlement_location, collateralisation_category, custom_basket_indicator, index_factor, underlier_id_leg_1, underlier_id_leg_2, underlier_id_source_leg_1, underlying_asset_name, underlying_asset_subtype_or_underlying_contract_subtype_leg_1, underlying_asset_subtype_or_underlying_contract_subtype_leg_2, embedded_option_type, option_type, option_style, package_indicator, package_transaction_price, package_transaction_price_currency, package_transaction_price_notation, package_transaction_spread, package_transaction_spread_currency, package_transaction_spread_notation, physical_delivery_location_leg_1, delivery_type, unique_product_identifier, upi_fisn, upi_underlier_name) FROM stdin;
    public          postgres    false    215   rz       �          0    18108    sec_cumulative_equities_old 
   TABLE DATA           �  COPY public.sec_cumulative_equities_old (dissemination_identifier, original_dissemination_identifier, action_type, event_type, event_timestamp, amendment_indicator, asset_class, product_name, cleared, mandatory_clearing_indicator, execution_timestamp, effective_date, expiration_date, maturity_date_of_the_underlier, non_standardized_term_indicator, platform_identifier, prime_brokerage_transaction_indicator, block_trade_election_indicator, large_notional_off_facility_swap_election_indicator, notional_amount_leg_1, notional_amount_leg_2, notional_currency_leg_1, notional_currency_leg_2, notional_quantity_leg_1, notional_quantity_leg_2, total_notional_quantity_leg_1, total_notional_quantity_leg_2, quantity_frequency_multiplier_leg_1, quantity_frequency_multiplier_leg_2, quantity_unit_of_measure_leg_1, quantity_unit_of_measure_leg_2, quantity_frequency_leg_1, quantity_frequency_leg_2, notional_amount_in_effect_on_associated_effective_date_leg_1, notional_amount_in_effect_on_associated_effective_date_leg_2, effective_date_of_the_notional_amount_leg_1, effective_date_of_the_notional_amount_leg_2, end_date_of_the_notional_amount_leg_1, end_date_of_the_notional_amount_leg_2, call_amount_leg_1, call_amount_leg_2, call_currency_leg_1, call_currency_leg_2, put_amount_leg_1, put_amount_leg_2, put_currency_leg_1, put_currency_leg_2, exchange_rate, exchange_rate_basis, first_exercise_date, fixed_rate_leg_1, fixed_rate_leg_2, option_premium_amount, option_premium_currency, price, price_unit_of_measure, spread_leg_1, spread_leg_2, spread_currency_leg_1, spread_currency_leg_2, strike_price, strike_price_currency_or_currency_pair, post_priced_swap_indicator, price_currency, price_notation, spread_notation_leg_1, spread_notation_leg_2, strike_price_notation, fixed_rate_day_count_convention_leg_1, fixed_rate_day_count_convention_leg_2, floating_rate_day_count_convention_leg_1, floating_rate_day_count_convention_leg_2, floating_rate_reset_frequency_period_leg_1, floating_rate_reset_frequency_period_leg_2, floating_rate_reset_frequency_period_multiplier_leg_1, floating_rate_reset_frequency_period_multiplier_leg_2, other_payment_amount, fixed_rate_payment_frequency_period_leg_1, floating_rate_payment_frequency_period_leg_1, fixed_rate_payment_frequency_period_leg_2, floating_rate_payment_frequency_period_leg_2, fixed_rate_payment_frequency_period_multiplier_leg_1, floating_rate_payment_frequency_period_multiplier_leg_1, fixed_rate_payment_frequency_period_multiplier_leg_2, floating_rate_payment_frequency_period_multiplier_leg_2, other_payment_type, other_payment_currency, settlement_currency_leg_1, settlement_currency_leg_2, settlement_location_leg_1, settlement_location_leg_2, collateralisation_category, custom_basket_indicator, index_factor, underlier_id_leg_1, underlier_id_leg_2, underlier_id_source_leg_1, underlying_asset_name, underlying_asset_subtype_or_underlying_contract_subtype_leg_1, underlying_asset_subtype_or_underlying_contract_subtype_leg_2, embedded_option_type, option_type, option_style, package_indicator, package_transaction_price, package_transaction_price_currency, package_transaction_price_notation, package_transaction_spread, package_transaction_spread_currency, package_transaction_spread_notation, physical_delivery_location_leg_1, delivery_type) FROM stdin;
    public          postgres    false    216   P      "           2606    18364 [   sec_cumulative_equities_new sec_cumulative_equities_new_dissemination_identifier_event__key 
   CONSTRAINT     �   ALTER TABLE ONLY public.sec_cumulative_equities_new
    ADD CONSTRAINT sec_cumulative_equities_new_dissemination_identifier_event__key UNIQUE (dissemination_identifier, event_timestamp);
 �   ALTER TABLE ONLY public.sec_cumulative_equities_new DROP CONSTRAINT sec_cumulative_equities_new_dissemination_identifier_event__key;
       public            postgres    false    215    215            $           2606    18632 [   sec_cumulative_equities_old sec_cumulative_equities_old_dissemination_identifier_event__key 
   CONSTRAINT     �   ALTER TABLE ONLY public.sec_cumulative_equities_old
    ADD CONSTRAINT sec_cumulative_equities_old_dissemination_identifier_event__key UNIQUE (dissemination_identifier, event_timestamp);
 �   ALTER TABLE ONLY public.sec_cumulative_equities_old DROP CONSTRAINT sec_cumulative_equities_old_dissemination_identifier_event__key;
       public            postgres    false    216    216            �      x��}��m��elEG�uA|�6���a;�`��;F�goQu���FuQ�m���Z$.�^����m���/������������������������������������������m?���/�|aT%J!�OkѾ t C�e��é,C�A��e�>�������1FC�Dˁ��As� a[}�J'�Z�2D�W�c6EPD�~o+qH���[D�i`�s��[F�4� Ɣ���-g��`�W��v�FQEv�>�ݽ�2�&��}�\H
�e��ծTz���3M�����,=_���w�J�OG�}�|߿ʒ�����NT������h�*��!?:���I���1���r��ڎo	QH�����A����蹸�=U�ݻI"�H5��m2��O� ��V:�[��}_�e�/ͯs���R���\{�߷e�Ԏ(w�0�N̹|�{O�*�%<�������l�{�?d���' �����:�:�,����~m��Y&��O}��f�L�(?<�$�F�1�g�a��JXr{U�Ϝ�XHZ�#dR/^+2�V�u�&�R���^ ��8[q�:5ߑ~�S�TGa���8�:[*!�4څ�$�95��'!�Ll��T��t�vg%��-������\���k!��]������p�y��=�?l'�L�m|�n�Zɴ-�
z@�}y�~^��Eu}�u�N=w�3��ή�q��pM�����������g]�(� ���r���Yyժ.���in��=��}����޺4�[�?<��JdI��40W��"�J�0\�O��c=�0�v/�j���GlS�Fd�x"�Vq�f��T��V��w��+U���F�Y�˿�Q�a8�̽����ϴ�q
�&��[]_#�g���e��s������+�Q����������0@k�&Zrv��i�^p�j��a��nM�'�G��|߽M�m�2L)z�L���Ĳ���Z�Z
p��O��Ng]�|K�k�^�<J�0F5��+�L���[�r�G�����4���@?s�y�w�T9 ���)K�R��ŪA@a�yyhsˈ���{� L�n�M�J�bbV� �Ed��4��a�wo���r�w�L4g����-���Sm%^��e��z~�{�T��7u�iU����J�߉��|��j�Ɛ�m
�)Vm�X�l���*�2H�$K1���|?�2N��E��@ʉ-�ڼR%��h���(�
,c��l���!A��l��I��.�Ό��#���_a1�[ow8s��W�8��3L��c���Y��0\�n*��!��7o��4$|ɨS��3�c���ץ�	�C�ᔠ�I@����!�A�@ģ���*�R>�ЀH&����^
����M*e�=�-�&��@e@r�-:���nl���չ2��.9�ް\�-�|�G�0��1��k7|�n@
�_���\������
�F�#y���7*�
C�e�%ޤ�9���K�ךrc�txE:
���o�R��?�~8��#9*��e4)�&4�	�@��\F�9r=Т���^.C5W��K�\�E���#��i�^�V�u��]��~ �����>Ky@z!��ޢ]� bΜm�rP�_�p�,�q��J�*���o��L��U92M,F�?��Zéޖ�T�-�s�G�#���g�@��<�^���[�u��{���0�|�Q�!v�NW�<bZ�x��*�f��m]��M6��؎N;oC�������F`Dv�U�¸ԆS�k;�O��'��� ��S����� &����䎧נ�'��X�sz�z�[,�89�8�<�^%3��'�F�����o�'"��Ӛ��R��&����װ���{W66 ���3����\�N�u����J��-��M�c��U;Q��M��hq�A�&�@�	����0�r�o���=�a�����܉��������z/��ܜ�э�i���G�.���y��� I��
�6������W�6�K�Jk�m�m�n �uBn�z��q0��j1����9��F��>V�!�����[:��:D��o�oqW,=WwA8#�7�e}�h�0�:���ϿEN�k��ܷ�<@Q-�1ܛ_j͏EN�ic�J^/�6�^�=���WUn��p�|K����'����X�o��B�4鹙��YI��28헪�RL�[�fΝM �E�]�<|�%̾��b Icɗ�wx?�+���䍀Q�y�n}H��VL�D���8ZE�7��M������qA-H�7�3�.1��T ��?�d+
�<f�@������0�	vlg�����b�<��0A�F'�N$#���nͬ9
�7ԋ���@|0��Թ�1/��`f7���r�FU�����,�B�o)�d��p
ly�y�za[�/�)����E����t� 6�/����9Pƛ��+�^v�G��^{��J8\1�0o�k�m��l������)Q)���],�&��e�˿���y0w��5�kl��"j�s�gA�?ʃ�А��@#W�o��w�I��K����(�ٱ������m��>�򺉀�6��_�x�'�E!%{�eǝ~Ƶ��
����<�WB�*���O���M�<8�_��B5����&)dQ� y��������_����s�{�=�ޞ@�,걞�T�et\��L�Q[~�&=e\r��iHnc�7 O(��I֕I�2����8ק�
l�^K5��^n���x����g�͠��<�|�)y�bA%X�Lȁ������p�Gy�@�]�: M2��R
I��s�_u�3>�sJ�����D)�q��K"rnJ��r��ʡ�PLԽk�='�.��`8��'v�l������ ��($co�O����'1g���c�cyOV"]����hᤔ��?��2PH�^�N��_o��m@���8�*�K�څ����I�ɖP�|�.��Tz�{���~�|=l
i��@�t�d3�$���9eq.[}��=�������Gn$ϷԄB�3P�6�|���ܖ%�
�4kL��:Ԁ2�%Ӥ����@w��QL������	Q�w��d�Cf����*�ҷǵ�@�G0��S�N!չu���k/��tn���1�0%�a���� ��d�X�kM�dh7_��{{  ���Jv�4�p�~A4`���W���f����m=|A��R�v�
9�,��o1��bm�w[��L�|LNvCDJ����Q�+��B�Z�K�J��Ye�3���|�e�S�+��-^ס�Ֆ9�2����.M1�;�<���Y�#W���`�p ����>,
��@�zm籛2qN� �g��̋����nz��{Y�H#1k�įi���V5�v���A\5o����A8����O�����B#���V��kP��sok�^��}Ww+�X���'xK�sK��(g�*�T�=x� ?(�2u)�G�\K�$O�;+̷B:s��y��k)��s��I�/���S�=�A����y�^GNTX��fAa���7p�`v/4� \���L5/�������:��Ā��f�ED��+��6��DDf�0iזN�j�*`��Y[��{^�>�ؓ�y�<
��$�ٵu4 �>ߖ7��ڒ<к/���/���E�ݵ'^���pCZh\(ߗw����3���լ�����m���M-�"i��B^3oqK1�E�[�|g�X��[�7`6��)�>%h�V���l�z���yy������$�.��x�:kA��<t��u�K�N<?�$f 8�OI�g�֪��a���U��]=R��\�f����Ȟr5 ʍ�:���lT��������مjG�[��G7��L|�k^.����[��}s�tN��>;W��� Ug��D=j��n�׵N�*�\fV��j3�<��{7�"���SN gD6n��w�>��}���h�f��Y5g��>a�n���am~@��/�~�������Gt�)H�,�Huˡ$g6�b�]Ȁ_�L��@S�
eV{h������_��P_�1̙&��a����-��{@�ɖ�A! ���͆�m�a~�|o�C��O�(t�+�    �Uwq��KHz���rڹn5f;�M ���,n1�q\��K5��9b6+��mB��W���y��60�e�E����pI(�k��V�&3j���;3pa��?�J�+ |#5��8� Xl�Ҁ4��F��� ���ץ��G���v^�p���\��3ހ��(�<����p�\8��r~Ѽ��������኎�F��%P�'�I�ԓ}���L�H�YN����c�fS�������X; ��#����
x�ǅ\q���|��'���wO$,����d��>����ZH��x�6���EL�<��X9����lv%7��e�A\��&:�o����qզE�u�'��CZi�@/�)G�F�u����V�Z���mq\.��@���Z���H;T�M��
�?h��}$�\F�XW��}���K��+v�\��'��X֪�4
��:�,�i�g����g���=�-�7�u�A?aΣ-��O�6"�K�,��Z�/Ui���g%�@�)@5���ve�;Bo�b%+���k|�>�/��V1����7�)&��	���>������2� ��H(`=i�����_�5If��$��@1�<�? �qԁ�9�/������|�PL��u�;f^�^D� �-l�aěj��C��J\hN�N�SM��TR�l�P0���
��cxH@5�|�PL�/��z^>̓��e�f9i��Q����<6,wM�,K��@�*���VДc�S���sE��mg��W~�z(�A����-�v8A:,/�ZB�����y#�-i&�A�$� Wp� YDΗ�7D����pf:��S���<�]�]J��w�g�C��\�7w^ �,Zn�s�b�<����-1�6�w�U��{����ߥ�ul��~�q?�TbyW9���:|]`�<:ތ'�����~���9�������!���a�n�'7oѮ�����.�� �ö
�'���L�R���'8�a�K�"�b���^��^?)O�ö
���˓�}�A�m��ĩ�Q��~�^��1��,�gn�.9�(�9�GYG��0\]`��)���� x�3���#r-���]F^��Pt�K�mVwˁ���C4�ଣ!= >�P�Y_�-�-���`��خ:��m�B���c|{B��kW������2�M�n��$��ỏ�I�hOx��ڥ�h���6.ء�����\�k�~�Hk�w���Zyޭ�ǉ�xr{+@��n�]й`=2�z�Ϝ![��@ے�����} E`���a�͋I�;&��PjZl�'��a�Q��~���q<�]�S�o�<^��ߥ�����r� m�1��Ԛ��q�����º�H�z-�I�H^SwZ�p<�}W^!��.�' �et�3j�m�(0�x}M3Y�z]�\�a�iꔭUt�S�M���[��#A"���U�kC�����
\"3ł&�j��e�����knD�+� ��e }�މ��b��z���~��^����4c��&���V�s،a���Ȯf�i�k��-������C�
ئ��b�qO�y��N^ΐ�ㆧ���x;�c����b�G@w-����x���ld��:ۦ�t��G0;YX�^T*:�R��`a2��o��qH{���ꭚ���]I��<CU8����!��yi�U�k͕r����.�/����Φ��x�YA�x�/if%.(�e���zˁ���S��@�!�}9����~�g=�`nƴHj@Yg���xٔ��U�����{@Y_.2"dG�F�����x��'��݂~��Y�m/��C�:��3�+'P֗Y��V3�8��o�����������.�Q�)p�8�T�:6�9)O�5��m"�Ӿ���8��ށ���uY�p��OrH2_��5V����@ɜ���;ӉC�9pg��O�|����Xm�{�ft[̮�&����_8�)�=�╎���|6�0-��PY��0��ـށ'�<Dy��s0/l>5vμ�ݾyb����n��L�`�� �0���h�uY�:0<q�?�ˉ	���A��	�6R�Bͧb���n]i����P�4�h��N���h�6�B�z���m����)���ïM~ax�?'~��g�!MyN�"���u�s����^�͑���N42�B�\��r�u	V�\��u�5O!o{��p�l9?�4�a�y׏�,���+0��]��hr���������р�1Y4;�U���1LH}_t�p�jVa@�f$Nf����/ޛ�Qļ�����ͫ?[�Z����+��r-�r?8�圉7�/���;H�h6�p>1�@��7%`3/A��,M�h������B\0(Nر�b>?Y�%�:��-���ކ���T`��K����1�Y8�O�j�u,�C�-�����0���X (�%�nI��5��c��U;o���ɐ�|�"v�"�Y�e@.�
��,��ٔ|C�uj�r��R��V��A����ۇE��1@y�~�W�|(�t��m���K-��Z��HE�`�.�r�3���y���s�#RpU t��덮m���O�"�W�I�<�!���x���ܴ�5Ek;�Z���j�G���Gtޥ7��f>vD�-�x�q���w�<�o�}�כּ�z��>�����6���,#J/b�щ�G�^�qě��ėH(��S��P;�g�����6d�!UÙ
�S���E�n����l6(��>�P#t�n��_��b�*��V�(��E	�m�o����|��<&�������p9$�J�PM�P�.�@'�mbF�b�ܭ��8�s?����Dë/����H� \�0�cC�|9or9,��o��3"�R����9m����ݔG\(� A��p�r:p j��@XYj��V8_��f����xMOH/��"E�MO�"���g�~�@����4�mzrWѕ� �s>Qc
���4��q��n0�#l�v$h �
����1Ty)�܊����tj�9A�t�u+J
;���4x���*�'�TwI�
eFX��W&��g���	A6�/y���|0ܙ̜�w�@	ٜ
 �c$�r �R[��4zU �������*�����K�����r�0[�R��/�F.�����0��w��'��b8]$!{��vQ�}I`�p*/�^B�$U�)����;��󇥗煓�:)R!_��Hi7 ��gNG���&�M�0�?����R�j�����י:����m�;����]a @񎜖���� ��o�\B�#3�Z݇R���g�Z�4��s :��R�؎�ԝ�c��4�˹6~���Q�_{!���#�3����d; �G@�ڳ�c���M�Ҁ��8�ҷ�~ Ky�2>.�C@.�<�����J@�[�Ʒ��ȼ�w|�Ĭ'���D�-χ;��6��')P���:<�Svve��_��O����f�i\�/��c��0�9�F�-��lG��0|m2�g���CW��J��I�I8t�ī߻�؛XY�%��z����qǤ&�j@��<��3S�r�����ʴF<C����w
(`� �3h%�J˲��z��J�K�4�\�ܐ<���� (�&�
�X>R�^�C|dO�%�_�� ��b�}@ު��-��p�z^ʎ%�\͙��lo�U��Ry1��t�*����y	�&=�M��J��Ѹk>^�[_�_0�	p�0-���# KI����$D%$*͒�w����H�Ӂ�߶I�'��*n�� �����B?�/��f��"��y��m�tC��]�g�S�<U M��P�����q-·�d�̿�̜u�'@zs�2s�|�=�1Hs�`=�~BHl�1�08��� �� ���	�S+��F.1��(�z��%�0��M,d��䓪O�qo�q�fI��y�w0j�l��F���%wv���� i@���k7	��:�L��]	Y'��tn��_�v��if���p	-�~�g�] -  ��p���0�K7�
���	�+�F��CB�Io@J���W�? .2ۇ�d����������k�@h�ڋ�7��H�J��C��'~ҏցn;}x��:�\2����jDWH2�����@ўbn�DX�d��`:�D(�d�p�J@v�YV%�$1 QM{���S sC�xf=.?��ˈ��߯u�9�{��!��|!�0T����#zT�J.�A�Y��@��~}��XĈ�ĿN���LU��Q��"H��LU�G��&��y��+{e���2��V�)� 5DY�s�P<�@��43}a �+��A���ܖ;TWf�9����x+�C,s1���Oc?�XQ�$�v؈ 솋�����ѳ�&Ў����c1� _��)r��C��7E�F��y��f����;>�	Y#�$��}�N� ��>���Fd��ߗ����o�0�pq�ݙ�kΔT���IH<a��]A҈xBm y�M�3a�c)�_���8�gsP>��c�F������#� ����L����*�K�=Y`�Z���L��G��4÷�'d"pO ����F��ElU�dqBy�����who�W��P���v�j`4��J�A��\ ^!��(�eǔ��52M��3�w�֎�Y�@4M抄C�0��������jw՛���{6���#-�7C�.J�w ΙFE�@�D��7y�MTO�$���ހJ�f�=(����:̙@ꂋ}�3!��߆Y�A����'��%
�3����č�@�\��`�D��̇('Q�g�:���y�h������5�zg �;��Q�zF-�r�x�~ ��-J�o��.'��o�fz��"�Y�E
�ѧ�r�4��zU���Z�<�X9+40~�����p���/y�L�Vd���oԐ�"\ _��M�5�VE�ނ����I��I����!iE	�%g\��a���o_R'�)��;ѐ�����o��Ґ���;IKD�E	�"M����C��`��>e�\��BWCq�2�x�K �p"�.k�[�7�!G�f�=���a'hȑ ���˥M�8 ���$��ӣ�,�^4,�7l�!MbYq@�8�&�Q4:0�C�e�Z������<���WH��;��
b{�����:w�{5E&A��<���4��\��x��b�R&`:TS���&]r�d;�Mm�y�j� ��E;���}2�#��� C�~�K�#���$�? �����x3�Ri�9����ۯH�AH el<S5?TP����]��YkdB��z-�G�*��oM��s��^�a6H0?���l cN�p�m���D^>�9 pm�A�p�����vq�6O@>�ɟi8?�6Qhta��C@h������iv`r��=Dc���!�G׎��=vn3D^!��!4�@�+���<�th�����\��O���=lP�_��×z��*���W
����]��Z��'�;������Y���p�ᅶ�	���C�jH�R�#�����h\�2����VC�$��f����;{��÷ #g���+����{[�!YE�"�v��p>B�߽��[�UHS��=\�VPp�k�a� �C�'e�!�j`͵'��Y�2�Y}�� ҐkՀ_-�p��.�$캭����9"��{�GkМa2��}���k{d������I�㨳�z�Y���IL$���k)�5i뮜 ��O�&�G��a8�W��{������s����}e`
������<[�@�$8�"37@mУ�9|����T��mԿ�ߟ��������J      �      x��M�#ɑ��.�
��QU\�o���i��w�lN���>��u3G��PG_� ��@@fFt�3���7w3s��bqR�O1�i��]�������O_��?�%����/^P����������ӷ?|�C��^D_~A�����ѓ�G)��W�������O���_�����B����������O_�t��*�� k��׿���>��ϗ�Ѕ�~��q���_�<k��m�����?�8�?_?���_������w?�K��������������՟�������������?�����?|����������=o�'��ok��;WqW�qӼ���3x�N�Nf��u��n�m�m;WL�ۚv�@Cp1�-��ڴm���-m9Ma�FD��Y���6��Z�$�U���Eb�u��Y���e���!��F�>������(��e���(�6�"SݶoO��S��w|	:΃q�+���'�Ԫ����݉/�k�b��������֞�G���� �߼�Sz;l�
�"�Bt�y?ז%mَ�?�Y���ZC�����P��0qB#\�=O�4���Fč�`��Ha�~Y�+��F��NP7m_�2u�9����������Bc�b���yo�%"����_�Hs:�����sί_rz2��9�JE�3����-,���R�E�ÿ����O���?u����ّne��ʟ���W��ū~����}�������]	��?�����h��I���*�yl��
d�i�N'��rz���%���n%!�=�� F�}�{��D�t
����H�^�j��:8p^����%}9���)�\Kb��}.�y�������$��)OG��?�g%��զ��'�O䱶韽���5�~�`�]l��?x����%�!$�OG<I�}���c���G��e[ ?xu#��C��������1=G��w��O�\�PɈ����G�/�������t��}������_�+�Od�>m����{�]y�$]Z��M��&e�b�sj'޸o�I�.�/Ԃ���Vs��9����lz��CgNְb�к�I,�ɕa��fh3�HKw.�!߯��&^[�e9�V��,o�+_m�s�o�7�J��u��v0&Wd��#�;��v��p��N�*���N]��H1��f�����B�S�<��~W��
��5r�!nx?wE/ j�5�����%��k�%������׈q�Δ�����Ċ�."	��=gZi�eV�2��D^�O����ÿ�����Ͽ�j|�`ʴ�X+93��5k��>�p�Ӣ�Sin����uq�g��|s�?q�$'���k`X��]<��_ܢS�?-@1E��/��LM���&|�'����%#On�"����.Ӯ`8�~�MZ� �?J�o��>�EZZ��f�����Kι'G����]p��/����>�f�͝)m� ��}$�Q���
�V%|	�J��͊��Y��n���֥.ĕYG�ܬ`�KS�.�-�6�ִy�K��4�M[�Ѷ�:�ը���}������xrZ6������aT�}��/N��U�zՒyS�������]�����:���1���iCx2�靼��O
���X6۲�p{�ɗ.�z��B�\��\Al�� ƒ��ή�\�U�㗼ʮ�vUڸ�ͺ䎄�k��=a'�\���2��&�����?��5}���3�}"-oٯ�\i����ƴR����,�X�TE�]���]��������~�3�����/���^�z�s�Q�	e�~���yܣ�n�`��;�v}v�Yg���M)���<�؏�{��'agX�ډHD9����{��ޅନջ��x��µv�R0��7��ř�-j>Z�L��E�PW�i-��I����d�u�� ��X��?����Շ�|_�VI�S�z7��4�GK���}��}�zL����%y�[ʛ16�q3�c��}�n>q'+�l�R����=mJ���ZK1K灙7���i��^�#m_��+mJ�ڃӎ!B>�9�m�����UN3r�{3���R�ǭ�n��o�5nQ�}�W�K򥐬�lCre��M,���D�∲ �ڳ��滄\��C�\�3߬$w:��T>�'>!������(d;�w�'��/�P ��P0���o���T�v��vJ�T��(opD�+�>���������6�R��-��;��-����-^˺�6��P.q�~�r����^i�xK
����ӈ��]�eRǳ�{�1�b�S�/^rz�6�S����E�aߟ�����s��r�B(H��cYQ'{�F�s���"`�\K=�%�^���>w��[��oY>�h��#{������;�]klغ��;ѰU͠�v�x�:m�TE�gm;�#��`�7��ɸc����֚q7δk`�,6���j�^e�e���S��fN[{�h�����ʁ6�T��vMǷ9K��]��!��˺_�>���si��VI�6β&���-���z�^�������Gm��sgd ��l�q�C�8���#��B��dȻU?xi?�����Nm��h��G��tsôc���ܡ�7�E�*0?�򀗨4���[���z~g�ֺĎ$�է:��oz:Ō��8����}�5��f�	���!�U���{���c�s��o�.h�k|���\��fo/��K}M���=�8��NQ����n��P���U���ʸ�U�Ue�ղӓ"[+ԡ�3�6���B��a�󋗜�«li2Vn8�q��A�NA6{"����{ڨ�(��{yO��SSqs��x�}=�<eQգ�M�Kc@V���e��ӓW�^]Jq��T
%��S4{@��T��h�L�[� QT|R7�@Y�ԇ}�9��������$��s�"��!�i�H��[�k�h�:�	���Y��K�t_*��=r�?4;���+�*��^���ǐgS��H!V���P��i��/:�Z�O�-��j��[�N�A�N�.�+��Wج���t�&K_|��5�]F5��Fى7����yCE>[떏H)��J�[ŝ�u��G*2��C��Z�S|u��s;'�rz����*E�o����0L�X��H����uW�a����%���><�?��S}]�J������=8x� �p��yS?E�B�fSʨ��v�9�N/�ک~���P��5�ȵޮ�cJ\:w�"�����q�fy��ꔛo6���'���H�)"ݮ�V`/�\{/Ez��S�k�%�C�i�,?
 �}8���b�[��;-UkN�0�sx�D��F�x+��i��n�9���"J	��9ޮ�TӶmɜ�Q�R����sW-�O�яU��������}�����Zy5u����R~XR������_¿��ǉ�o��?�q��������?
oՠ��j=!�y �pQ�7tY�ߑ���гf����`zz��h����~���&�����ԣ�+:ܼ�P��q�Y;bA
0�o�R|�ء�����B0*qsm��������������[W�@�6�V��������.T���Q^rN݋�^�"�xw�׋|kN��7�9'��U�>�%*Iz�bZ��_dN��v������1����;.����[+�i��Krf���I�5�/%�K�%E䕮�;���Sl�:��*��f�E���m�p�"��=j�v!'�q�U0���4��^���+綵�J� Ѷ[�	g�
`�G5{�P���c��b�J��c��6L]K�����C3B����������k��+n��6t�l�e�3q��%�'���B��"�O�K�s�M�����&G�9bٝgQ�a�^�Qp�<|?�l�ԋ~v�v��;���DJ��v_��W���T��_�[Aо���������{H�̣d
��D_n.q|�uoe	�>�q	Lk\߹,��zE���Ԣ�"��t��NՅ��#�Z.殪�u�Zr����f�������[q�)�mk8��V����D[�+����|�܀�ǩ�wF���C����<z44�<n�6�s��ic�I�Pno0~��9@.��6��pm�]�㗜�    �"R;L�>|??�z������ϴ��ILX 5}қՌ��,��y>h�:�=��$f��Ym���˜�ٶ�#��]m�����4��B����ͮ�qq�Ժ�f�^t�6m��ȏ�י$��.�|;d�7�7�ջ�:SA��{g!W�mV����C`?���ѽ�Ќ�ܗҩ�7ji]A$b�G���4<�B(9;lY�qO�2�d�K�(�P��x�:ޡ�z����0Y{��G�?�����ע��Z�����-K-喏h�n��R�.@�ՠW�@�M�h\Έ]zâ[6�,ivmy	��]V��k�B�f�.c�Z��m��;�u�5fC���:hn�͝��uC��2��v3+��\O{��"��yCs��Y��v�O�P�/9�C�C�_�ȡ�k&�;MB���(p�PJ�'�
g��w�_rz�"������~#O�0r-:��(�\6��!/ ��h)uK-���{����>��^7k�����E躼x����7���Z��p��Ꭽ�7D�a�֝p��Zfw�{����n޶mT�K��F�jx�yGX,R\����ۺ��H[�̣^�e���j�D[c�Ng7j(�[�\��.�YwL��[�ֶ�Gϸ�j�^����Y�֮��H<P��e�6�Ū�#��N��zCPu��w
��� �W��a�;���})���<�ܸ�)�A�G��sj�J���,e0�Y���-Z0�v��v��w\��CWx�t��k�~����ҤK�����-_��,�2���V{$��غ6B;t�	��&׫iW���Ю��3T뀝ݷ��y̹a)B�a8)�����o3>�a��R�v��N����[��\�;d��=o����M��G��Z�����@��5��F *���7��解����rT~h��뇡�m�@��6:a �W�U
[g���*�Y�G�d����hI;����W�՞��ck�1O�M�2���͚9#EY,q-�yF���W�R��gYb'(Aa�1ZNox�!G�3۪R_N!�|��i���p��%�'��i>�H8�t����Y�0&�A]s��=��F���l���=+��[���/?�q>t�a}���-��{Sk7�4���f]�������e2�a~K��+��/�M�p�S&�4\���ƨ�]�H�6�u��*���f�3�L�I7�eٶ9����*UZ@���Ml<����#�$�'\CL��.]�C�Ȓ�ƫ\����Zl�8M�7ڼ�'_F{�Jo�L��u`Βǜ�c��=p����$\�Z�H�^�ug	��_[��YX>,��z��ł��4�c�jS��	�ݗ�4��o@�+�S�M&]�^rz2��C��B����ۅ�@q��vo�&���Sqf�y"�GI�e��(ś�R��[Ի�s�E��{�@��{˸�L���*���������%3G�Y��^,x\�w-��&M;Es"���iƭ���k����c��݈���[���Kj�w:�2yl���lO��~��K�"���Ͽ������vzPu$u��.�u��� �7�����QY�F��Ų��{T��>�7�m	���/�����o�w������_]�?����O?��� �9�N$�bG��8;||"�z>�)|�󆁣$�&;�#|�'¯8tM�c�<�<� �w�zd�'���l�1���!��;��'=W�4��>��$'/E���3<}%_�}z�B��q���'Z=U�`�c���	�?|Es�)x�IAM�H���?��g��#|<��< ��9�zOD���;�����a�ΰ�'Z}�"��I���z�!��O荞�*�Mч.W�D��.�{"���#�z�4׋vK�ޞ��b�v+�:���zcHoRw�G�.OD� _�s
� Ҹ�?���L���}���sb�џ��onA���D�ɛ�n�#�OL��G���Q˖�'sN��7v��GKo4Ҿ���Ő����h苤�F����Z�C�g,���4��_6[{+)����k�7��J��6��4W�D��%|m����z֏ty��f;"����tD���Y���v��lR[/�g�8 ���~RK��=b�PS�YK��̨u!y-��FF��A?yצ�Ds�&��E,M��y�T�B��̞�Q�Κ��dZ��d�r�/���%@~{�(<>)W� �����Z�zJ@�Bv����ܼ�����c���V���ÇQG͆i�c����� �h�~����/9=9��w*��AqV����T����0���j~�Y�q�/�>�-����=��cUHGt���ξ� ���K�zW������GܮWO)�_J�pы��Oi>�-v�*q�J'8,��9� �(�����N�@,S��U���K^9qp��]TMW)s��$= 
R��ك�v�����z�����Cz.>8=�|./tƲ�ܜb1ƚ�K(��;^rn�^���<a�j���I���gZ�b�(���' }�(��D��]V����I{1R�1yr[�z#�,�S轶vf�Ru��KNO^a�d��s��;��Z�7��<���x?�i�L{&#CDN5�~	+C�0nV�.��a��L��H{��K���+2�n��7K�:k�8$�uM��Kη�a�2,�����Ͻ{<|�-�u�r�Ҫ��q��~�b��w�r��V�S_�:-�/����PC��T�5Q23&��̛V*!!��ǵ��t��1�wԫq�R
+-�м�Y;�d�a�g���t�/E�z��kS�׊�[۷h�"�V=u��jů�s�����6~���7�﹵:��6:�gqt��s�>�����o����'V���ꔉ��ݼ� � �/��Z�0�ihxs_��L��ڷ:��^�.��\ֶ���L�S#lvH�m�j�5��>����C��CtT�-�v�z3_���?�&���m`O�l�.:Ƙs*kfa&&���c~ �\�������2zrH���5�0�l~7����P�yN߻眢��6j�`���Jf�u�jg�%l6Ӓ6��l>�)D���%NP���.�'��t��G���B�6x��16ϥƎ��Qn��?t;A��3G��Щ����w�4ei��bw��KO[�t�}�̽�������S��駋L��}V��9�]z��Q�F���'cɷq�B��"���wS�2��'��r�WÅ�@��� �R�*a��ܙ@%.	2�����51��cwĊ�8v��I�]��#�w!W��g�D�[7�c�{�*"	z��$�N�J�G[�`�~]Я@/D�g��d��(�蠧�qm��jc�Τ3��W?}��Yy���?.d\��[_�X�?�'w�>�ȯ7�/��9�f��L[2�+Ӯ��ckܱ#���)m����yce8�v�һs��4��\\�M�ɼ�7*����$$�[>��ṧ�{������p�zVh˳w��Y7�s �M��fW�V��Ż�Qk���w�Ҿ���o-�}��pm��A�/���8l��v}�y?*���s&	Q���E��@�}�]��n-�,��n�r5�v
O�]M�����Hzly3wӷ���o,�۵�d@�T�|½N]z��n.é]���`��y�����`�\�Wm�k�����U��7�]���Ñ���Z�v�p$���bk�����"o7uI�k[
q���u�`�WL�����oV��൥�W+�5{�=�t&��l˄��ͬ����`�׼�Kɶ����N����mis)�b����f��U�Â�C�<W��\������+(>�����peF�Y`Fr��%�'��E�}Z���R����FJ]������T7����A�@���Z#�[R�r��ӓW����iR���M_��P�R�SP ���HK��rn�	��{�U���ر������x[;}������יyS;�[���~R�q�ٶ�7-���۴����h�5�,[U��q/**����K�54M�X'��A��,^X���XWnɌ�+'�l��sB�]B��]a�n%[c��eˇ��-)u����]r�ƻ8��Pl�����j֫T�1N��ƻ�@N-nڮ).��˺�A���$-䘅V�Vk�nwN��O    qZܡ�Fy	2�a-�m����{T�p��]q���[̊���~�л����O?�|Iu=�um��i���k:j�6xL���{1���!�w���z�x����y
FS�H㥰Ɂ�/L+w*�Ukm�ӹ6�ƶO�f�6��΍��e��V���B	�>����J�\�$G�Q���Y�J�����{eۛ���]e�Ք�=6\�<h��,]�~/��v�,�v�M�j�Z{�fi�}��6q̂����jL޻_��'+̎o�%�&7�HB���x"��U{]O/|�����?��7謑d1'�,�r�22,U��b�C����Q�Qmc�U �d�G�Q���V�x:���\ql�����\�y�+�(�u��� , pM��2h�����t\>~���+j�]���rڷ��Z�.s(pHѺ�߬��q
AIc\VړN{?�2��.Ҹ�Q�����޹e�^��_G{����f���7���{��[UiL�%�������q#�p�9g��[��y8�o_�E��%�'��r��R����0�[%n��T4AC��S�^i@l.�ޝ9��V{�
of^*�:�M����$no[֚�Z0�n�zB͚%v�/���0���Y�/�s&W�e�,/�@��eP����2 �{�}F9d�f6�2�4�⵭��OW�:4�z6aߪ�_�Z�N���N� �.��Aw<����ۺ�u�+-zSˎH
R�z��Y,�����O��85�gHo�]}��{a�׳^ŮezdB�Ƭ]���v����x�~�|v�W�]���V�]��7M�J�l5�u�,6/��Hŷ�'�v]�y�ҙ�Ӓ~Y��!l���v���S;��϶�G�k��2�G�Ͳ&ޘ�D�O��l�֭�_�.���r�q񋞚RF��n�y��K�F!�ދ8�/g�_�"�J�!��&1}�$`�Hv�G���+SR��}.k�A�v�'��<���&)ZK��џ��硧�8���[TI�[��y�瑯M(nL��#a�}�M>�C6{W���gp'$��4��ۖ����:�~̏�?1��$h���.s�����c~D^��?��K�ZVo涓?��9o��5�y#�ɻc�c~ޟ���`BD���?�x&��->t)lU�,_��t#�OL���2n�̭����,�"�#�O���l���g̹�z瞹�G$[�U�aR*W_�ӫ���:l=7�7����n���ӏ�WiN�_�^v����3�1lu�a?/�^돌��o����^�Sl���cx4(����)w2/�����Vdwg����:|;���j�[T�p�����M�=��Wßnk��S���?$h�H �mS�W@^���^���;�>W F��/�� ���
7�_R�y��y|w����k뭹�IrjS��:A�G�<M��|ɚG#�s}���q��g�����s7Af�����-��\�A�.j:�X"������r���-+'x�ء��/9=y�"�C��?�>���6�o���1� ��s�!��`�I�Z�M6�s��/9���?M�xa����r����7į��!y4��~�oȋ�xmh���yw5Y�tI^���� �մ^���SՏ��Ѩ���cc�Ncgyd'�f��Pt)ooC޾�̹3o�	a����H����AYp>��5Mkg�eo~��g]�~�h���	��?5�xȏ_FO^�*յ��[�P��O���fO�1�b^�'���ޗ���8�y9q����R|NJ�)�����>��afW?��ό<?��/ _zݩI�������An(yخ떩ۑze�ۺ�c��]|w=�n�]W�,�Z �N��!�B�T��%�'�I�8�/S1PR1)v�i����R�7��8�F�E�x�5��/���'"��V���:�b�m]�0�4
�:ì
q��zbm�\��t���H�ʊB�e�9�}�i�tۣ���pp�͖��e1��7g�/w�W+u���2ΰ7;�-�&�ũ���9�+�W!�é�"2��^�f�P���j��BU��{��F������q�CR8 ����5P>�a�����ߎ�ΣUn[��$-�+_{��N��À*��?ZT?C4�\
	�
���z/�'�p^w�k~����i���]�Cr.�;�aZ$�K� ��D��%�?N.��a�g�,p��P ��z��V_���|�1?No���!REl$��{0�]���u����x���i�$�%��v��~p��C?�g/Z��X�E�_/�������&��8�l�����Fm/4��~{�7Է����&�bJh����z�_H��!s���A�UF��ȕ��q�������Õ�q�3��֥��]D���<�p��d�$`�܉��A���Msρ���"��IA{��w��ٔ}�i�{��s��5P�;ק����~?���q��Bj������t�8�z�)��C�z�z�b�^P�Zh��7{�����#Q �i^:�z��YG.�{��r���� �5��*����t��hجE��;?�q�W��X���M+`��C"I�
ۣȼ�\���"�����g�,EcB^߱6θS�ӭ��p�?�{쐓,����𙾖�>[:�� �f�i<�l��@<������k�x��pQ����3pT��Q�y�+ݨ4�\c�>zLo8l�8��:)#t`�Nq�$�.^rz򊢙^���z~ڥHQZ�Xg�Ӵ�)������Lf[�Du�~'t��Y�|��+�TG�nӨ�����r�1�/���_������Tj$����N�Ң��p��f^2iq9H�#����TA�t��A	���Z�^�c.������hӨኌj���]Lo��ػd�`�ٺ��Z�Ȩ���j�%-Y'�ֈa���;����d����<�¶NӇL�8�{ئhy��tQ'���s����}����Ü�`}ŋ���Eŋ?�\=v$!-l�p9�a�G�v��.����ѱ^9c�y\*��v�q6^�U-�{���gn[۴�w�d�ï!���f�#=v`�fp�b����R\vd�Rfm2o�Y�Ή�V�-Kjm���A�gt%V����Sp曥��C[q�R�v�y8�s�÷�)�~lQ�����ܶ@9�Sxg�5�^����_<�o�(ϫ@�&+ԯ��ӓ���h4k�$�$�x^�D�/��G>\�ʽd�\9D�K�N�5�!f�@�SK8XC&�ш�P����W:��Qǡu�<���>f��ɖ�{�^�r{?u�إ8=�V��9W��)���C�䖙xm���!��o�˫b�Y���#ǘ���(���^��F1���Q�q+���)3�$s��w���&��{�� /\��y�s׽/se_/p9����^�>�O��sA�%�-=�v���$a`����?Q �����ų��� ����iG��yyY
X�˂����mY(�I'�p�T������ ��^�?M����/7,G��_=����xZ�������q9�����?����b���5RKNe��(���z��`>�$��ӓW��L�Mkt�Ko�9�l7C�X�"��5�ÇY��m���9y�M����#�F�v���.ؕ�G8�ڶ⭉7(��x�Ɲe���W��:�[�1l�r��U�����ݫv�{���4J\~8�����7�eҺXX�l����WL��M�ݔn�����j�b+H&?��1���d���nM7��65k�P��7+-T`�O�z��7ˆ/�<��<��>�@?߼�F�����.��֝Kn��]�}}�uɬ�D��x��M���m;��AM��|�A��nz᪚�]�5˶������Xo����UN�z��M�wr���L�tn?���Bl�(Y���vo�C.�����N��$/E8l�7��,��O��}��t��f]2o>���G����uNoom�"l��d��b�HW�7����}�t�Ź1l��a��vd�ʸ3�u��Q�w���T��TC����36`�d���_2n_����X�\�xm�0�"�{��w--�.���������㏣Uzֹ����C��֥D�d���w����$NAB    ��Kv^�F�����jͳ'�Ҟ2����&����2֩9�
 İQ��3�����/���^*��-�k�<��19p;���<�0]����C0J/c�}'o�D���Zc��JY�~' ���ؕU�����cz��Jq?�'WY��S�3�{���w��[���C�iZ����8��Qlq�N�.��|O�1�Уu��K�-�m�1�˳(�6�j#:���,�ѱ�����+n|��SV�Ͷ;%�Z��i}[�9��B�y�;
�_��������I��ր�[Z�5o�f�O
��m�`�V�nT�+��ꛡZ��Y���?E��� VF�Å�p�ЙT�ă��y�9:@����g���:�c��9��D	��Ϙ�?4",���,�:6`}:m�T����c�[��P���dU�2��W5��(ީ��V�pJa�TU�
h�/R ���<��c��&<|;?���mL_Ɇg�Lj�	s
�RؼjD������S~Z���WI�I����i|�Ǿ'�8x�� k�(�HzZ����F���ގO��yp���?$�L�E��HN1��Ҽ_� �e	�-/��%`^Z��X�"�ݻ\�Q���UЯ�kWAetȾ
��*H� ���y&MP� ��h�c��o�eђ�&7�3{�ne6��!%�h�Ϩ��֚�������Ѝh�J��Z_�R�{�ӓ��������7�<V"J<����T���HX���!S��^+�\}\��t�mt:X��
v�A�P�'������I(V[n ���6�s�o㗼����u�Y��	;+	;��	�����䴫�͓�>P�.�w̋b�=d�M��Ni�B:�P��\Wx;/uή�[���Îf�a���eF����*O�ظc�&%[�'+��p�+����e���U�7�r�kتȉ�A���6�Y����z���%�'�:k>��/�rGE����^>�?��״�0��F�O��8��J$���,vC�V��%<}~K[yQ��$["ߪ�VX���}d��l�ӧ��ƓxX8)n�-��ت�6�����fug�6�EOm]ڧ��g�N�9<9�1n�2����+�;W;Oþ��\�+r��"o\�ΝI��� ��xYKe�+`�$�s���_�[��H����.�Hk�� .�g�C��*w�^kyi^"�YA<*![�M�t����۴�<�<W��u�VaΟ��i���p��8.�:ت����r��4�o��AEA\��oƙ����w�ݞa�=]�hB��*77%�%���a���=�2��B��Fn�x�M�<խ�xi��b�5!q/-j��2�����s!B�,׳�9 7ɢ�����&q4N�ApdG���������Y�M��!	S�ug�0$���<K����ѤYQbbθ�`�%��]�y}w.�Su�駋e�:�K^c���ޮԯ�x�:��6ػ]�,���8s�v喐�42�K�-,sB4�3��*3�^���es�kz�����'���?���N���Q6�g䲔��
��	���q'��xS|{�E��3�c�+㕎R`a�-e�F9�g/V�Ќ<���U�����E�Ž� KND��ڵZ��m��ђ�}�>�J�ol���nvwN�}�N��'5�;t8���غ]�J��ڮ��^��|�]��X%�خsRN�VS��.�Kb=l��T�����:��ӖN�{�]��_�V��]^�:���Nv���1�� �rc����"s������>��@��w�a�=��;�>���!�f)�S�Znږ�c��}���h��,;��S��Slo��\���!3�@�N����i蔘ǃ[�H|���K���n�W��ėj��Ø�L�\!�Ɠ�I�;�A�U�
;�F[,�,��P8��w&:r���qœ�ba����F���cq��=�w���s�>�<��V��D<F��)���*����~�����/���_ ��A|�9�r��g�|������)"��bn����,m��_�����?�,~=��I�7��(����7�����-WA�w��4Z&���=/O�AXJ������ܛn�.u��4�crr���%sǊL���!�A��&���%�'��d�a_���"*ğsG巓��)ǝ�����È�%�ٗ����ʫՍw�t��ܶ�)��)}Лu�k9����
�������cP�h+���=�R�NC�.�ܚ/���:|�1�^��!�������1����R���+ai��]	�!r9EF�J��4�mX	X���W��H��/��bH�F���⻒��0;����*ڱ�^N�̢oT�(���3�4����
*%nii㦉��T��Z��{��#�ĭ&qP�q���Q��t���.��i�&�/gӑ�Y�b˰�/�mօMӰ����c�5��as��YvnzY6�$lm��׎":Y��V�������`㴼��p�N��D�ۧ�| �KV�MӖ-�xM�M7Z!�`#kr��oN�1Lߩ�9S���;���b4O�8���� `!�_ f��y൛���k��>��W=��۟~����j��#s[�w�80�3�4�(�÷�<�TI�5���yr�U��w�G����5.��::&���[�����C|���d�8.LqG@�k�����k��:�����8�Oo�y�+�o�@)pO>��џ�?�G�w�:KnE���z����R��F�t\Z��Gx"y|y5qF,åw���Dd%�`�#Zݤ_��4�ݦ����y%l��:!B��j
l��)���Ss�I��[P����뮘�n���^5�~^5�"Wo"p^�Y�h�؋�'7�p�ӧ3}U�á>���d���bm��+ּ��(iC' #��~�3����5��<y��g�ɟ{�~ /��a�>�g�/���������;���� �rYo1-��g��Ha|YqQot�U G��������AĘ�[��j��+����H�����hTh����δ�C�CX��uh�|_�z.^�%�ʫ�ެV������?�Fs�jfF.A�F��T�]�tm�%�+�^�s��ڷ֡|�ɱ}.��-bdu�?tHbK�|�t#%ofƴ�^�:0��6�ܜR�����}�B��6.*��^zi�uic'A4J`��Ή)�-����=c����`G�b���	{rG�B��2��gc_�S¹O�z��D^jm�CksM�h��fY��9m�K*�&[/8���/ȹ��x�8��:����E��Z\�z��~8=�'�-Y[��s��YM�q��u]ػ�a���ʰ�;ٵ�`�t^Q��q�v��T�4=�W��Z�b��mزY��=��s`�J��3=�-[��ƧC/m;�Q󠗴��VShbuY*V�ә�{�������k�e���(���j�/rC&\��J {	��:�ƞz I���V5�
��K[��*�9O�窍=u3I��Vc����ؕ��
l�nY�I����>į��E��ua�L��`cؑ�$���]���ҁزΙ]�l|f�jK6�7ϰE�a�b�0�7���A
Cæa�N��:�$�g6Qko�"0�f��3l��K�ua���-��lIމ �V�
lWo���_{P?9�8ǸY�ۂ_m�ӽD���Ӗ�m/Ir��)6��/�9��H�%�e�ַ�r��KNO�4@���t��O��Zl>Fy���S�y��-f#�/C��´^z|O�M�jк}(�/��f�y���Reba��Q���L��ZH��D��i�ex���&p���S��lx��$��n�a�_v���;�f�ֳW$b�jԝ5��!���������lڮ����`j��{�L[/)���a�W��
m�ܸ��LD�y��=��������]���	l�K� '�xmC_87.���b�����b���K�,�"\M��_rzr��i�5lh�;|�P��/D�7�8<W/�e_�"/ir��ͻ�e�e�z���������!b4X�]��v^x���]�[Klbxc9��x��,�V@��Y�la����JC�gv|k��[�|X�j�-��M��������s��ur��>*s֋m벆�Rl[��ǹؖ�Z    A��z���q���]z؋��ׅ����e[�=���'����h���H]��t��N1��r��q?��Y5�����#A<���t���'h�"����ʎ��u��$Kw)p��u.�^��r��dق��R{���S��K�ʐã [+��qp�tp!@�j9[f�r=�UT�w���!G�<�x�^�&���P����O?�l'��1�(ܺl1��.���酯�?��������o7��t;��ψ��s;>�ŵ�:��%��4��`�Y�D=�v��k[��	*��q��6K��o�v�bq����<Ȱ6�&ؗ�_�i iI�/�'��2��#e�.���}���=v��2n�58����)6%�>W�id��^�yV�55�oDG	�<���1Su� gZ�>�n�dLK��L�F�\�O2<�'8��j���GRث�7��X2s�A���#��D�G��/	={��i��џ���WRs�+�؍L��iGD��<�m����6Oj������<��!Ē�z}ۆ�6\E~��ӓC��9e��/Ϧ��5Y,Fm�Ŵ��a
_C�G�|	,�\�)/ +����5J	���լ�~5,l �w?�'qr&��=���3�������#~�ԍAE#�oGD/�<��>F�À��b�z��'����� �(��;�z{"�GX�tc0��=������C�k�"��6�~%���ݼZ�z�n�mN�1�������"�ܘ<��is�3{c�O<��ٳ��<�m�Ӽ�w|"�醉�>��'�e�ۏ�?��+c1[�sT�{��v�j��'�@O$?��ؔ|�B�3C׸G�'��D���!f�����O$�מ��"����<=��Z�V�܋a�e��_��<�k��b�j/0#}�a�ˢu�=s��v���o�;�8�)�]=��tFy��.�j��v�,�U�<���dY�q���|S�6���d��0Ū@��6��c��[h�k��w6ج�1��m�����g&��%rP�����|Ѓڪ:8gW�Ҡ������&�bt���Y�eɺ��M�x7����Gf1�d��-`K������*����0��krN�:�-C�lKj�G��9Mwm��ri��Е: ���-=br��ױX�,2#jr��ӓW�Hġ����=b��8]�E{D�09G3�}����H�9����#�w���2,�!94�&sMo0�oT��g��c�X�*�6n�ه�Z?���FE�8/tf���S���t�(����k%��{�k���hzz�m�u���--)ٯ�O��ؿ�:[���,�ޙ��D]�I����<��P�E�S�b�_����n�'���q�/�ق 8����1#��<��K��p
h�{W���GQ[���s�s�f�(�g�.�J��_��aC��:��`م[%C3X���m\I�5�&�,,��&�}c/�)o�}�c:z}N��KNO^���B��oz��G��9�������͗�'7G!&^��O�QC�����ܩO�%_�=���uC3'�.��i���y~|H�JF7���yvx^�.n��&^\�p�[M��3?�*=�ָT(B�i)�V+f(lHKw�8a���!��z�bg�X<���^&H\c�D5U�}L�;���!���7�����[="�n�Ц�i����Z�Z%2�u�L�\)h�j!\�M�D��0)aX���a�a����PH�(�_��<��\V�]3$cI{��Wf=a�y���]��Ē�L�� �A�����\W����a�P��Y�*Ȼ��A窑�g�V���J�hP@#�b] 5���b���({��ԫ��%�7ϵ�к{<���0ā#�n��Y1�� KA�栌Cm�3(�a�ɀL�Қ�`z�����f�1����ۦ�m��;��m?ޚ�q�E�Mn[���.���)�v��Nce1P9חM�t��n����(Kn��*����'����7w�\B��$�|Pc�p�|P﷠���pYj1�2W-��bH��7&�!nX* �Fĥ��uQˤJcl\��"!�^�Y����5̂)�t7iA�yW�6]�l��|<Pц3���h-��׈�D��m�����y�/T$�f3-=�j�}g��K�Q���C���iO�_��9��V_���|ݍ0��o2{>���?ɝ8�j
]L����UO�������2I`0�;v���7{V��R��~�1Z�l�r"1,�v���{]���~�,�E�*gǠ�~��*�k��s��=(G&�n��L����겧��^-7�y�޹�	��UQ*.Zk�e�DNoe��%����.Z<�5�^�E��.Z:���m��'��[M���I����}z�����N��o� � ��ʎ��t�����	Y�bW�Yb�� sI������	��\�����d�Ѿ |�C��s���n��[�$3�h'I�n����t��=�k��*?��5��-�d�=�%䑎���/0�9xo^�+7g�)��y�q�Ny��ig�Y��@�y��i|�S��c! �0q/M��sĭN��#��C�D�#�.�#���q��KN���8���/Tͧ�S��2���E���B��.j�:[�:j����M�ں䚺���o5��ٻ�j���W�i-�a�ab�)$	ʹ�����l�<ar(h��������/�'��&��ʖ��>��sH�3�i��lHBk8NѮU��5/�c�Qu��>~:��i�?,���˝��km���2PI�A4�W�q$���U0]�t�*�����
�C:�PD�}����L��AP�п�=�}�К��yw��3�΄���_-�Ϸ�ǡ4�fd��_�ח.�����n��Kf��n_~~���J�-�2cs��s=�tBA�w��R�i��ur�/�^�ؿx���SQ����Dy��{�,���ϥ���e�G�N��k`��i��U�{��V����,!����|4�z��1��1��I��� �z�=<��#�K�_=�G�����<ƏNޝţ���>H�D>���#��ݞ�)����͋'��L�H�zn�v��ʸ�C=�w|yz�n��@���-����)<��C�	H�X��w�G���#���>�;*M6�{xG�&��+�ڒ'��� ��6"��D����31r�>3���3w���N�)	(!�=�;��g����9���6ߓ.�n�`e�f���A������(��m�I��iw%m+��{=�;�A,�R�5��s߫(�qk�,La;o��]�x�b��+V�9�)׼�Y�d���t�e��O���m�8�MKIմ��SN�t����j~\K��ܳi鵅3���K��
��?�K�����|���i�`�Dg�b��|�V,�XZY+�;M�:���߲Pl��L�f��k������M�c=C7��,=��V��|4.Cy�~�]c�V��-v�����Ip�����akZ���wӎ�!l�[/�>?�x��O?~��)B��<x,�'j������ߦ3�tP��Qf�`Գe���1�%����#|p�UR}M���TѐD�Fb�;���i�!>��)Y<��t����#��D�D�uy䞤-���W��o|�:�MXG�	%�^{"�y�OG7.���-bz��2'��D��I��֎}��ԓo�j;���<�>x�!
	��7m<���O��=����D���?<=�⧵h[�m=��q��8�O�����?�T�+H��#��b��XD4���K���#�)>txe�@{�B�5�|��u<�k�K�@+2[FK�,��y{��D,��r�����{��I�)�R���T�k��5�q��.���'�Q�:���FZ�#sD��S�W��}/�^+���o�=x�l�r>����ylJ�T0��wS���*���K�Oʉ;ո[E�VP!M��wo���^;l��F��9����_C����߾�Z&M��R��s�%�]�K���[��X����>�5�����NL5*%�4k��&`O����͚���P���yD΅���_�3?<~��    [I��N� �!_dj���״�t� )b,���������Ϸ��u���W^��+=q����wkvv۩?��9�R���_p�\,U�(Z'� �ovb�`օ��d��l�5�l�I��3t�=�V	�Gmt�k~�镇�Wz�h��M���$n�ʅ�(��i��%1�̍_rn��*f9b>�tn�Kͪ~�x����g������n j��N�J���hj�?�񇯗�G�E �Q��钢�v� _K�s�G������)����O����, *��� ���x3@ҎX��ǀ�=�_�����%��}���6}�E����C~��߹��]�}�ϸ-��M�|-�/\�	8~�w��~p����O��!r��I��h�����$�P �0}[�*�y�O�;��]����Ex��y1��,�D�p�)=��#�v}��>�uƯ
�ܥ�h�@��K�ms��O�(��.22;�v@����<��#&�P���� ��d��s�'�{��� PEr0���4v7[�$-�I^xZH�:I�Q}mMa+9=���y�@bDQ8CئP��[9�OQYc�b���`nz�\]���/�/h�����|���eL?U���O���}�bJ8�7�u��xc�{A�j�[%g��,�l��|�ϕF89p��ȶ�K[<�FO����w�`ű�W@5���G}���?�
��ZYu���oh�����`�O~�w�������^��Ǝ���?����!B�{,	x(���㗜��&G����.r��B�H�ٵL����6���.�KQ\A�X+��3�Ӿ�n�v�!Ŷ�E�3Ua��ح�^-@?��|� =O�Wjl�C/i�+'g�Zc���R9�U�o�6x������jm�e;^���^mh�]��u�j�	5��<ޯ�%/��w���L��PL˕�B��~M>�piz��LN��y/�{3er��iv�_ 1�^���0�
����/���H��y�c�a\su����ol�/��>��H�*�7GbP1tl=�]:���6�"�9���o�冷�KNO�PU'���>�N��6r()��]�f@�����������֚ή��ސ�'b�:�c�mY����Ւ/�)z�(�x��:a�f��\�R"�)�[#���_ޟK[��m�!E.Oem�9Yp����֑�q���ú?{���������;~��+D%mp���#<{�/�������c��i���;~�>}OE?���D$-�|��)DfSŝ~�op}z	�h�mMߨ�
�6SShP��� Rn{9�U�e���y���lͽ�*��=��7#�~��յ̚��B^�4}�N�;�O����C%�:�Gu@In>�^ {B��<�1>��]�c4�]s�D�����Z��c�`1���w[���{Dv���v?�υgO#�1yǬҢ!E��k���>����u=�Y�"E�ё�w�c��<�ia-�cgh
�5�����?q��ؼv�=x�!�މ|��,���O�m���	�p�=�w"/O��#&F��� @�Sx#��D�~��QԥϗH��ia;�x}�q����� �~ď����C��uvr�=�S��Eu����;���[j��^rzr����4q�*]_g��a�I�qT�����/��EZ�o���h�躯�����t�%��'��"�qzrX���z�I�Jn�Ae]2}fK��6����a�S�D� -����8��[�ʡH�Y�k��c`�����H�&KozԈ�3����������?BT>��ʁc:��cw�O�1������E�����r�ƺ��G��y�k� [��β�CH�9�EWc��<���$-uɁ����|�����e���v��y���H�$����C�@
�{���ί�Y#������������%�w�dS���0N6=��N5��e��>������ւ�9�U�9A�	K�Z�o/��6<�w�}��`�M���P5�v���T�-"��4�N0;�'�mzv�����tk�K���>�s���(}���+�;�w���1�Hu���K�OyY~�6m�}��$���D=_'�.({�4|�3��)蓏���k�_lv�v���#r	��XՃ]M�*����bU�)�]Ū,�5.iZ �22��ݫjp$��	h=�O8��d&6��Q v]��� G:���ݗ���#5�{��09'ss���>ޚ�y���z�O�xO�=�@�ꨯD�S�
K9�B<m�0�Cz{*s��P߈�Z�h�[��iv�zJ�H[������{��<gҷ+�WLo��ݱ�#�@A6[���@�%N����Ku0��KNO^Q���Ӛ+����ax�E�s��6[nu�c@̇�tVB���V��W*e��E0~�y~F򀐙�ˋ�R䳒6\^�8����i���ܙn2q{��.0~ɫ0�� ]'��R��B�N�8&�5�>��^�����/��V^8�C�q�ĝv��;��˃��W������@��C:�����ӓrl���ɧ̞���#:�k�S��KZ�_@nn@
�y���$��<�o̩/xe��*��r�f��s3���^f���1wX��vb�ʴ7�V�4j�;1��V�����k�{2nm�n�t���t� 7*��޷z��bјH2O�BbSN�i���T.�^��C?��?��Eiܫ�2��5�孌���T�̹��Kx���z"!.��V���P��.D 	[�<r"���� �\ͮ�_rz�izU?�q,o���q�Ho��q�k�GqG[J�HI��Oߞޙr�҉��h�:ג�0v�w�p�Eb\
̊�g_�\����m�y�_�w���f�TQ���u09�6M[p�5�H{��+%t޿r?m�(���ٌ@��Y��Ϧ�9�z��k:`��a'K�
m5�͈y��#:�0N�Di�z�rd��ܱT0�٨:O��/k�_�����z?[ͪ�z�7a�w6UZ>^7屍÷�����Ja��K������K�d{Q�8*i�h��vPc\�ܣ/�+�q(��X�:N&{oQAn�W��Y�i��^����Ba��ϸC���?[6�{�g+קA��j٫��p8ġ��z0s��ϖ��0+�V󨩈*�B�GZ�ub}:��j~�x���@���jD�y�z��bT�����Zw(��%�.d��l�Y3"EZ�֡kKw݄Ԧ�C�$�j�"�ͦų�AYM?����������vy��|�MU+Q5k�G�\$�N{Z�'ڏ���W��k��GL<��TM�>	m^�y����ޥ��al>F�OD��� %�:߭~���۽L��4��������q7��<r�ݗ�Y
{�Z(����C���J&-����G�U�{�����8U������CxJAY������`���?$<�k��3&@�ќ��/	��%04&�_.l����iPE��h���?
*z��qH`{��qE��4�� � �Y};(��2kG+�>�̭�� ������xkI�Dh�Y�H{a��z3X�R�؉p��*��)�^����5�vyí��4�A,�%`T �;=��L]��Z�#5���������)��H!V$&
qNЫU�T�YUӗ,KL���ڊ��ܷ��N�+���S�jj,Xj��8ũ�t|��O���E�r*�����Ï�G�t�g��&�n�ҋ��<����H�N��_���ޥK�&�\�e�q���^���H�P������h�����?c���Bxx��#��"�+�D�@�57�ǵk�?~��/���/�|�O]�ƈ�Uy�i�
e�
>�TC7��w�<J;�nu����nT���♈�<�wDm#�Yƴ��k�>���8��~z�P��L#���=��~���	�\�j ^��.����;2�7$9p?��?N���k �{����Ԗ�n�y��킽�21�`	 �/z:��W�v~�j˰���L'�y�K�b rw4]F`V�qr+�?�7�s|�<�[�)wn���  j�}W��µ��Zz����.��x <=x�LOudO�Q���z1{"��a�α>�    ���}�3�	�=< ͓4X�B�ÿ�����!=�g�A����y~�q�0��� ��/�G��0��d��d�=?"o�,5��6k���ނ[g��6q�<?��=M�?���4��;.2P��)�*�MA�%zc�^�:��ћZeo>�F��YP
��S�Y��V͉c��0�Ho"���X����Z�N�d1����	 ���4�Gls�[M��_��R۫��w7ý���J'��A�C�����
�F�S����
8u?�aP3V	ʼSJ�zl�U>t의k"�������H�����-�k}j{�^'x����6W5�t�
T����L���y	��b湯��#�TDm�3٩�N��QB�O�B}���7FE��-b�̧J���n(��b�������� 4<<~��:H����H.F
b�_=|��3ֻjW��_��������y���ǟgO����V"V�P�7��kL�
?�#�
?ϧ����{��{�Q�`��[:�F�~�KY��b���a�N�3���Fh��M���������������bሿiaN��1�bl7�WĬ:�҈�����E���/Mۇv8�\��06���f�>�G;��$�l�<�G����'�t�Q��'��!��9)0�7|pfG�I �%�	�uV�竵�"D�A���f!�n?��!�nK��Diu]'ȭ�Ͽ�*���rm~�BU�O/�-&r'���ۭ�0�V���G�(c���U���bW���T��-�m�]�K��}��WD��9�xKɆ'��J��vcx�%O9�6�}J6�ZL��,q�h&|wZ�C��rd����Q�������H1Ɏg�b��l,��d��ʞ95��>8�ޚ6	�{y1��b)��6Z!�<C�lBbP8l�mA5h�˯��qJ��-�yﯰ+7�L��wj��Ȁ��\����C7���|��{������ŭ�l�"�X#UnşN��<8�TD-t���<�z�I�K3&���c)ɍ��[%��+�!I͕���Ԑ��ob����5�u��^#=�Z�4��F{-�e�IZ��g�7�߬ ��Zǃ{�ݎ=:��?��u�&d*�{{�uE���L��ȁ�����Hb��O�\�{��f,�~{�c֊�|�<���N_=r~����p�J�f�X�O�y=w�Ό_��L�����u��oӝ1�bĭݯ(j�7^���)��O����]�H1��1K_'�M*+3�)�+N���SK�|[�e�������9���o�_�l���������=�"�g"���7SB���/�:��F��wb� ���w9�����1�(~'J�EVڌh�c�2���;~�������w~��9��[
������������s2ǿ������S�0(ik>7�G#�����"q;-#�=ɺ�Z��:����phi�k��3�(̖�ٍ�{���@̋	��5�b!�_���*����!�<�f�O|}$�ͮ�����p�㟞_�L�a����?������?4�7	�k�Q$���C+��-�D�U5p�;]<Z���l���ބ��R�]"bb
��w��q�X�U��&+U�-j��]��/kI&Y�4�UC�Br�%����5E�;�)���?(�^�=j�LcJ���m1��ï���I���̀������L3͚�����n����~s/0�c�ȼu�y"�U��iq3 D�U�B[��ߗ+����_��w��V�?�YS�-�
�����ߣ-<5gK��������� $�Y�^�C�Juf�H�ؽ������p
��=��x��x�b���~4Y��� /C�Y�~����OPWs�{��y��Շ�.��NBP�O�'}���S�	ԧ��׬��P��Β��J�v���o#��sX��KB9j�7��\����u^H���o�I�_2��B�dz��=a�϶��T�0L��8�K�7��Zac�,�G��p(`.F�a�����#z��ȗ�>�*�O��3D�4��w����m�L���l�I��6٦�Ȏ����n#`��Z�u
'*���bAo�i���/Y�Ž���� X)����]j�
�a�a�@f-�N��;�@��� ��6����
SNQ�kݙS�y��{�_� $�A��Ov�'�o�
%b�Vv�!N�����b�~�w��//ژ|�'�ՖQ~����V(�<f�yV�"cS:��&����r��f)@��x��5�_������������
�_0��ʾN��C	>)��]@ˈ�C(6�!��RBN{U�̨� -�	u�/�ݪ��[vD�{ Ji��x�Ҭlz�p��=^W��/� �V�?`d�%�8�_-C-��ݱ?��yUi��FXsi�;�q�$���C����O@c���W�������_����'���{�S~�-�ݱ?��yNX����.oXm]=r�ׁ��_;�֌�;b �5�,\�����xǺ�q�7��X����UXm����1=bSdn�Kyal��?��#n�D %O��#\��Zc�`B�V��C1�E�9@�q�$���� �94�	6�:��%G�y� $��j�O�����7Ԑ��q���ߋ�>�(A��������<T�n��{��ΜM���$��WA��b�b���.k0�a)��oͿ|0=�p&bC�7���3���#~w����3�>�Y����UW�x#���-l���UK���}P�F+Ф�5g�s�J���#�g<���'ɷ&��$"D�����iVV��%�p��/D�)�i_��gc˳?���bz �w�o�є�:��XC��k���T%�Y�+@���cM�M�wJ�,�ԕa'�䮗h���u^�w㩮�*��ͥAd�w����|�����	�Y�j\t��ف��d4ܫ��T�)�U҃���|����N}�y8 x4�f��Z,�M�fG9.B�=K(�<��+��t]Oc�z�ܮv`^g�bа߉�xY�w��s龆OI��no��ʸ��:�v�{ܙ�P���{65	�~JD���E˫escm�a=O;�
g�4��Qw�I�ؖ	�3��k-$?=rzq�Y���Nd}�*un�(ѳl��E��.���K �q2������\��?�M@�4V���&�|�	dE�O� ^�k������?�w����0�#�E3EK��|�t�\X ���M�k���]��q�?���;=���-�;�����_���Ѓ> xR %�v)��s���������M4����'>��q�!/S�����3�Y/t]&oF��?�޵꧋���v^��qb Ƙ"ѥ��1G/�hTj�z������?=r}���m� ��b]��T�;8zU��D��Mi��M�/��S������7�n�3�Pր�8���m�@���4�`�~�-�DF��8l$���A��'<1�B�q���<˶4V�"�%-�u�F�1j�ۗ�(�J�{er.L�% DhuG�ǽ�/�A��J<�[7�Hj3?hg,�W�����9oHl�&/Jlh�t��h2��G`#*��֞T|���}6�B��S�h�����:�0H`��'�݃}�z�V��o�*�����3���Jf��$�~G>�>gC�p�!,��z��"i^�|�)�/�V.�+�m�L����@1Hm���Oz����\SH$��{��D��ğ|��9H�,���l���]�`�`Ps��j�&*����#�F����\��\�Ws������	(�}:��>���@�y��A����d��矯?&�G:/����^�%	43'9"�b)�E��<@^.��6������
�妄+b���.R
�c�{�c�������'��zɖ�>�\ٌ�R�5{�`=C�������oy�$�HG���<���|fGB�`	/6�ȳ=y�Gx{b��s[����ȋ>y}��'Ilr���@�������0y k1څv�|zb��o<�'
���x�u'�9<y��]=Q^�`b Gxw��|\���q�cJ�)�G�t��	vI��h�����v���n)Z�tS    ����6zJ��&�����g3 N��Uf~��0"ܟ��>���b<��-G��z�q(�֦�+�W{��G~�J_a���{�A!0B�hFG,?A�����}4�j.�a�n>��:���/��H����-q=�{%z~d��
|�q�ܘ{��z�������;�H:q1����J��88|��g+�LG�&3.9N��A��dk'?6�_8N����ڂf����O�l���� ?F���R.���(�!�����"��b�P�%Դ5�L�D?���[�s���䞐�dM�B�1PNd7�o��Ra�uvǎ��A�������\� ��S����A}8�׀�85w`�P�&�	��K)t^]HQlǧ� nr�&pvԼxWko���ɑF�tӡ|��j[>��9,� Z�oXl��̢da�T�7�-z�����]M�Xd2�/�*"7��_˴�;�^e�ޏ1��s��pS�]z[�ܛ���~�/���p���n(<��W�:�pS�Ec?�H�^�Pn��k��� �*P��9ԱQ�l��t���5MC3���3MA�nZ6�Ҕ�R��	#�uI�N�na�"�������!p ��^�AB�ʹ�o-�� �.�7�>�(��v����R��w��=��1��F��>	xߩ^��]/j���x�Փ`L�7kʷ�6W5.@mǩ�u��hR�ަOy��BZ���Ɉ�&Q���}Ԧ)�f�e��	����G�/�o�5�����3ϳГ�ҕ5�W�;o\��/��+P�Ϲ��ӏ�ys���?/Y��Y�i���q��I�53<=rm�e����{��'u�T-H�C�q�=��F2Bt���9=r:�����9��������nq�F1��}� i0J�-��+�1��g�c}�����G��ݼ�OןL.��,�c�CЃ��"Z<�<x���89���R)�pm7���)�8D������
�_47E��<(+FAV��3��<�y���x =�w�&x�A�����#�X��|�ݩ +`d;�� ���o~�e�8���!�c����<�5n���/����<����`�O���w��Tցŝ�0��B��g�|��;��5!JLYP<��jE
���?!�B(Ӭ��"��`?n�_<���0�n�F:������:W�D���M�z�Gݠ]BĤyFw�p'�T���2���{��+���A��W���5��	�j�.�!�a�]�������w���{�y��O���a�u$/4�U���q��,=��`�k�[��V�����{��$w�mH�N���g�cX���u&�Ե�/9��uy@��������Cd������Ԇ6�r;��ZeKD;U�Ɉ[�5q��Q3��vN�\��FdQY�Jܹ#$�6-�O�vT�'Ё���	��R'Y�Po�F�����ꁏ�����#ǁБa-�o<���>=�\~��'iF�Ǐ�?e6�=ǯ �I[�7���oO�w��[����B�p�F��#�^����'D��u�'�w��O���L�j�ka{hY�׿鯥�?�x�Q�?Q9��O*G��_�f�7Y�i<���� ��F��0o�&��Z'�WE��M�C!����
��)ӫ���P}mܧ���-{F�e~�"J:Ҽ�DW��B��y����?xbC[M���F~?=ru^t	\x��t�m��-�~*�V���AnJ�N�~n�x+�UM�{�ܴܖ"�/G��7�HLA�P��U��G�����o�E%�ߢ����"�|;��|���e���P���8�7�Vr.�y���������_���_.�
��v����Ӊ�����|��F/�?c�u	u�P�l��z�^�	(����S]�}�J����֕��P�1�[i�b\���;�;¹��G������_���<���X�US����A̻�*�;�'@?�9�g*�Ӌ���ׇ���W���TG�[��fJ1�v�6Ü��t&��&	�2m>��Y�ln�,�j���4�T����'K*��ѸAcl6�FC���\�yYCИĄ[m��%�m�ݩZѻG�e��n���H���]���ҳ��^Z��w��1�OK-~���T�E����V�޹@�5ᭇ���N�q�!w@�j��v[[�ۖd��̱���|�q����s|����~!�0����w�z���3���P=�j{���v��永;���=�s�yM�~=NV�h�B��[c�˅�������� �ޒl
�ҩ���?X1���]�j���c��C���-�<6ɳ�M���*�.�8o/�y�$�i���S���f��V����u�� p�K�?�����B��QK<3�$�аY@cy�NU诠!!�`�~:F��<����T�}�`�^���|��x�����K��Zkxy���Ч��o��{���(@�*�&=�z�}_�l��GU~��w��F�%��N�j	�<HӴcXv��N;�m��f�:�\f	&���`�M����3�TS>8*h�q�S��&�Po�����?j�]ۂۯ����z:��S�����K)�G�}�׫�u7C`J%5d�Z;�[\&o�RC|#,r�_+5$H�_?����3�;sZ���Le?��vK��@��� �~�u�P��6���������`V�
��q�Ƒ>�%^�6#��&$��Y�8���zY��΋�5\�!�h|��>cu^��M�[*���:�Ik�U[l&���{�����hW	��ym�Mtt�cL9��+ڜ�h�(oi^&Sӥ{-���^�G�ӭ�C���:k�xpۭKws�Z��Yw(hJ�{՚�P����I���m�J�3��EoC�8x.�8t�gC�o5�
i�e)"��)d[ 0,��Z��m����M��d���5�eF�NcG��%D}F��`�m�%�݃}B�y��!%���aA���κ��Ʊ�K:�c�?R�:�8��k����so~���V���翯4i�[E@Zk��O�l �|O���^�:������9�E!�q���7c�)I+я{4����+y|,d��󃿆t��o���}�yV�E��$H�i;�G�y�r���6??60r����(f:r3ףܩcz�M��m���&90;dH3���=��7@�PW'*�����u8|~���~}�����|.K�Dw�an�
�ձ��#D��EO/N���"�{�*^^���܍v�A��~+rT;V�Q<�i�Jݮ�c,�\e�������;fb߳���Hs����BO����mq��b�c-;>��X+=�9=��_�J�y�<�1��^���T��`Ɛ֊qWO�_<q#�"!��彆�q�b��MQ�����_����"�����������
6�j��l����6hEWz�q*��/�Y��F:�{Xdh�+@�ߦ�A�V��>�ݛY���>��+U��W��{s#��F�e̪���6�q�;�ϔ�^��i@"�̙E#Hf\�	,�HxO+@�9�x�L������"u�?1͟]�Ն(�@#�g�~ ���[����G���U �w|���3��C���(�i9��d�����E6C���ȑg�n���5��`��>�]�;�Zz�|���#�������O$�d+��IJ6��?2��4����[b��v#j�O{��lӿ�f'ĭ��?r�z�_A���8���_{2�&�:NB��_�0�� ��K�,A��'KXnǾ�%��h��a��ܼ{wу��%���
c��s���Ftј�[+뼬ޭy�!a� l�7�^�wvn�O�oB��\�|�a_��l�~��^($��{�) �|��@���U���F���!�wd���d���\�d�slV� Y�~<����ɎQ/%�a�b;�����v�ŏ"�bj�!�7jtq^�TcʾL�Nn��rO�5��eü�NƸ|�����5��}ۀ1EL{�c����Ĥ�3P]n�p���T���/8w���G+�V����G�̿��~��os�_`�q����t�r�u    ��4���=���C�Wx`����0� T]p���ŉ"Q�}_��OZ����s���^��q���L��y�t�Β 7C��y�@?[�)N�+��g�WJ��	2��$�.��w\�Ϧ �wk
~�����[3�B��mBm1�+�B0E&>��sȌ>hvqx��������BA�j8��U=#%~DZe!��B/?��i���<���"l�YHEd^F&�T����T�����}e��農�v(�͠CfQ�m��s����t!�t� &dl���dJ�ڑ;C*U�4:/D:�*���AM!%A?�u��ۃ69��=T�׵�f���Fc��d���CM�U��p�M�cئ������]�)VT���0�
-�4Eu��$�4��N�e�h��y�kÆԟW� 	��Gej��ͤ�d�h��3�%؂��s� |t0fcH�n3,����؊q�d,�3y�6R �Y�Ady���ר+op�zfM\�2�Y��fLd�!F3��~�>��bk6a��xmqߧgdy�j��G$��ق�seBܨ���D��6�ߤ7�|��+�[iL���d����3�I��'��z��h��E��e�_{��A��C�2Gdv;����b���Z��������v:z�GS`�p0��*����'�Vq~�%<i�}�t��<v#���0KA�s��'�-e*������&BJ��nA4aԖM�J �	��b��~(
�����`*(GEp6?n5��M�X�� �34N)�*	�p�����6�*{�=��tl�lAs̖�Ք,�b�`4��U�C���hu�J/
�Rz�|%G�����I��3^��qW���OؾQ�8EA�b�~�>�Xe�	�TW��o���3���QyÝ�9��b)�t|�;�p�e���6��:b�<��հ�8�C.�Qs�i���sM��9n��L�7�R�"��d�9����BO���t!�1K��o+�˼���i�A)L�QW�*Hg�Bq��wx�X����w�G�7:����	i���z��Jfֹ�����p����5�
�u-c�k]���wY���\3�s=�	m��dי���Mqm�΄��vK�q����V5�����(��&�&;A�%�d�7
��d��Gs6��n��K���A�\����&[H z륿�5�k�{���8�ſ����׸"0Abua��#��.W�%���4����4�Zc��%�,��6U�i�Y�,L��Jc^W��ҡ'�W�=����0_�#__?6)��gz߃U��Q(C�O<ŴX��[!*�|wٻ����?
l�Ɗ8�׍_=r~��L��y`�Z��s��_G/o���	�e��������=�__���܍�NB���;�z�<�K��wW�S��i��=c͡U�o`}o�����;�}���\��m���-r��^�h�y����N]Ov<ʹh�>�
7���N�{N6�E�Ѻ�lL �D�m>6������h���~�5$��242�J�&�!����]�6,�q�6Ƙų���-)�tYG��޸m�8o���b�\�]C~�G�v4 hNS��a1���7xP`�����@J��!S�js�waU*�3��>�$��NUd�E�%�ڛ�%�� -AKseu�� MRS��I�(fyfh��{�g��O��p�I)~~Bn�s��9�"�×=c��s��e����3֊<N�,tOi�UUq�9�xn�Uw	�eJ�ZS�$�1y�V}��
���u�S��@M嵮���鷗J���u�B���ϐ�m���95�Zj��ga�S�����1p*��
X&PЬ�^��������G�9��IL�z�������E�dK�+���27��A���;n������O{����ܻr���OЋ=�8k�l	=P�u�d�OЫ��B����D�����/�����o~��!()9�btH]A�O�~Y覆�� р�<���=n�ǁ�T�H���}� (��V�g$Vm�p煸Pۍ�K���3 b����L� �q�꼣-�7X.��V�w߭Z���v0$�X��Z�a�;�L���T[�����J�/X��u��5n#��̰ʚe��B�`(��F[��P��}'ڸL�&�̦��$�{���̳�¡��հrs��G���H�zG����(��b�G�2��{�}��mLp�x�@�uS�.C͛����2:���!�_\{�݌`>l�,2�ނ�2�݇�{�J���.n�.n��}�Ž\���g�( �`�aZA;�VvB{�?y�se��kP����XþO���'{�IG\��v��u͜!���zA����ɾ7ݮPg�n�w6��A��������L���[&SI;�:FlKM�KGd���y-hmAh��8��7z�vtLFKP������T�Ҟj�ߎ�é�������s�@��R�>����a����YҬ]ll���3��c�B`�BV������x�����P�^UiG�c��>�]p���]j��7m�M�n��+��X�0E#K��1��n�>'s�d4�0��b̚��_�v��B��uCP�@��ΓcP ��y�M�Š̉���rK��k�{'F��U)��>I�AM|��N)d����)��+��箔G�q�1�!����x�%��w���$�+��gwM�$�4�!����Y'��KgU��I��O���!nm*����D�E*��t�ջ,VS��i�EլJ�������?�ɍc5�̏�S!�
'.�e?�����n~ױ"��W�{��=��ǐ���8�-���|=����x��1��g聟
��j��r�X��l�ȟ�'x"�b�����u�R�/�摏����F��j��ۑN����R<�h������k�����r ���!&�'����,���^�g3�B�C�:��>��d	i1���Kz+��qMc�_�q��-�em��sjICJF���Ks�.��ߢ�9]$����D컋Q<��ڸd�ZБWΨkVo�N��+y�,��fY:Sd 7qۭ�{�ۘo�{������g�?�q�5b��AKN`�$���&r�<����+bJ�9.P{(�\�k�;+G������jk����	븉rDe�!Bg�!��]��	f��K���t�X�c"�]�X�N�������s� ���Z5#�WYj��F�A�x��r�ʽy��"C�Z?�i��0�7nAˍ�RT�BZZ(���V7K��/�^.9�8�s��ȇZL�����t�M��L�*�߇���O)K~���嗿�ps�������?�w��E�q����깶��>W���}�h�ŞbB��[��m�=\#A;��<vo�VY�A�4���~s��Ԋ�P߻0}�}b��`+���P�+�) Ha���K/1�`�k�z��J��^_�c��o�C�RS�ٳ�0�2fIZHr��/�W����Ʀ�?���C�Y1��}v�}
Oľ"���̴���Y �c	��������\T��#F��@Ewu9_/�<pQ����5�i��}9�{K+��`����Z,�������W�v�Ɉ�R �k�FĐ�0���ǒ������F�Fxs��ɤ���h�ׂ�r�pCh	ow��`�u��F��q�$-�[C���	n���'_��s�)7p�������t�ʺ�PUj8�����/�ܴ���Y���'����m8��Q�-��ǜ����Ok��W��X�v���\HVy3�J�?��W��.A�	ڡ�sB��L�'?��,n<���D�z[ ��<ZMB!��	�1�ƐB&�>���N��1wAJ�-�a��y�7�lP�� }��@/
�q|c�ۂ���gC�QK�-���naY#�U-�p���˴>�1K������=��%	��Øt�z�6m3���fL{�A1e�YH{]3�Ѧ@�4�6�wҼk���s�8���d[C~���1B<j1�2��#�'"�[��?�KD'ϩ��<�����#��x*�s���CQ>1���X~�,E��Ye,��0��R0��H4���)H������g~3�7)F�Z� �  ��aV��pC8�{����qW8Q�Y*����	�^��m��lxB��h9����sD��2GDz9&�C�=�j��#����F��&
:�eu��G�n`�&�&� ��/�GdȞl�p�|m��&["�c'J��'��=���|���u��`@f��0K��#������1y��y4q��$�U����:옵��͸v�cc�ۇG�/~���CP����#��'��΀��cF#+t�����ȵ���>�:H�.R�A�,J}Ql,�����yh���8H�Js@���j*�Rk��p�Y�=��>��wMw�QRbփnRL�"%^_5>r��}SE��l)� �-8�i���:��.a~�:����Z�,�qfrǽ��1�$��Վ9��ðI��+��6
`a��<�m�nF{�^G��(�x&�{>���L˥�|����}ޥ�J�W���Vk��5����(eCk �K܎oq����@wKaH���3伸�kDz�����G�/��E\��I���$=i�FG���_�J!iA@����/�
��ľP�(J&P�dP\O5y�y�T8��k���`�'�yʀ��j��/�wm6Y�R&����#&�:/�fH@�o��7�/�:�nR�R�BηNKS�᷎&/�T��n�Ce�V�[��՘-/�
�`�v� ����"�L�ʊ�ѽ��T����+��q��MA;65��E;VD��wC���w�,��9�v�qE(tT^�+N�,����8��!�?�M���T�C0P��=�����+ɨS��`�����h����>lZ�O����]���YD���"�f���s���͝���ؽ`)Ca�o� k���t�kQ��e|�}��_>r~��>����>��^`�R��k!�$�s.����L~��T��k�r���,Z�/�zsK@��<Y�u����;'�A���z7�����Ҏ�N���n��vsɯ����#�O����f5��0��
���n,h
V�L}�Ae��lb_�*h�w�Y"��Vx.�@�Wt�w���ҳz�_��X0d~2ܳ~��pO��Y�f��O���A��tNk^)]̵"�{�ܭI+R(ә�7�����uL��1����ݽe�<p�/8�Pf�)$�*��f����_7�$
Ϣ��d5��<f��Jc&OÛ.��������s���껍2
��X�t	w�E{_�jY'��(u ?Ķ��2�M!(�6!��	�,+fJ��%0bv�-�=�m}.ڴ|������n0pd�5��f-��4�峍�3������Q�!U����eVX��R����zX�c�S�0n<ٴ�
��d/���]�
�d*�7BCOE���[�&�K�����/�'���:��XU�͏�3�P�<���b��C)������A=�Pa�p�D�@_�5������׏�n�}���W?�w/�����{�ߞ�}euW�y���1NT>�����@�~Lo�,Up�@YL#���ן������@RL)��1e6��mF�����%�� �%�]ہD$i6�q��U۾G���ח��{���k����|���ҧ�<�=�Yx���f�S
�R.��� ZV�U�(�+����"����b@�����B{_�Q���{��������r��n�ϛ�O�")�ce�>�����:��zX_�齫V��|��n2,R�L�ح��hCjufNho�j�{��]�֜���B�F;6;3������NJ��=Wk�nѻ���HBE��b�b]R���`N���,A�����[xRZQ���Np���1!z~�9v�3��a��@�� �,�qͩ��f/s��m���v��Q���Ez��� 7��5|?��7Ɨ
	3�~�(KJ�?�]��'���,t��I�`�2�q�].�%�!��x~�ה�_����3�/We�Q3u��y��ư�XUOc�B�q*LTE�d�,<(/l�
Z�;�)|���zj��m$�oh���r�p��+MsL��ׇ#^�r�)� "DQ{T_�ó��v{��`y��Ռ i�=hB��� �ˏ�J��l��y$�BZc+ɻ	����f��u9�3u�ܒ3��{��{�۪��͍�jx�[_�Lv��Υ=O3�Xc����������*t����@Y;r���#ڙ{#���Q���:O*sP�D����h��~|�>j�k�w�-�Y�{�X7�0���9J��z�k����m`�r�^���M}ݸ�-YJ��^�N�A��V$�	�ւ�Ŗi��J-ؗ����x�Qm+����*-E�Ft��r����x�F���ѽv�ڔrw�E��7���l���4���� K�����k�)}7���Ԁ��
�sɴ�E;-��IýNM���C1�m5m��-����dy��^��H1� �2�^]o�Z�����j�]H|�f|�Z��:�Kn�϶[��צ:��bU�׻RsXN����%n�Gn���`'hX`��(���UJ���:�0a���ɶ�2ֽ$�@����SV�эo"	�R�y[PG�e���wv�s����-֨���4�V+"!��%H���U����mˎ�j���5gm�
k���˗=�r�Ъ�߄�1��U�mm=�[�����D����!�߶�;ے���s��^[��i�-���\V�m1!o��]�p�"���A������Z9���AY�<K���;s@�*������oPC�˭b�ks,F�&�-C��w|�e�˽��2��j;�8����, �*`KK�ic�m�ƺ7��}�%�c���3�-e���2�+'�kY-+;��`0����+��V�	ֶM������ ��6��	�T�^x��GfFIw;?4Z[-�poRC��&�����w�xq�\Rk4E���"�5<�]�P����u߀{/P���x���b���y�d#�>[b�w�(;���e�ݎ�&
}��Z_����J��{�;�"�
v�,��yuN��5��9�xʱ?�م|]B�ߝ�!��;�������Wڍ���R��Z�%z�M�ǩ^F��eT	c���f��"�S%L+�w��<:������O8�L�7���x������0hP�/�xD;�h�Z���˼c轕<j"K{N� +�ʨ'�����eԍ+k0h�7��ꉴ�==�ͩJ��n��a%�Xl%�ZC�t�1��s�{���4K��b����j���̭���<�(����������>�g      �      x��Y�#�q����❎ʫ�|�ȵE["%r�7慡X��)*��Ϊ>pLta��bLϰw��uV�Y"��i�������{�<~���t�>"l�o�}H?��7�����~�������O��~��w���o�����ǟ���_~���~�ï?��ǿ��������~������������t��s�o��I��?~���}����K_�y�K������w�����w�����WW>���Q\�a��_�{:�:w�C��~)�CG?�s�^���/�+}<�?v�M�<������"{�< ���W�}5��O?������ϟE"����U�����˯�3�[�-���~��ǥ��p�<"mY��v%��N�w���_��qo��E[����b�B"`��8�`D��4&W~eD0��D�U�!K����r�g��D`��],ą��i,D߰���� 
��P4��&h�dz�M�H����?=W ��*:�-��F���������/�y\���)��� ���{ \�8����wc>�X�	.�g��N���L��?'��g���"�{��7&���}��L���|6H�y~�~/Ne���Oy������ʂ	-_�Y�d,��QOH����?����@P"�U^Snu�EY�(��C�����\�\;[y����-��$�q.��9{|�;�ކ�r%0Q`W�] R�hFBc8Ȅ�)��> qv�Z8D���M���پe0DO�'4[�� �i����q��������W$T��wd�92�1�!���*����w\O��ɣ�s�7��)��7���`����f�&(n݄A:�����Y$���B ��"ؒ�h �s`X�|�k���-- ��;?Bx�e�G��Ȗho��eG���]��p�v�Ͳ6s?Dj��8y�H��ޏ������=�� +
��;��vo�pz�8073@P��o�=^��"�EB5�J���|�(����`p] ���.���1	؉�T$��.	|�;D��<0�ȡ�MBж=ӑ�(�A˸Ht�t���(�~���@�B���@wQ��F��8�9|���ͨ���g!���׈�x��Z���(�fJ��7k3R�(�J۠~�_�7FS穊�
�^���m�m$4�ܹh,��{4ҍM���;�w����r��V���j���h�W�}s�d�������[�MzM�J	5臘�4jP��
�%�M0��g1�\1Z	�"cCAs;���9hV� �)�ί*T)Ԍ�H�	�mQ)�M��b�P�����4p��Ʀ `�u7ћ�+/@��Pʘ�^6�%��wpP��/A��6w�]Y3�s��r'��M.ч������YTw�f�7�� ����)����+ʿ/G�"Ԅ:P��v�ȊAu�ޅ@��*8��X>J�C���������$�Q�y�4��"���WK�R�$�sz͎�g�U� ��$�ΔkB����=�@7ϧP3�|�]lǻC��iV>�w�.	9*uw$�8�ά� fmەj�q�K� �����q���wQ��p`L�ٽ�Yw��ȯT�ѫiJ�v���W˲�AxV�LY�'H�0�*7?��Ռ9�ِ^����3#Z@!8ͶC�(,ܯ�JnX�#9Ep�P]�-y쓙���kȁ�#�೯'�cA'-����!XW��>��eg�"m&��e_�/���f������-��A]�%�HE�̓u�kx��Ut�������)�Wq�C���%���RvZ� �9��yi���V ���pS��A����',o\�'\�P3�;���B���7S��	@���ň.���_���|6�g�C������;��9�)#E-uIh�S�i4��(�&%rN�x��Li�~��i-�H.�,���8Fj44�PP��CU6Ǥ/+��?������i^�~�w�^�)�?`��}!�ʹ����P�n]C<�6��bbP�%�C� [�ō�;nv�!F����|q`"l�0�<2hz_<��d��3�
�d
��y��[��j&���Oڎ��(@�7S��	
Lk�*Tȯ��U6q ��T��P�5�f?�B��\��u���NA	�<�ަ(���]��1�>�*�GyV�����Y�4#2>�f��4���-^;�b���M3���#��i2䍌2 ��i���%��d/g|^�s��t�t��;��^+Ե9MŻWK��9MY!���>;��B2�� -�S]���:�'}���#k՝��Y�������{�_���vw`�rV��_�ֹLuѣ�cJg���̂���`zV�H�p:�PP�b���
�L�s��s��tp,q9�1|�^�0��f��u�>�:=��f�R���Ͽ��p��8�����刺��W����
>r��2��' I���;n��Z'۠46d�I�m&�i�n�x��r����H�v5��G�˶BS
��5N�l���"9��mZc�����]��iCq����R��
�rBt��u�i쵴S9�s���`]cM��XS�'|�Sq��Ғ��!�Wa�T�Ug�F à��	�-�3Mq3��Oٕb�ê���4�j�٣��mA�i��y�l�-�R3���ܽ����@�8�6J�Oo�p�!> ̤~ �A��Q�F)��C`�R���1%��@�HмV��j��4�Lc��)�B�Z�D4G0���	��nwp).��DL�}E��< B��s*���y�C@�B�5��/�VZә���N��d4�]
(9�1l\�Q�umWZ�\��Y���M SC�F�Oc�hN��Vk]��[�+�]��]�
����5�]���-�=	]_�?��OP��nxv,.4%(�l�H�	X�V�*��0\�S�g��f�;Q��S
0U�³��H���5�2	o������Rpsy��l��0���|�0��0p�.? �K9�͆��?�pO�m�?��k[���E]6�q/����� X��$��0.�e=N����7�~�x�a`������&��ąa88����a�`�m�,�G9�B�2�b�?�'�@��h|=�r�[މ��{y"�I�@&T�坽֍EH�O�C�O��U��Xa��$�R`�VM�3 #4�8�1�8a0��V
c̃T/"4���� ����zHg�,���y��!��cNEr�4Z׬)�UU�
�"P�2��_�͔up� [�
C��5�%����$�i�CC#F��$�C��T���V�k����HJ:��?�y�1�xH%�OWgH�n�Z3$���3$՛�į&>9E2�"����!5��9-K��A�����1�t�I۟�/53�=�q+X��ٟ����8�r�l�g��]��8Yީa��\��u����s߮ͣp�M�E�f�2b�ǣU�����D�o�����AA�q���lX����mXeI��V"W�>�]���#�U]ذJ���M$����{�3"2��<�u,	b+mU>vb�&d���^�v(���)h?�WAޫdK��:z�:�E���
��d�5�<2�..���3'��*��5�W��ƛJK�Ԙ�<����dt��$�V�@�h��21gK�u5��7gBU�F�U�e�|I�.H�%�V����h6Ek�;� �,\o;�ԸB�ki;��]��Q�"������86J��������0!�f
؟��������c��j��w��m�Q���GAqpy5x!m+��� �m	n�~!�����z�(=uN��lW�r��
a@΃;��0�U�x唍M�H>"8�LH̃�#��A�e6m�!!xe�Lц �RѺ�cns�?E�V|�k�j>����f|!C���A���S̅?��1[I�P�}���)�<�i&4�ٯ�'�-��?���Ył���\�~��g��H,���1�Al�>,xT�T6�'D�-T�<wy��y�s��٩$���?d��禛�(��u�G�    T^Nt�u|�yvA��m���́�����B�Bj�1��O��B�G!�q@���� �DB�N�`�g��Q��g��Ј�Z8*t�}z
�i�C�P�+� ��*�$M3��N�R� �+8_5L\1�ޔ� ���5�Nw���fEa F�	>�(ޫ$x� �e����v 04���A��?�k-��Sua���$�А� S�����"���x�����)ޭ[�fy���y�OV�i$j�T��PtF@�6S��)��}(��K���9�R�=ۉF'$��M��S,�J���^#)�/КyJ�E5�C�-��L7LGfBL�n���r1�{wpx�������v�y(�Z��Kӆ��W�펖��X�YZ_�ь�ܝx3Aa����o�y�hO���ys��d���~6[�x�H{�M��p��o�}�`k��^��B�lEKuw�Bi@kM��04���G
�C�"0x�������B�CE��c�[�? �-Ȼ��>$9�0&Sj3��6�AH��*
T�ܯ�`v&<Րù�d��·���v���-=��a���iT6��#ؽ�bƢaaQ��6�9�
C�?� �����t< :�%|p�)�!��c�N����D4p{R"��<�ܿ��[T ەҤ��#�x�B��RX��h�.`PT�@��4.3��px�A@�R�b�fE�!ս;�|�؊&���2C�>�,|�4�T�!%��AC�^ۤ��eJj
����fRi$ƅ0r
��S��)B�?ڌ�!-��L�m/,��*�톋ﻆz�e���y����e�B�%$��+�jk|��r�_,��T�(�&X�_��PFc��G6���v��h��,���kJ�H�\1md��'��ҜOq�[^Wr��]8�Һ'K0��7�lOk1OD�b�h�N���&iԛl�z�N����i�r\�j*k���8�FӔ�9��`�ު�0�{�3���j���U��Q�@,�ѓF@�"ڌC�;$�3ɊjB.�\���rHy�8~ީ�R�0:;�d��!A����c_�`�d�� бO�a�C��x�1�؂rCv����!�� p!!�n{b&���D��kqR�a���2��.�-@g*c��T2�.r��g��U� ��$�.%��͒ N��y>
�Ttm��d�.eI���) �.	z�$���PBǩa7�&�V�O�>�� �2W"`8��%�S���ر�R&�/�j��
�P�cW�%p��W$!^���]@�Hv�Q�LNJHH���ܖ�> n^/��ͮ�V5������í��ء(���i�Ff�A���g��fa��O�4��YF�q@�C�|S��{���2k36�Wh�r���щ���E'n��*��ҙ����|[���gvi3�7�������~Ų{�͔��²�+�������O#�λ��^*�������L�T�1屟�@�XcN����axkf�k���� �ݗ���y��ӏˎ�Y̩s9P'����6��Aj )��Nm����QRf{)�d��n�@�ŉ�(���L*���,�3^�� 7�\�>���.f<��B��ݠ�����(`�=Q2
x�(ܾ���=5�Ax�C^!	%������hW�Ķ� Q�S��5�lՖ�AG[B�pН-A%n�jQ]� ���j�8��d�*a��7R#NbT�e�I�}��!M��	|�$ �܈H�6�5�9$���ǅW�	X�KW�E F��o3���Ry�r�ȪR\0)C�I�d
���	L&9�Br6��W(�޿o��	�JZ�<'�sc��cf<���PNW�%�T@/T��7,CPc�K�+l�cG�w���᷿�j'�K�i��Y�j�����['�k�ٕ�&�꣡��	Sґ��e"���f�2��K�L�&+
�7S��)=ז�ȱ�GT.�;�bCM{
<�K�ʒܤP	�� P��H0�4�<�[�S�NP@��3�h6\y��^,�	"i�<��@�����~ ��
�������h�7��_�Nέ��2G�/�7-AEcjw9k.�OXx̶&��{�5t'�B6\>;m�>��]��p������~����1 ��� ��94�������H}w<> SR��w!b��e.���嵇��٢|�;xF=���[i�V&�(���^�b���זa��hYw���52�0@~�݀�TS���A!���}�$gH�[机�"��Dn���>Rg� Ʀ8 D(d���o�A����s���>�����]3��̵::k�Fdq�\�)�M��AT�fR$O���X��(y�G�|x�bM�Q���ä�f4ǠrfC�?�H��m���x>��kv��1xi��w& u!����" ��@M��i�M*pK�G� @VC�"�+|�΍���BSx�;L�)��$gW���.�1p'4B�	o=����4�u�p�.߱cO>O�k��Gn]5�ir R�a���39X>q�rJ��Jg[C$��d�� �!x���)����?ΑT�5,W�et��, �$�"��� �`uͬ�.�R:��Ќ����<c"�)���WTFd�Ѳ�i���P������!�UA��~���i�@�"]a�xt}�T��8M���Ϫ�(�!��#�<��i�8�r�C;m�F�0)Š%�i-
�u�p����� �iv�\���
y�)���[���qV�(w�,My���S4!jzb*+jHQ�Y�I[x���ʲ�ީxk�{����g��UZ�^|χ�^
P�P�wȨM�)��{�L�)4�WdP)�T�8��H�yn�:4q�'��ix�ū���HNC�u�]z	�!b��e`���Hs&"�a"����մ���yMuÍ�0{�*��O��!o]�H��P���6�C��f���p�ó(�*a��	U�E�%�Q w����
.�{kt����#
�4�>�B��{�I�5N�,n�6���D�-ʾ��EI�;!��歜��fJ�Ћ��<L@(�'`���ׂ�x��|$�bJ�lw�S�iP	�� 5"5h@�H�|$�G���6��4�Ҭ����<��9rG��4~����)(�U�^>K�`O�;�Z��Q]C��z
�΢ ݲ5��S0%$��k ����.')��	(����h(�Ś�A
C	7�'#��&����x�T@P���<��ڴ��w�V6�Ї��q����8�(�*	�R"��-�� y��P"_��u����V�j�U5�jq�-��uf :�L�2��o���&$�
M1��C�$�Y��"%3`�D{ �������t0ێ/t́~7^'�j�
�S��N;������J�4�s��xi��zE�d*�x3'W��U��ˑ*�������7Z�).��s�|�o�4K�:_�e��^��c�MH��W+���y3��d}!��yZز�?��࢖E|�z��!��e� <I�ѷiY����	8h��a��$8tp=��G�D�#o/������%/�$���;u�u��9�[G^Epk��F2��j��1!��b�S����@���x����:���Q_��E��ֵS/�Gf��6岹"}}�z����|��TuH��S�"ͭo�=gC���z�u5�x+��|��;�L�,�����u�I�V���iM�lSJ_I4�V[c"�4,��xU��8��Rq�
���j��`R���>�����'j簦r`
T
�#0)o���<>��М��&��Зu|=�1
����v�<yt��>��6�[�HH����¾��s���[����[�-�򾥘��g'�bA�j�#�äBN����m�y]#�xޯ�CE�B��H��`>�q�}�น�L/0��Qqը�y�b�Q��
BK�2)Q7��yB} �ӡ�r�2�����)e�k���ZJ�e�'s[���<łn�JB��e���5�3a�y'Ii�������'80��*y�����3���m~a�TG]�c.������V�c� R�)*m� Q   �������H�+����n&�p�
��[��U�]�L���f>�����*�r^����w/�J��[*�}�~����?�V��     