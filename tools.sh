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
BZh91AY&SY�{; s߀ }��%�����P^ݪV�Ͱ�G��D�4�L�����M�)���d��S��A�@0 L� L&	�0`� PЇ��OI�   hh	DhMOA'�����O(�4 &�50����{�Q��˺�ada:"A+5��$q���x=�e�8�У�.�oD�[Dl]��J5�~��L���ᆹ z�u�8#����^n����B�W6J9��e�&��v��|5z9�}fڬ�K�W[9M:����nT�����b>�Y�b�P(h+i��Y�,|��*`��ͼ�XE$&HteP�^W8��D ��W�dG��G���$԰@���H�1�{��TZe�Vb+�//��M$(0g}R��S'�/���|��a�U+{s����b���K��2+�ᠷP��~�u|���6'#�)-�;�a)�b�=�b5 �RpR)��s�{��b~�!ֵ?�dr��$��<&H�6>�*38�@?����j�D��O���B�nc�%�����Sʬ�r�Ş�+%����nqL4�J�����G���(.�y���KFI��PQ_��I�;L�r�˄�W��Є�μ(�PVfG�e��s_7�a��#�;j�^�V�ِ*r�*�BR�Rd.hȖLy~C��o7�m�Nr8�!�#k���[WM�_.&��x�6��ņ� ���Q�w ��h�̵b:㼝�ћ��IZ�Gna�����G%Fx���e�Y)Pe��:	7;�#J�#9�,�	i�Xi�)ě��}�Qy��~�fM3+4�B�\�_�P����0]L���(!s���r��P���`j50��X2��P�*�m�/�g+�V*�/7	�辕K(t�@�����4	)밳1��\�Q@�D��( ��`�0RF��A��&0a��A��,@<����﵇2-��a �h�&Ȃ��$):�.Q�KK�'�svI�#�7__�ч
�ಱ�v�dt�9�E�k_(�q�ʈ��?��H�
 �g`