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
BZh91AY&SY/6g 1߀ ��_�/�?���P;4� 	MST��m�d�4~�( ��   z��M44"OS@ Q�4 4i�F�H h�  �4@  8i�d4�#&4�ѦL  h$P��	�LL�?D�����M��@z���-�G���	 �\����C�%�"K�OE�F��a�l��.�K
'����k�hW�(��G�N��R���	VHM�3�F ̳cV�TyF�)�0����I��C	^�,�v��:$�)6ǵ:FM�����]:$�jE����9���䐰���')�ț���ԇ��v�,�݁���+P���o�SZ�	��$
m���.�ŬG{F!����ca��>D��3��hA 9r)��
����¥9�y2h��+F�JY�5G|%�n�ȣp¿���H �H��m��dNUAv�~70��i�K�4[�~V�s#�V���J��V�R���nq��/�;�oф!IqM#n�I������,g��g�H�;��.%�R��U
�`�,�d8���rN1�|{��0BِaZQC�S�1��Ɉk��3&�%��
L˥�Pw=�G1i��D&H��0Ƙ�cOpZA{x�Poh�H�K�ć��ۙ{M��`�ܤRy�Ȯ��]� T>�݇�Ɩ3���{�74��b´��+��i�;���/&%��r�
�8]��p��.6E�CT4F0��*(+I\2��T�a�U���kJ���b�Ũł���1��A�n��y��0�Q���J"�7nj��j�G=\�i�*X�	�"�z6�֝��v�uu�Ś�e����Q	�Z�k���[D񔫧Q�+t�#9z����m>v+S1�7b�O`D$�Ф#ӥ�(��-�hb��l� ����RA|�d
�Eq�t-����`G��Q��C[�VL�z� R0@�(�.d �P�MJ�EP,ƪL]�\�!�,�P�ⰶ+p� ��iԌ��#ޘBٰ�Y|/�`�U*��P��W���h$IT�����`�ږ�V
�����d��v%�"к�
��a�M.9,�&,�@L�Ky�1�^Z����?�ܑN$�M��