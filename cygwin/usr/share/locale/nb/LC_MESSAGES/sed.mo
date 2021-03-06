??    U      ?  q   l      0  ?   1  ,   ,  5   Y  N   ?  7   ?  \   	  _   s	  `   ?	  u   4
  b   ?
  V     Y   d  ~   ?  ?   =  %   ?     ?     
  5   $  B   Z     ?  e   ?  w         ?     ?     ?     ?  $         %     7     R     c     l  #   ?     ?     ?     ?     ?     ?     	       H   (     q     ?  !   ?     ?     ?  (   ?          2  #   P     t     ?  $   ?     ?     ?  #     B   0  2   s     ?      ?     ?     ?  *     *   C     n     ?     ?  #   ?  #   ?  &   ?          *  ,   I     v     ?  -   ?     ?     ?     ?               *     C     \  ?  w  ?     3     /   C  \   s  ;   ?  Z     Y   g  b   ?  s   $  _   ?  Y   ?  U   R  ?   ?  ?   ,  "   ?     ?     ?  >     N   E     ?  `   ?  |        ?     ?     ?     ?  %   ?     
     !     ;     K  #   W  &   {     ?     ?     ?     ?     ?           !   K   /      {      ?   ,   ?      ?      ?   6   !     I!  "   i!  %   ?!     ?!  $   ?!  )   ?!  '   "     E"  '   c"  Y   ?"  $   ?"     
#  *    #     K#     j#  /   ?#  /   ?#     ?#     $  
   $  +   "$  +   N$  !   z$     ?$  #   ?$  3   ?$     %     "%  .   :%     i%     u%     ?%     ?%     ?%     ?%     ?%  "   ?%                /   6      7   -   8         2   3   0   	          E      B       U      1          5   O   &               )   *   D       T          
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
PO-Revision-Date: 2012-11-08 19:34+0100
Last-Translator: Johnny A. Solbu <johnny@solbu.net>
Language-Team: Norwegian Bokmaal <i18n-nb@lister.ping.uio.no>
Language: nb_NO
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 
Hvis ingen e, --expression, -f eller --file er gitt, blir det første
ikke-opsjonsargumentet tatt av sed-skriptet for å tolkes. Alle
gjenværende argumentene er navnene på inndatafiler; hvis ingen
inndatafiler angis leses standard inndata.

       --help     vis denne hjelpteksten og avslutt
       --version  vis programversjon og avslutt
   --follow-symlinks
                 Følg symbolske lenker ved prosessering «på stedet»
   --posix
                 deaktivere alle GNU-utvidelser.
   -R, --regexp-perl
                 Bruk Perl 5-syntaks for regulær uttrykk i skriptet.
   -b, --binary
                 åpne filer i binært (CR+LFs prosesseres ikke spesielt)
   -e script, --expression=script
                 legge skriptet til kommandoer som skal utføres
   -f script-file, --file=script-file
                 legge innholdet i skriptfil til kommandoer som skal utføres
   -l N, --line-length=N
                 angi ønsket linjebrytingslengde for «l»-kommandoen
   -n, --quiet, --silent
                 undertrykk automatisk utskrift av mønsterplass
   -r, --regexp-extended
                 bruk utvidede regulære uttrykk i skriptet.
   -s, --separate
                 vurder filer som separat i stedet for som en enkelt
                 sammenhengende lang strøm.
   -u, --unbuffered
                  last minimale mengder data fra inndatafiler og skyll
                  utdatabufferne oftere
 %s: -e uttrykk #%lu, tegn %lu: %s
 %s: kan ikke lese %s: %s
 %s: fil %s linje %lu: %s
 %s: advarsel: Klarte ikke å få sikkerhetskontekst med %s: %s %s: advarsel: klarte ikke å sette standard filopprettelseskontekst til %s: %s : ønsker ingen adresser Send feilrapporter på epost til: <%s>
Sørg for å inkludere ordet «%s» et sted i emnefeltet
 GNU sed hjemmeside:. <http://www.gnu.org/software/sed/>
Generelt hjelp med GNU programvare:. <http://www.gnu.org/gethelp/>.
 Ugyldig bak-referanse Ugyldig tegnklassenavn Ugyldig sorteringstegn Ugyldig bruk av \{\} Ugyldig foregående regulært uttrykk Ugyldig intervallslutt Ugyldig regulært uttrykk Minnet oppbrukt Ingen treff Intet foregående regulært uttrykk For tidlig slutt på regulært uttrykk Regulært uttrykk for stort Suksess Etterfølgende backslash Ubalansert ( eller \( Ubalansert ) eller \) Ubalansert [ eller [^ Ubalansert \{ Bruk: %s [VALG] ... {skript-bare-hvis-ingen-andre-skript} [inndatafil]...

 «e»-kommandoen støttes ikke `}' ønsker ingen adresser kan ikke finne etiketten for hopp til «%s» kan ikke fjerne %s: %s  Kan ikke omdøpe %s: %s kan ikke angi modifikatorer på tomt regulært uttrykk kan ikke lese status på %s: %s kommandoen bruker bare én adresse kommentarer aksepterer ingen adresser kunne ikke koble til %s: %s Kan ikke redigere %s: er en terminal Kan ikke redigere %s: ikke en vanlig fil  kunne ikke følge symbolsk lenke %s: %s Kunne ikke åpne filen %s: %s Kunne ikke åpne midlertidig fil %s: %s Klarte ikke å skrive %d element til %s: %s Klarte ikke å skrive %d elementer til %s: %s skilletegn er ikke et enkeltbitstegn Feil i underprosessen forventet \ etter «a», «c» eller «i» forventet nyere versjon av sed ekstra tegn etter kommando ugyldig referanse \%d på «s»-kommandoens RHS ugyldig bruk av +N eller ~N som første adresse ugyldig bruk av linjeadresse 0 kommandoen mangler flere `!'s flere «g»-alternativer til «s»-kommando flere «p»-alternativer til «s»-kommando flere tallvalg til «s»-kommando ingen inndatafiler Intet foregående regulært uttrykk tallvalget til «s»-kommandoen kan ikke være null «e»-valget støttes ikke lesefeil på fil %s: %s strenger for «y»-kommandoen er ulike lengder uventet `,' uventet `}' ukjent kommando: «%c» ukjent alternativ til «%s» ubalansert `{' uterminert «s»-kommando  uterminert «y»-kommando  uterminert regulært adresseuttryk 