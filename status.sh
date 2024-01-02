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
BZh91AY&SYR�ђ ���_}` W���������@     � @ PY��wnװ$�s8d���)���馦�D�OP4�@2d2   ��Q��j      �  j�� 4�     �  E"�S�=M�iOS���d?Jz��=�l�A�~�i��#F�$��L��@Si�2 � �A���I�� ��E���@0~C� I��;��e(�샕   L�If��G~���}?��Ûђ���3	���BHz��BJG5�Y�~���݋{�|�/
�/��8�PXѧP$�~��G�:)�<�ǛӡG~i:K�0�}�Pl�-*%u�I��7-��=���[6��3�~�T�
ޕ�Y)���%B2Q�oRİ��q�۷%�E��/��ݢT�p�U����[���E�ɐ;w�[�Y<��$��%HCb��УA�i�7���wz �C �C��:y����E��=eİ�,P6�S�f&K*Q���P�Z �6W���L$���[KPS|�XW?cHPBC�d=.��'K��[a.���N���.߼�ܺ�1�6�z�h�f0C1�$�nv�w Zq��xM�Q�l-�8�)J"���,�x)�^T�4�i6`�߬�o��$��A�L��4���+o��)�!Q_d��qj�H�,*K--����H��I�*��+/4�2Fюa����\��HRB�U(�w�� =ecv����Ku&ί$nɠY8����Ĉg�;+��M\����o"t��� �/�cѾ�7�3U�w��}��up84�e2l�c�00.F��G0*�P-�6�B9@A�Y.���a7SC������t�a���+��&��� ]$�"���I���'�{!�ؔ���ȶt�l�/����S���n	yx&ix��L��!�Mo�ʜ�[�&+�HF~``r*�d�f����z����=Q@E@\�(��e�T)
�Z�xD˗�[p	�s�)v��Lk�q�݌�XI{�V3�H3ҋ�3~��g��xh�U`X���ק<8K�'�}�!BPV����*�X9�D�[}�1"�KZ�>�xz�u�BNe,�id��z� ��m���9�@k�(P&z�K�	?��lʏ�9wǀf-��ۺ>5�_�J�^L;|��-��β��,إP2+�.�lf),�|�h�Q�oj��4l\S�ӄ�F-� BB!W�a)OqzRJ���0���.;Z `��S|CL��%k�2�D�
�$�L��*�ِ.M��W5Θ�5�A��s��#*�Ԡ+�W���qm�15;�0*Z�*����P��"�(H)|h� 