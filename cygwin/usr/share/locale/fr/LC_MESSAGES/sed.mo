??    U      ?  q   l      0  ?   1  ,   ,  5   Y  N   ?  7   ?  \   	  _   s	  `   ?	  u   4
  b   ?
  V     Y   d  ~   ?  ?   =  %   ?     ?     
  5   $  B   Z     ?  e   ?  w         ?     ?     ?     ?  $         %     7     R     c     l  #   ?     ?     ?     ?     ?     ?     	       H   (     q     ?  !   ?     ?     ?  (   ?          2  #   P     t     ?  $   ?     ?     ?  #     B   0  2   s     ?      ?     ?     ?  *     *   C     n     ?     ?  #   ?  #   ?  &   ?          *  ,   I     v     ?  -   ?     ?     ?     ?               *     C     \  ?  w  &    /   (  L   X  X   ?  A   ?     @  t   ?  c   5  ?   ?     +  a   ?  ?     ?   ?  ?     +   ?          !  J   ?  _   ?     ?  r     ?   {        $   &      K      k   .   ?      ?      ?      ?      ?   %   !  )   4!      ^!     !     ?!     ?!     ?!     ?!     ?!  \   ?!  #   F"     j"  4   ?"     ?"     ?"  J   ?"  A   G#  $   ?#  +   ?#     ?#  '   ?#  8   $  .   X$  %   ?$  0   ?$  J   ?$  >   )%     h%     ?%  ,   ?%  %   ?%  <   ?%  7   6&  ,   n&     ?&     ?&  '   ?&  '   ?&  .   '     ;'  %   S'  7   y'      ?'     ?'  E   ?'     5(     D(     R(     j(     ?(     ?(     ?(  (   ?(                /   6      7   -   8         2   3   0   	          E      B       U      1          5   O   &               )   *   D       T          
       ?   >      $   9          F                         ,      ;   K   R            .   H       "                P   L   Q   A           '   4   :   @   !          J   N       <   C   #          M          I           %       G   (         S   =              +          
If no -e, --expression, -f, or --file option is given, then the first
non-option argument is taken as the sed script to interpret.  All
remaining arguments are names of input files; if no input files are
specified, then the standard input is read.

       --help     display this help and exit
       --version  output version information and exit
   --follow-symlinks
                 follow symlinks when processing in place
   --posix
                 disable all GNU extensions.
   -R, --regexp-perl
                 use Perl 5's regular expressions syntax in the script.
   -b, --binary
                 open files in binary mode (CR+LFs are not processed specially)
   -e script, --expression=script
                 add the script to the commands to be executed
   -f script-file, --file=script-file
                 add the contents of script-file to the commands to be executed
   -l N, --line-length=N
                 specify the desired line-wrap length for the `l' command
   -n, --quiet, --silent
                 suppress automatic printing of pattern space
   -r, --regexp-extended
                 use extended regular expressions in the script.
   -s, --separate
                 consider files as separate rather than as a single continuous
                 long stream.
   -u, --unbuffered
                 load minimal amounts of data from the input files and flush
                 the output buffers more often
 %s: -e expression #%lu, char %lu: %s
 %s: can't read %s: %s
 %s: file %s line %lu: %s
 %s: warning: failed to get security context of %s: %s %s: warning: failed to set default file creation context to %s: %s : doesn't want any addresses E-mail bug reports to: <%s>.
Be sure to include the word ``%s'' somewhere in the ``Subject:'' field.
 GNU sed home page: <http://www.gnu.org/software/sed/>.
General help using GNU software: <http://www.gnu.org/gethelp/>.
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Memory exhausted No match No previous regular expression Premature end of regular expression Regular expression too big Success Trailing backslash Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... {script-only-if-no-other-script} [input-file]...

 `e' command not supported `}' doesn't want any addresses can't find label for jump to `%s' cannot remove %s: %s cannot rename %s: %s cannot specify modifiers on empty regexp cannot stat %s: %s command only uses one address comments don't accept any addresses couldn't attach to %s: %s couldn't edit %s: is a terminal couldn't edit %s: not a regular file couldn't follow symlink %s: %s couldn't open file %s: %s couldn't open temporary file %s: %s couldn't write %d item to %s: %s couldn't write %d items to %s: %s delimiter character is not a single-byte character error in subprocess expected \ after `a', `c' or `i' expected newer version of sed extra characters after command invalid reference \%d on `s' command's RHS invalid usage of +N or ~N as first address invalid usage of line address 0 missing command multiple `!'s multiple `g' options to `s' command multiple `p' options to `s' command multiple number options to `s' command no input files no previous regular expression number option to `s' command may not be zero option `e' not supported read error on %s: %s strings for `y' command are different lengths unexpected `,' unexpected `}' unknown command: `%c' unknown option to `s' unmatched `{' unterminated `s' command unterminated `y' command unterminated address regex Project-Id-Version: sed 4.2.1
Report-Msgid-Bugs-To: bug-gnu-utils@gnu.org
POT-Creation-Date: 2012-12-22 14:36+0100
PO-Revision-Date: 2009-11-04 13:22+0100
Last-Translator: Gael Queri <gael@lautre.net>
Language-Team: French <traduc@traduc.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
 
