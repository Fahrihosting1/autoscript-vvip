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
BZh91AY&SYj)�� m��}P ����������  D   � `��t�PV�.�  �L&(���ښh�A��4�M@� �@ 4� hi�@44i�4 p� �@`�i�d � 	D�D�$4i� d4ީ�����z�b='�I���&�i  �       h h"�4&F�ɀ�`"m$y�=�<��dh4�#A�H"���H�ұ܈wK��gT޴2L� �"!�RR��"��Ft�N]�%W�e_m�ےT��~�DTow�����#
�x�+G��ܨ��9\8��9�!1�!�d4�0�D��%l�$���k&y,��#�b��pUc��'��!�Sz����8+���V������?�U��[��W0[�����,�JsҬL��B ˗^&�1S麉E�A�~��}���ʥ.��\��YiCL
��7	a�A	��q�ُ��V��2|\}�,C2��(��D���R:Ij�T�N�(<�%[7R6$@�9y�sxi�$�^�Kx	j��wG\m>�_d�Cf�h��A8� �xNHO���
6c>A�.�[W�l�Q������~+^�v�($y�����XPRB��VH�6�k�F>�'i���t`S~�U�#��@���*����6	�`�N/�Q�p�xY�
V}}5�ο9�����G�fn4f�1�4�	�����`�)!#�ت�b"pt�d�����7}��*�a(����SSҺ����~�pJ��g�w'k��PԦ�aA7�jp<!kV
0��nm�~ٓ&��(3��	@�E���2��\�6��M3�GY��C/��:`˖�5=E���e����0�qU呑�d<��fTn��h�P-7�ZD���\�Ie�y�17��r'�;eTF"n&��T�<Q=d�����A�}�r6Jn*���|�&���m�i�����v� !��	�aX��	�Ѓ5E�#@�e�k0T���9ٰj���%��$'
�e�z�
�KE3׃����_J��}J��p�4/��ɔT�����p����<hl٢�x��$�f{v��W��n#H:JϺ��T����,��I�FHě6��9��El�PA�9̪�EZY�W\�9
�Ɛ��!�*��1W����Q!Vܑ��U�}��e�H/�Eґ3���*��&~�v�S&��n8�q�}U���
<;Nb�)q���vum$�����3A���	��4}��rKPt��� ���Y���F\ɬ�`��@� ʹ�'�C)5)'qt��A*U`m�
�^E>���B������wp��
�u)���$s1�7!8	��J!`4�-�~r�af�ȴ�R�)S ĉ�v���<�� �����c�$�׫a���AO�z2	q�(i�i�4�	C���w@|������>���e�5����hP��f��KC�\���JU��v����"xVZ�������<e�ʬ��������^fE�-s��DӔ���P�;s@�A*��X��;KBc�K
8&���X�Q�
ܥTp.SH!	��$̖ZX����G9�<�/�n�W�@��V`������83xYLՎ������@@����N
9�}�� EbL�B��+> ABx����)�QN�H