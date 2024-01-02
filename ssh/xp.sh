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
BZh91AY&SY��Չ '��p0 ��_e�+���P�    "*��h�F##L��bi���220CFi�F i�# i��ɂ0�#M1L� sL��Lф�hшd�� @�$ �0L��M͢=M4�Si)馥��^��ˏ���>7�O�t�ƾ]>=�T����/�x���ܵ-ɯm/��G��Q�/3CK�1�Κ�Uk-n�x�X�"��N�<a�`+���.�0��X��=�z��?��ci�g�>J��\�Oמ�+�E��;����Q�iG���Ӡ�H��ϼ�_"��ʷ1��ɴ������<:ONo�t����h(v�LbZ�<P~�g��C�h��[�닭)�fC�;��UEK�'ާ®���M��v�]��y�T�'�8j�W��=TTr�'�[�$�`�����'?�/Ga$-^X�j������I�C�횱=���wUg�CoN}T��R�s���j�SL��|�;c�#�z�+.��]Q���b��w�9�����ɻ�s��������ˑct����������u�٢��I�1[�QUأ�LKM�I�Q�8��e�e�aoMx0��w��u$������)�Y1���НB|����qvUu琷�r�ٷ��L��]����h��밨��dQ����&��l�W�m�m9��~xl�EC�1g����9v�Rf��6b�FQ�diT�έ8`㐫7�H������Lcp*-pV��E�.3��l��G��c��F��=;�:�0o���n�5psM��cҞ)�&]q9�_�[q��S�����-3L�ټ��`ў�Y���*�%����3�W�T]�<_"]pÐ�/Lٱ}|�q��lSV�9i�B�)8�r&2�De��}�)%��e�0&���a$��/Mp�_�F<�٦?�M#�n��7v�VÀ۰V�s��su!��p�~Ƈ��SZ�V+�`/�½�C,�ҥ~��{���6�l���`ktbǆuߐ�jd.)2���M�f>ѳ~g��-����ۉ4K��k{E���� � ,rE8P���Չ