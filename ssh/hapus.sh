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
BZh91AY&SYWo0&  G�D ���E^,���    0{X��D4��S�MPƧ��h����y������M
@�Pi�ѣd�OH�I��1 �&���ɴM4�e ЦP�F{ڽ����l�L�� s$���5iܭ��op8�NQ�dL�'?�6��|!�8��m�uI��G�uZߵ>�%�p�,���P�x�Jc��T�|8�q'�5,	�=�^�1B�H`]@(��&89�����|��)`�[�&PA�+�Vѱ�f�C� ��]�ViA���8Ag�:��"�9^+�cQ�a�z��`>/a�Gu˰X���)�d�1�>�O\SOBʸHF��L�غ �Xv�(��|9��U�,���CH9RƘH��RXE,A�s���[N!#<J��Q�U��zX���IKd�:���%�j�<�ư�I�I�!��g#��.�p� ��`L