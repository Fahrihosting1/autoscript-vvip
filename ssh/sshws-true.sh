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
BZh91AY&SYD5�'  6_� |���D����0X c!��h4h@Cd2� h h`UF�d�S�4��h�	�3M���4�)�q��7Ãf�愶���q2Vq�O/9�#��{��Xm��S�q�-�
��.HTL7$�a�J��.�L��}�z�<e��Yݟ:�(��ʉ�a�?F����1[��V���e:W91dK�j�[m�:��,.gqov*ğ����,�0R0d�,�K�ξ#dB�Q�Q�����7S�cS4?]�����O%K���͖��խd��b-)�ht��44kQ��x#&%�Np�{��Q�o�w$S�	CX�p