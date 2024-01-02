#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY{g'G _�R������߾����`�ޓ��_2��tj����PE4��!M��fSji�i�F ��i���&������F�FL�a �s	�#CC!�hd4Ѡ� @0�TSF�zA��   @=F��"�MQ����?Jx��z��� 441   2�@	�Bm)�S�)�yLh���j  Ia�%*؋&O�Wol�|�枟gk��*�D�f���#v\����4%�LR:��:�"�H2a��aJ���S9�ƅ����{Hb�Xeؖ\/�����.Iw�����	M�'&U"T�.��d�_���Y�����s�a!�Ja��a�5L9
Ȫ}ȥy �0��K-��^af���h  @     UTQVR��,@�t�س����h�������`�sOʔǺ����/Pb�l�$5��B��a�c�%�x�hk7�{Nc%"��WU�,��?��I�8p����_1�䓣�B�	��F��/��[���B�e��5DNb\/����S�$bEdU 9��D�V�-Ond�i���>��w���
S�����I�������=�@#Cg��$�IZ�t�{_
V����j7c{���k+Z���-%eaAq9)GW�u��Yw81�$�a=5_���fb���J#k��a���5�A���RX�$$$/
BBrN��n8���&BI��hz���2����	
�B@(d���F��p��: �+�������#�X���^�|Z[d��."yn����g*$�r?c�4�sq���קo�#�w�[��s���gOʛ���a�u�u��_��YPRwet������bc��Ȅs��'ټ����)lN�U0ni��|�]P���Px��M�2�n`cn���©Y��{HLe�J����=r��'C2g����*��ҕ�TK���i�ku�NȞ~G4e �@V�������GZ>S�� ��د��P}J+zK%C�@w	�������+��|Op�-n!DT�ݣ��Q��Kox(�b'"ꦄ�H4��h ���pR�R���7��@䟵\EڇM.�˲�� 
�ų���L9�<0��f0ƂW�Po~���-@�ݎDx�l��Ě�HM��Z��A��RYЄw(��.���
J �U!C^�ĉ"L�FFڂ���IhK��0¶��i֕�ۖ�좟>���� �W�����Z(>�D��4$UM!^�]! 0w.�z���{T�2A��R, �! �˪�J�B������Q���f��� �G�<����P�.��Xb�E�.*���o�}^���i�nMKw�M���I��%DP�������t1���)L7�;C`����"�#u��v�%��4�1!R Uo��F�d!��~�щ"I�zM.�����*���l]a�.�*�:�C�;H/�2�7�1����R�S�Mb�0v�����oL��'�*t��L�iFD���g�����WP����'�Z)p��(.X�*�R�H��� ɸ������M�IĮ�G(a�gXߤ���l��f��]k���	�L�G	�+V�@�kja�1�:A���t��E ީ�M�(��G&�����6E|�=�h�g��ս�QT�I~=x�b���vO,s�-�!��$ҁ1+��A�L&�qޚD��Cr#Q p��I�$���qk�80 � ������R>�3ĲA�0t������#�hJ���P�
�Q�;����"�è5�D�	�A�B��J��8VR��J`lP�@�̩���:zvoR�s���E���)��9:8