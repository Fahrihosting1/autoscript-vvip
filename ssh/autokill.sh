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
BZh91AY&SYI�\ ��u4 ���'��/����    P�ؤ@ ѣCL `M4������2 E�4��hm@  �4C�2�=OI� 42z�� ��� 4h���M d41 h�h`����i�4���S!�S�ء�bBh��3@!U��o{��ø�mI��s�2��$���M+$u���b���?�%�e@;�(����>_d�E5��l�Í�����z��>i���?X�1�QzO.i�#]�`"dw�j���8]W|���"�<ңn��6�\A]r��m�ê���O͡�P�1D1=�rB4��t�Z� �<�c�Â��P�a�	ؙV��@UQ�vt$���,�q5a	�,B@uHI	�/m**&B�|���0�C�]&M̾���q���d
�4�A���yg����_���)�X.�|Gt *�`���Z��pՅ���������C[P�U4���8]N��|��z��� -�\	*@4�1!
ka�C��@q
 ʰ-}������`�E�H�)+MY� ����=�_���԰�s�_x�����љ%��}��UB�˵�}��"�����!>~-��]�8gL���j���YA�ҋ�u�bR��|�XԐj ��}�i�D�˷�	uC�3h3�� B���㏛[Kq� ��fq�^��lM���&c�ԙ������G���A���`_
����g�53��M4��g�t!x��Ã�5cCk'p�Fu��7�j��j6�a+[�G�t��$�#���'ٳ�'�C�a���}G(�UL��?#�T)�<�Am�� �
t6�����Z� �3�<#Q���7J���}�2�I\�gt(M�+:���8lf�ɱP�f��M��
1I�֛�.G`3�`�Li�.یr��<��s�m�C p�?�f=E�[��8l�)]��٢AKu���B���#� ��Pt?���)�NJ�8