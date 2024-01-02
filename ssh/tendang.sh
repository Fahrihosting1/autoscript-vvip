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
BZh91AY&SY)���  L�L4��f��n���P��5Pa$�Цh��h�����4h ��ᦙ�&�`L#��i������C@�4  @i���i��4�0LL��I2bL<�)�iSG�������yM�(�T!\ ���� �D�K�S�8ªz�ʨRa�gpQQJ� r
x��-��1�EF� �?b��/O�&B��r�&��TG1��x�������]veK?��30��SQ�q�vJg7�N���榨,-���"h��t~�k/q�Z�PK�A(�ZV t��@:;Έ�E�Z2{�f�ҾY(�&9��������c�l6��i`Q�
-"�":�����f(�0�s��@�}R��#�Y�i$u���'��z�8 n�1밮�A��L�L{jC����l��i*LU<��P�j�+w��u�
�Q�YW5��n$*�*N�YG�^(��[)�n�����R��P�տ�W
�az'���n!*$���^7�`.=<��P�a����$�Hf]ۓ�2�.e1=FN�0$ߎK:V!cܙʳ�x�A�����P�=�������$�A&c
an�/�ƚ�ŝ��|���J,�X#�2d���	���HN4�f�
����F�'�)A�`��F�����k��2���D J���P�f�����o�d�*@�qp�dK��x��(�[oP�NQ˂���4N΁���:8����6�ʍ@���W�Bh4r�8�nC87l�3��Q��`z��9�u򷴡,0H@D�'�zO�*�#�Q
"��d���s4�F��Q�iS�*�o�D)#�ٙ0F�ַ��Ul��9���I&͚���� �4�:���:��)�`p�~ j���>����H�
5�`