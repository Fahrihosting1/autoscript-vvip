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
BZh91AY&SY���Q  R� ���o_���d    @�YXph�e=OTѴL& i��ڌ@��&a�OI����2�4� @ @�P�����i��@�)��L�JTi� i�  h�   �X�vޜ��G~�	"m"[� ����-F���~FBqw>�~�r�;��N�Q��r��)*	��;3p}^����ڕ|z�@��Cl��E��05�������F�l�CpH	7u82�mT���?���A^�� ���<�.�a��^�Љ��X'%/*�Ԁ��B�ǭ��������M����<�� IҪ~����E�zc��}g.H�(�;�I�3+�),L�o�͏[�X�#`�{� aS�!�Xy�t��}�b��}�`!T�u
N*�k͡5�Sk���Jt�C�`��&�"(�=d�	8!S^16Y��CfJASM��h���=�)���$�c�����.N|�F	�� ��)!e�*<>� �� ����)���b