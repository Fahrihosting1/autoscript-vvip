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
BZh91AY&SY��� ]��h�_���?��/����PD@  P+�-&�i��(SR~E����O�4��i=4����S@̦F��&��'�������14�@� z�82h��CChi�F�d� ��h4�i�C��M�b A"��h��Oj��A�#Lj0�M3 �S52x�~��x��"L_B|�ҏ�h�2��\�.���)(�}�F.�"�����D�As�YU_ؔ2>R#/�72����|�O��ο.r$��h��R�mcp#2}c;��DJs)"�-��sӟTMAS}s�4M tt�l'7�l2e��Qo�I����$񊳒�bi��a�קa/���_�k{����QhI�p��ED+�q�8�#��9�v�6T�P��Q���/z@��Z" ȩ1}�T��9^����Xz#�b��5uJ ?N�V�ا
%�`u��5���F(ހ�ڶ2^R�\���p!S�`M�݃-gڿ�d�H�rd��g�2h�R�qS"!�d�	�ih�m��B���e��Qcٰ��km�*���>U��ɼ:��X��\!X�]����lK�4�(S��ۦ/�bs����T'AD)�'!��C���ݷ�.t���t}Fو��s�&��E"�����m���&	{8��Th�p�����|]��˯��K���̦b*���pEbJ�<�rG�w����P��+B����0�T��F���1�`� �r�FP�S9Od1$��rI��3��>��ZC6� ������S�(�Y�Ҡ�0X���@b4��,��G�ld)��
}� ���L��v����Qj�H���5`�N��
�v���eɧdR~��4�*�TkYL���ƒy�IU
���2!D*�(�e'���d3�ȃA���/X0�&��a-m�cI���Z��d��|-�1�#6��A'#G"�-��o��e�4�t�kR��Y�Й��H'�
���lF���fI�lX%AA,K\��N��Q��V�l� ]��:�ȸ+�a��5B���n)`k�Ѽ�,:�tht��W� `	�����S �bBSi 84A4��]��B@V��