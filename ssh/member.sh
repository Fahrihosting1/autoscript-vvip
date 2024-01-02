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
BZh91AY&SY���  ��1 ���?�n���    @I�l 5�M4���    3P ����MzM2 � h � `�ډ� q�&��LFF�!�4i�1  �$I���&ji��I�Ǫi�@�C �H0�D	'�#&Ҫ�M�E)��Rm��x)���g�M�}!��A�X&9^�%Ƃ�\BV�26L�	��	1RT鏷ve8�5xeKy�D��o~����*��Z�
�mL`�$���o�>�4L����Q�QN.�϶����:֮�i����d�&rC��}�u�)f���K���L�x�&.�,�x���alK�����uQ$O�C��������SE�EYz�iTQ�Nj�0�gX4p�PU�s������2x�PAI5Lh����j@u�.s���&��p��-�=ù�
������Ẹt�t���gC�N�FBW%��F��m��a��~w�Z�R���s|ff\H�

�3��"eY�t��V[��j�z���7�D��Jn"ns��_Uh��*��v�H�{��[[���D���)y�P
-3�M�N�"��
%�c���6�p�XK��A~7/����"~�G��
\�<ze�нnN�5Ҥ����$��LL��ȓ�Q���U
���Rz�A��o�� B� \���"�(H����