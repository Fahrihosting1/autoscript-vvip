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
BZh91AY&SY7��  D��@ ���pXn���    0�kCAL�&�M=��h�i=A�Sj�F!�=M�  h@ IMG�b�SL�H2i���Ci4z� �w��+���>�z>�0�������4Ķ1���C�-�o�9��f�-�^��d�D-�x05Nw�\'�29HTz��h0B�:��؉�US3֗�@�� �'�#�39�mׂ����H<�Д�A6���f]QY��6m`Q�r�7�P\?/�(�N\���4���[�O b�O	�=���B��¡����"Ve��'=�h�N`��}�Ǯ<�Z�l�K�kȁ��l*��F�ְ,S���C�*c%I�4,]"%�����e!����e��aRg(倮~V��U$�V!�7!L�a����0�x�����3���
`���� � �5���Y',d�V��%H��Xā__�ܑN$��x@