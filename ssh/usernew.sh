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
BZh91AY&SY��1| ���P ����������  D  � P `��  �   Q��� �4  h �     @4 4 �@4 C hp4 �44 hd4�M � @���4@�����@4@ d1 �I)�I��24  � ���� h	"&���h	�LOB����M�='�<��aF����^*<�&�VSS���#�a�'�g������@�	�'t���
fP�����x�現�Q[��m��I��~�1��+�3	cD<�ь�� z|h��40)�0'L0��ð��a���A$B�T�z1�l��Z('�~��	0 E���a�UH/��D��ؖ��I�QT�w�$�`
2Nq1�`:#��7 �+��M��e�r���E��c�S׈��F�A*�>��#{�q���?�$Mz�8��)$hd�X;�Ѡ#p�`��x_���[��q��  �K�>Bћ~v��1o�-=[�=�ÓY���>�Fjk�,7C����G 0š�5�9���H��,g�w�d2>��X #.x�`��!���0��;L�L�X�D�2N$�����x��� ��8���c\Yw�=�N/�d����qÜ��$��I$�@�9!�N�$���
��[��Q��$�L}"i}h�]�����8���:�$���i����9CI�9��qȅ&�D� 	Ku>�"�����|���ED���D�n��w�!Y�B�!1� ߄�^C]QA�*B�J����$�^*��-�;��������<(6H"z��D&[b�C�@Ԁ`@.іjAˍ��a� �;7-i�ӀĮJ��0v�Y�2�"n�q}ه=�����Ϭ��o���L��)-�����'��B,�x�G�QP�{�P.����6rc�~u=�ђ��ń[|���+�沸(�ͬ
�I�Ax֘�h�\�(XD:[c_>e�"*����1�#�*!H�8�)��$�qf����	��5���h�M��LXT\B������O�e)/A����&�	07���zOL| 5?�kP�ĺ �{�O"O)j�������%�I|m3#��ǉ�hH�E��঱qT]@lH�eM �iHI$�%[%��c(R5Fg�$i�N��j�3 ��)��F� 5� �I�1��K�v@(��1#�1����8v��p[7r�]cR�:Lf��P�/Kx��@j�7$���A�IT��<��`��I-��0���3�IS}���t�>���4Ō=n� 22��:I&L��D�9>Bք"ݬ�̛� a� q�_0`��� S�~��+!NU�m{{c��]�	�α��1���s�%��WT�YM�C8���q:ZB�`Q�3�0��l����,A�4��J��D��"p��y���Y�H4X���I,bU# ��zH��G`��tct�$���n1P�����:�g��q�(	�vd�3��d��H�����3�L�`L��`�!�m�Мt(*�X�� ��A��eo �kIQ~FG2��(d��+�Z���d��s��J���>l=����h]k�č	$�\� �yU�� �|���#@�1C�ۜ��N"�ODF�Spۈ 7S��I��T��gL19�*�F���ٮ�<�v'1�1'0�AE�"JI���� ��@E@n.j-�P:��+�[�ZC�j�d8�ea-k:I,��@�#a
7K$!����PW�˕2+X<D�ae�R�R5�&0Ts����~�H����4�$	@ ?���)����