Si aucune option -e, --expression, -f ou --file n'est donn?e, le
premier argument qui n'est pas une option sera pris comme ?tant le script
sed ? interpr?ter. Tous les arguments restants sont les noms des fichiers
d'entr?e; si aucun fichier d'entr?e n'est sp?cifi?e, l'entr?e standard
est lue.
       --help     afficher cette aide et sortir
       --version  afficher les informations de version du logiciel et sortir
   --follow-symlinks
                 suivre les liens symboliques pendant le traitement
   --posix
                 d?sactiver toutes les extensions GNU.
   -R, --regexp-perl
                 utiliser la syntaxe des expressions r?guli?res
                 de Perl 5 dans le script.
   -b, --binary
                 ouvrir les fichiers en mode binaire (CR+LF ne sont pas trait?s comme une exception)
   -e script, --expression=script
                 ajouter le script aux commandes ? ?tre ex?cut?es
   -f fichier-script, --file=fichier-script
                 ajouter le contenu de fichier-script aux commandes
                 ? ?tre ex?cut?es
   -l N, --line-length=N
                sp?cifier la longueur de coupure de ligne d?sir?e pour la
                commande `l'
   -n, --quiet, --silent
                 supprimer l'?criture automatique de l'espace des motifs
   -r, --regexp-extended
                 utiliser la syntaxe des expressions r?guli?res
                 ?tendues dans le script.
   -s, --separate
                consid?rer les fichiers comme s?par?s plut?t que comme un
                simple flux long et continu.
   -u, --unbuffered
                 charger des quantit?s minimales de donn?es depuis les
                 fichiers d'entr?e et lib?rer les tampons de sortie plus
                 souvent
 %s: -e expression n?%lu, caract?re %lu: %s
 %s: impossible de lire %s: %s
 %s: fichier %s ligne %lu: %s
 %s: avertissement: impossible de prendre le contexte de s?curit? de %s: %s %s: avertissement: impossible de changer le contexte de cr?ation de fichier par d?faut ? %s: %s : n'a besoin d'aucune adresse Rapporter toutes anomalies ?: <%s>.
N'oubliez pas d'inclure le mot ``%s'' quelque-part dans la zone ``Subject:''.
 Page de GNU sed: <http://www.gnu.org/software/sed/>.
Aide g?n?rale pour utiliser les logiciels GNU: <http://www.gnu.org/help/gethelp.fr.html>.
 R?f?rence arri?re invalide Nom de classe de caract?res invalide Caract?re de collation invalide Contenu de \{\} invalide L'expression r?guli?re pr?c?dente est invalide Fin d'intervalle invalide Expression r?guli?re invalide M?moire ?puis?e Pas de concordance Pas d'expression r?guli?re pr?c?dente Fin pr?matur?e d'une expression r?guli?re Expression r?guli?re trop grande Succ?s Antislash de protection ( ou \( non referm? ) ou \) non referm? [ ou [^ non referm? \{ non referm? Utilisation: %s [OPTION]... {script-seulement-si-pas-d'autre-script}
[fichier-d'entr?e]...

 la commande `e' n'est pas support?e `}' n'a besoin d'aucune adresse impossible de trouver l'?tiquette pour sauter ? `%s' impossible de supprimer %s: %s impossible de renommer %s: %s impossible de sp?cifier des modifieurs sur une expression
rationnelle vide impossible de faire un appel syst?me "stat" sur le fichier %s: %s la commande n'utilise qu'une adresse les commentaires n'acceptent aucune adresse impossible d'attacher %s: %s impossible d'?diter %s: est un terminal impossible d'?diter %s: ce n'est pas un fichier r?gulier impossible de suivre le lien symbolique %s: %s impossible d'ouvrir le fichier %s: %s impossible d'ouvrir le fichier temporaire %s: %s impossible d'?crire %d item ? %s: %s impossible d'?crire %d items ? %s: %s le caract?re d?limiteur n'est pas un caract?re ? un seul octet erreur dans le sous-processus \ attendu apr?s `a', `c' ou `i' une version plus r?cente de sed est attendue caract?res inutiles apr?s la commande r?f?rence \%d invalide dans le c?t? droit de la commande `s' utilisation invalide de +N ou ~N comme premi?re adresse utilisation invalide de l'adresse de ligne 0 commande manquante `!' multiples plusieurs options `g' ? la commande `s' plusieurs options `p' ? la commande `s' plusieurs options num?riques ? la commande `s' pas de fichier d'entr?e pas d'expression r?guli?re pr?c?dente l'option num?rique de la comande `s' ne peut ?tre nulle l'option `e' n'est pas support?e erreur de lecture sur %s: %s les cha?nes destin?es ? la commande `y' ont des longueurs diff?rentes `,' inattendue `}' inattendu commande inconnue: `%c' option inconnue pour `s' `{' non referm?e commande `s' inachev?e commande `y' inachev?e expression r?guli?re d'adresse inachev?e 