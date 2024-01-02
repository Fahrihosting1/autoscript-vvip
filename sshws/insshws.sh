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
BZh91AY&SYf}  T_� i�m݀>���@� 0 ѡ�ɠѦ��"�$&# #jh� 0 ѡ�ɠѦ���$&�'���=D�OSG��7��p�K��*
F�W�Ab�W���\�C�	��m��m��Զ<�0�/�ݍ����hK�ɬ�B%U�i��Ɛ��^
'�����M���v�ȫ��l����Z�Z�Uk��Oϋ4���A�7�S&�2N��`�Y����kU��Z�_��t����|�/1�g�.�L�M��v����ǀ�Ni����y٦�Ȩ{S�b3�x�����O���&�5�p��e8TcĤ����N����4�̩���$��T���;��)=Grm'W��4/O���}q�P���۴�ɖ����8�
N��3_z��<�
�;�ź�JʭIh.e�v2NH�G���q�Q�6gh^*Gm�8Tx�#FD�#�R:�F#	<��T�M���Mƒ_��>hX.�;H�!�-�i&�T�fۤ�i�,����L���UU�`=Ԫ�K��h��&B�0=%�Qp����9D�9�1�8X}/F�1�8D��y�TsL.u*�Y��*U(��IR�f����3�rE8P�f}