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
BZh91AY&SY�:�2  ߀ ��_�/�?���P;e{���7	$FPeOѐ�?E6��3H�L�ԍ���= �jiF�M4 4 �      �А���jz��Q�L��4�i���i�ᦘ!��L��@4�F�0 ���B�AMO�6L�h@SF�4 �d8g�l;����f
߅ꃚ���*��(�/2�����9`������pw��@xp�S��@૲{�9l%�/8�~����Xph�YL���4�B*����J�E��Mm��9��[�:�.	�)���y%�c���	��B� ������K�*J�1��UC'���#�'�&����6����(拤D�g��so</W�b�"֍��m����� ��H̛e��8�E����ie-6J����E�k��ɒIf��V7<��絊f0��`lD���m<:7�2GL&�WZ�#P��l�
�Ū\W�J��+l�jl�[_�3(����N��o��+���<�!���DI��v��V��6p�⻪+g�;/�ڌ𯃷-�9(��+�_ �u���]DY���^�t��(:m�7�ٔ*g�Ȥ�tH�"X!�m�ь�y
N������x�i�z4l
�.��Қ��	
�7m�'�Ⱥa��d<�)|O�)"�K`Ū�@Dm<\g�T�E�>�ޡ�)ID�g(K%�s���6�����g�XU�9+&r���pX�bE���%DQ1�k�J�C*���D��BNê���RS]���"�v.�c�mr�A���̩o�,�5�C"QV��R�z֡����/J��_|}m;�h5+���Y+g(L?ƁD*7��+�2��
��D�u$T� >9��
IQ��s�p#��!�C`da����S\�C�����9�vSR�%�FMMPj,���ac$O[]<�F���<4�/5;�����G�-
���52�%�:�R�M��
zK|6D��R�Y�����71��_�9�P�K���
t*������j��&�D��)R�*�@�5;���j��,�k�8b(���yR�iR�+�Gqu-�@�dNPg H""�2�8��JE�?��"�(HY�A 