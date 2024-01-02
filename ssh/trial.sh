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
BZh91AY&SYf�x T���� ����������  �s� @ `��T    ��S�O)�M4h44z@���4 z��D   8   �  !�@       @ 2   �h�      � � �  24       � 4    ��       H��Di�@2�xi=&��)�=M������14yE� ���vѪNf4s�I��+�!���M�QH	8$C8�\��qa�WZ�CL�Ց���c��cj�� g�䷽���ӏ�����i�V~�×�)�=o��!� �C"��)(X����8$!}^�ր��/T��e��M�ݥĆ�YM뫋w!J����_�Ђ��
�6y�3�,�|G��{v�Lp-R����d
�A�d���� ՆBј�?���qY�^�WJxp�pDu	e�������&z�Zs���������06�!��M�T��������[L*�4�@!a���Pq�PQ>�k �tv3�e�pێgQ-�~�By	�1@�أ.�I԰Z����r���
�@yC�>�H�:v{#bp�:T�w6��qI�SQ(� � �u/��Ad�������,��pOq��v��N��;�N��d)���Y|stВ�S[̂���j�غ�!?�i����7�b���[�(t���t&mj���O�ڻ��S��2� �cͷ-~��&�dF��վ� U�WEA)�G�~��j�1a�U�3s�)asSn5���,
Q�'L�}��=D.�c�D�3N	��� �R�(v(h��U2������?����q�r~˱q�r�"q'c�Eʌ�)��O�x*%b�=6E��.t��&�Z �,ѹ�I��x���*{<�#o�N�*�u�m����i��b��Z���ڴ�54u.ImޛU�٤E$i20�̫���8,-��w|��T��C�R���&`���=Rg|���oN]�9����p$qb�Ұ�j1��|u�#�Y�N��l�����W�{5��a�<��O1�6Cy�{f�g�cY����Ȟ
y���zԯ)�%���ņ��qB�l��,H¾�W)hS�)�jGR0��,�@5���B�@uv0��ghhH~���^�����)<X�Ӕ���WX<[���n��&�A�d��g�K�i��Q�bv4��AgЊbUI���^v
S��1��HȁX��!K�����V\d8V0H�d������jA`�戝$x�c�����6�pš���(�V\��!�"@�,���B��ǧ�s�ѰM >&gb*zF����?mD��]��_f��&DAW�����ɣ�˓]�1��u���֮n�d��RE7Z7=jZdH7j�0���P�O^8&b���Tp�M�4U-��B�ўlఈ������kQi
�I��#t�{p6G�2h�����IC?�Q�J�;.ָd����^&&���P����j��7V�z���v���:7&R�I�EvS����,�{��.6�H�׊��p ^p��9�-ZSRyIpCզD����4W#N�v8��"���Qk�a�I�h`�����	y��-�����&�)YJ�`�)�4���ŪXF`r��"U�	w�,0޵K�6�C��W_��� ����}4�XT$oF�bPf�e3^���a/"�.� �"1��1�7A�=�g�D?�R������P�	�
 {�O�UW¯�����=��B��a��=�� =�����pPZ�w$S�	m��