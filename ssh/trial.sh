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
BZh91AY&SYQ��� a��} ����������  D  � P `���Ҍ��:� �P��=��y5���h��F�� �~�h��=@��(hi�1 2 43HhA�L�14��F�h4�  ��4�4 h�!�8b4�A�   A���F�1 ڦ�S��@@� @     DF�� &�	����='��T�O�T2=OSi4�TcLS�� �}���#TJhi�=��x�~��������n d���.*cL�(TEM��i�*,���oBG98�cy�<<D��Bc
/�)����Ͼ`L�a��;	�<��
�1�j10"�/�rL�l�$p4�Zt����J�h������:>�����$���8��vF�2h�P��h���9f�XD"��`��s������Sa��1��ߦ�k6`��$��g����zH�,��/��	���h����߼��&YJl��Ƚ�����;�9.�Ʒ1K�Ɖ�����d���'#�t�q2Z��9��9�bÇ| A�Dp���a�8�)������ˈTΠ!�C0Ǭ;!�}l!н@�h�749�s��,
����^�%���+��� +�MTDh�2�� �ԛYt`�*��������<���M��� YB�%H4�i�t���i�n��L��?�JS�o�ǤA�W7,�)ఐ��_��F�+�!,"Tu���0%�	I�q�CKN��Bb�����;�Q�!bA�R�lr'�&"&*j��k=�y����{�p�� 8�&A�1�14*�q!�wwi��Ǖ���(��͍n-J���c��Tp�
C +&!��4~$�����x������w=,6�q0`����xT|�v�UG��p�E���@�Ӝ�ym#D�}OGQZ*��䧛M�9�����kU&n]���LT7�ي~qX�A���:���c�=���8$����!�gqf����p�q��chv��6�F��XI�Lg�8<1�.E �'/>&"nI����$���~� <V`_29��>5��1^���;u���$%�]��:��ً:FI�h^-�J����\�=b2��HI��:^�oA?��F����_#�W ����3 ��7�E}m5h �ǰ��ZB]'@�h'7����0x��Rǻns&KZX��P_V���`CRs�T 	� ���\�0 ��X�如��!Q��Iq�� /&0$%IsL�=��%�08�Ŏ���L��2�kRHI�L��4g���� �]F�F�.�qR�X�f �2-�I���Ĭ�
@���	���_Ƃ� �wnKp� <˪%A�f0]��!�s�]^	���C� 0���1�(��r�V�Ål��M �ia�Leu��"�(-���MHrr4 Ai�F��R�$�����>�������p�X�#q��$�#|l�>���a>�fI��ϲd�,�L&)�4�Ɣ�".�=t t��� ��Vm*��C�F�G��hYM�.TWt�g�1�,�u���Z��������1t|`��k	��Ӟ8�G�,	%���n��^�Σ���HJ��+.�"��->'�$�sT#,r���x�#���C�[g�M�~0Io�uPf �x)����Q�p��TO��R`�"FI% XAIfP�}��L�*��PB` ��-��\ڴ��uEAȮޱ!��;s�6��_,{�RBZ\Q7��"����k4��8(,��6���]#"�!�2�<��26o�p�B�����2�w���B �-���-�z��v�(� ���H�

0� 