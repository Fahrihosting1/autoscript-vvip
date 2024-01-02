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
BZh91AY&SYb+>� j��_ ���o��/����    P^    �4ha!��44ɣ@2@ hp4d4ѡ�����&� �1 ���i��F�2#CL�4 � �A�CM@�h`�2h�� I"h�#SL��5<�)��Hz�&��$ɴ�OMI�gS>�N�J���?G�z��~W9���۟����~V�+*��e0�W�fJ��:u ��O}�-?��bx��x~����EsYqju��Sܳ;	̕�ksݵ��1������~�M�������YeZַO�g���>k������ҙ�����N�u)�_i܎��02��I����>��ltY�����w��X���Z��e?�֒�_ŵmZ)�d�<�?�y]g���h�׆�����Yc��lz̬[�hY���U�`�z��9���#j�����"��v�T§�b�+q�W���m�NN�37�%i�1��i���{8��󩇻,�����0��22�7���+���R�]���]Q��t�9:~���};|-�'�ςs��u��`u\���i���~k�B�솳+�����ͣ?���t53�M}\���z���;iq�L�k&�{�j����E�0鹚�b���ʸ1����VCާ�L�˹�_cIW����&�ئn���U��~�E�'�(�tljm��7�<_���.�iįW�o*���ڻ:M�[��pܛ���seV��N�]�j�t)e)P��2c6�٦��wն��#�s�(��Y#�{�T��Tp~ɕQ%]t������w�3��n�9�v�;$����d���;)���2��<ގ�훛\$x��6�^k$�)E�˗�T�������T��������t�8GZu{�$h�UUT��uYC,>�������3�-�˥Z�EYܜ_��6<�O�Ä�zo�V*x��z�	�:YY�c�ȶG41K��%�ȱ��-MY�t�Epv;�ik��D[���JL���	����5������|����H�H}���T��(E�.�p� �V}