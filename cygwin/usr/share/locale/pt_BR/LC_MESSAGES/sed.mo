??    U      ?  q   l      0  ?   1  ,   ,  5   Y  N   ?  7   ?  \   	  _   s	  `   ?	  u   4
  b   ?
  V     Y   d  ~   ?  ?   =  %   ?     ?     
  5   $  B   Z     ?  e   ?  w         ?     ?     ?     ?  $         %     7     R     c     l  #   ?     ?     ?     ?     ?     ?     	       H   (     q     ?  !   ?     ?     ?  (   ?          2  #   P     t     ?  $   ?     ?     ?  #     B   0  2   s     ?      ?     ?     ?  *     *   C     n     ?     ?  #   ?  #   ?  &   ?          *  ,   I     v     ?  -   ?     ?     ?     ?               *     C     \  ?  w  A  $  )   f  9   ?  a   ?  <   ,  _   i  \   ?  d   &  ?   ?  c     Y   }  e   ?  ?   =  ?   ?  )   t      ?     ?  6   ?  G        \  _   u  o   ?     E  %   \     ?  8   ?  #   ?  !   ?     !      <      M   !   ]   "         ?      ?      ?      ?      ?      !     !  F   ,!     s!     ?!  *   ?!     ?!      ?!  F   "     Y"  #   u"  !   ?"  !   ?"  .   ?"  7   #  %   D#  '   j#  2   ?#  \   ?#  1   "$     T$  9   h$  '   ?$  %   ?$  7   ?$  )   (%  $   R%  (   w%     ?%  '   ?%  '   ?%  5   
&     @&  !   Z&  =   |&     ?&     ?&  ?   ?&     ,'     C'     R'  -   m'     ?'  1   ?'  1   ?'  :   (                /   6      7   -   8         2   3   0   	          E      B       U      1          5   O   &               )   *   D       T          
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
PO-Revision-Date: 2010-07-23 09:21-0300
Last-Translator: Aurelio Jargas <verde@aurelio.net>
Language-Team: Brazilian Portuguese <ldp-br@bazar.conectiva.com.br>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
 
Se nenhuma op??o -e, --expression, -f, ou --file ? dada, o primeiro
argumento que n?o seja uma op??o ? considerado como o script sed a ser
interpretado. Todos os argumentos restantes s?o considerados como
nomes de arquivos de entrada. Caso nenhum arquivo de entrada seja
especificado, ent?o a entrada padr?o ser? lida.

       --help     mostra esta ajuda e sai
       --version  mostra informa??es sobre a vers?o e sai
   --follow-symlinks
                 segue links simb?licos ao editar o pr?prio arquivo original
   --posix
                 desativa todas as extens?es GNU.
   -R, --regexp-perl
                 usar sintaxe de express?es regulares do Perl 5 no script.
   -b, --binary
                 abre os arquivos em modo bin?rio (CR+LFs n?o s?o especiais)
   -e script, --expression=script
                 adiciona o script aos comandos a serem executados
   -f script-file, --file=script-file
                 adiciona o conte?do do arquivo-script aos comandos
                 a serem executados
   -l N, --line-length=N
                 determina comprimento da quebra de linha para comando `l'
   -n, --quiet, --silent
                 suprime a impress?o autom?tica do buffer padr?o
   -r, --regexp-extended
                 usar sintaxe moderna de express?es regulares (sem escapes).
   -s, --separate
                 considera arquivos como entidades separadas, e n?o como um
                 longo e ?nico fluxo de dados.
   -u, --unbuffered
                 carrega uma quantidade m?nima de dados dos arquivos de entrada
                 e descarrega os buffers de sa?da com mais freq??ncia
 %s: -e express?o #%lu, caractere %lu: %s
 %s: n?o foi poss?vel ler %s: %s
 %s: arquivo %s linha %lu: %s
 %s: aviso: falha ao obter o security context de %s: %s %s: aviso: falha ao definir o default file creation context para %s: %s `:' n?o recebe endere?os Envie relat?rios de erros (em ingl?s) para: %s.
Inclua a palavra ``%s'' no campo ``Assunto:''.
 Site do GNU sed: <http://www.gnu.org/software/sed/>.
Ajuda sobre softwares GNU: <http://www.gnu.org/gethelp/>.
 Retrovisor \n inv?lido Nome inv?lido de classe de caracteres Caractere de ordena??o inv?lido Conte?do inv?lido no \{\} (permitidos n?meros e v?rgula) Express?o regular anterior inv?lida Fim de intervalo (range) inv?lido Express?o regular inv?lida Falta de mem?ria Nada encontrado N?o h? express?o regular anterior Fim prematuro da express?o regular Express?o regular grande demais Sucesso Escape \ no final ( ou \( n?o terminado ) or \) inesperado [ ou [^ n?o terminado \{ n?o terminado Uso: %s [OP??O]... {script-apenas-se-for-?nico} [arquivo-entrada]...

 comando `e' n?o suportado `}' n?o recebe endere?os N?o foi poss?vel encontrar a marca??o `%s' N?o foi poss?vel remover %s: %s N?o foi poss?vel renomear %s: %s N?o ? permitido especificar modificadores numa express?o regular vazia N?o foi poss?vel ler %s: %s Este comando usa apenas um endere?o Coment?rios n?o aceitam endere?os n?o foi poss?vel anexar ao %s: %s N?o foi poss?vel editar %s, pois ? um terminal N?o foi poss?vel editar %s, pois n?o ? um arquivo comum N?o foi poss?vel seguir o link %s: %s N?o foi poss?vel abrir o arquivo %s: %s N?o foi poss?vel abrir o arquivo tempor?rio %s: %s n?o foi poss?vel escrever %d item para %s: %s n?o foi poss?vel escrever %d items para %s: %s O delimitador deve ser um caractere normal, ASCII erro no subprocesso Deve haver um escape \ depois dos comandos `a', `c' e `i' Esperada uma vers?o mais recente do sed H? caracteres sobrando ap?s o comando Refer?ncia inv?lida \%d na segunda parte do comando `s' N?o use +N ou ~N como o primeiro endere?o Uso incorreto do endere?o de linha 0 Falta especificar um comando ao endere?o Exclama??es `!' m?ltiplas op??es `g' m?ltiplas para o comando `s' op??es `p' m?ltiplas para o comando `s' op??es num?ricas m?ltiplas para o comando `s' (s///n) nenhum arquivo de entrada N?o h? express?o regular anterior A op??o num?rica para o comando `s' n?o pode ser zero (s///0) op??o `e' n?o suportada erro de leitura em %s: %s Os textos para o comando `y' t?m tamanhos diferentes (y/abc/z/) V?rgula `,' inesperada `}' inesperada Comando desconhecido: `%c' Op??o desconhecida para o comando `s' (s///?) `{' n?o terminada Comando `s' inacabado (s/// - faltou delimitador) Comando `y' inacabado (y/// - faltou delimitador) A express?o regular do endere?o est? inacabada (falta a /) 