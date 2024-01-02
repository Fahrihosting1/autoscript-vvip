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
BZh91AY&SY����  �� � ���?�ޮ����    P�z��,�Ѫi���z��h44  4    (�Jx�<j�M �   4�z�  DMO �Ci?Jl�ɉ���� �4a4dhhd0���4 b2d$��&�����m=I�yF�{T��S��i�x������������/G'?�^ټu�ʂc�h�4~QPb�����6�a!:y--~u��� ��"�G�ްiaw]��~�$
�Q/�����U�c�L�G����a6�Z�b�+�6��$����_�4rD����=��_	H��0z.*C����dqU�.��"h�6mH��f�yj3`0c23��qP�k��Hx\����E؟��a���qCyǥ��Չ��L0�E �Cǖ�Y�ݯ������Yػ`2�DX�'�K��(7:���j*DsX�u'B�B��iS�E#Hy�:�ؓ��/<�6������sI�m��Yb�Hs�2�E!���%�	0R�P���q});pEc�] ��A�5��0�e��D$`ڂ���@; d�t5�f����rLJQ�"����v/ �9�qķbPム�?M��w'��p���0b`�^��cU�}�vgcyW�M���0�էW9L�k�`��S���2n�Gy�½O���*@��}"�TAN�ET���д���R��,�]���q���c��YV��LŨ*�Ih��=�9�fR�|H7�c��y*X2��7���sJ���"�@jsF�H*�TM�����Νo+V`��cf��E��}�!{}GV���5���R�$�2��k�}�	��[��Q�C R^��_�Գ��j��P2T��*Q�/̡�h^-pS�k�Cr���U*F( �6�ל���/Z�(��z� ?�����	4�uj�I(�
���gA���[�0�1X�y�pU�ي�3`\`� ͧ"Oa�햯;���Bɨ��J�i���jF2�q��[��0��+,����e�c�#��%
�n�4*��qC�1��;E�-;�˝�u����tED�S�a�&t0�I��=��(�bN�S��Ә]�])�$��L��EmE,H����B�s�� X���&pb�ʛV*��X��=z�vU�-1��Ar���+2���@"\2�	���Ѝ�� ��uz��=@T^s ��p�M��y��H�锟Ԓ�$���z���"�(Hv��� 