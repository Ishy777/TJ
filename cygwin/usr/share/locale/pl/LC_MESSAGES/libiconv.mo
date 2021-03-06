??    .      ?  =   ?      ?  C   ?  9   5  o   o  B   ?  m   "  ?   ?  \   ?  ;   -  P   i  [   ?       @     N   Z  J   ?  D   ?  d   9  ?   ?  :   9	     t	     ?	     ?	  0   ?	     ?	  5   ?	  	   
     
  )   2
  "   \
  1   
  +   ?
  &   ?
  A     ;   F     ?  /   ?  7   ?  3   ?  :   .  ;   i  $   ?     ?     ?            2   $  ?  W  M   B  D   ?  t   ?  M   J  w   ?  C     V   T  >   ?  R   ?  T   =     ?  H   ?  P   ?  R   /  @   ?  Z   ?  ?     3        H     [      d  /   ?     ?  0   ?     ?     ?  )     !   >  ,   `  ;   ?  &   ?  D   ?  <   5     r  9   ?  D   ?  A     F   G  O   ?  2   ?  '     (   9     b     q  (   ?             $                                    %         )                 ,                         +      !   	                '      "   (   .   -                  
                  #          &      *            --byte-subst=FORMATSTRING   substitution for unconvertible bytes
   --help                      display this help and exit
   --unicode-subst=FORMATSTRING
                              substitution for unconvertible Unicode characters
   --version                   output version information and exit
   --widechar-subst=FORMATSTRING
                              substitution for unconvertible wide characters
   -c                          discard unconvertible characters
   -f ENCODING, --from-code=ENCODING
                              the encoding of the input
   -l, --list                  list the supported encodings
   -s, --silent                suppress error messages about conversion problems
   -t ENCODING, --to-code=ENCODING
                              the encoding of the output
 %s %s argument: A format directive with a size is not allowed here. %s argument: A format directive with a variable precision is not allowed here. %s argument: A format directive with a variable width is not allowed here. %s argument: The character '%c' is not a valid conversion specifier. %s argument: The character that terminates the format directive is not a valid conversion specifier. %s argument: The format string consumes more than one argument: %u argument. %s argument: The format string consumes more than one argument: %u arguments. %s argument: The string ends in the middle of a directive. %s: I/O error %s:%u:%u %s:%u:%u: cannot convert %s:%u:%u: incomplete character or shift sequence (stdin) Converts text from one encoding to another encoding.
 I/O error Informative output:
 Options controlling conversion problems:
 Options controlling error output:
 Options controlling the input and output format:
 Report bugs to <bug-gnu-libiconv@gnu.org>.
 Try `%s --help' for more information.
 Usage: %s [OPTION...] [-f ENCODING] [-t ENCODING] [INPUTFILE...]
 Usage: iconv [-c] [-s] [-f fromcode] [-t tocode] [file ...] Written by %s.
 cannot convert byte substitution to Unicode: %s cannot convert byte substitution to target encoding: %s cannot convert byte substitution to wide string: %s cannot convert unicode substitution to target encoding: %s cannot convert widechar substitution to target encoding: %s conversion from %s to %s unsupported conversion from %s unsupported conversion to %s unsupported or:    %s -l
 or:    iconv -l try '%s -l' to get the list of supported encodings Project-Id-Version: libiconv 1.12
Report-Msgid-Bugs-To: bug-gnu-libiconv@gnu.org
POT-Creation-Date: 2011-08-07 15:24+0200
PO-Revision-Date: 2007-12-26 23:20+0100
Last-Translator: Jakub Bogusz <qboosh@pld-linux.org>
Language-Team: Polish <translation-team-pl@lists.sourceforge.net>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
   --byte-subst=?A?CUCH_FORMATUJ?CY   zamiennik dla niekonwertowalnych bajt?w
   --help                      wy?wietlenie tego opisu i zako?czenie
   --unicode-subst=?A?CUCH_FORMATUJ?CY
                              zamiennik dla niekonwertowalnych znak?w Unicode
   --version                   wy?wietlenie informacji o wersji i zako?czenie
   --widechar-subst=?A?CUCH_FORMATUJ?CY
                              zamiennik dla niekonwertowalnych znak?w szerokich
   -c                          pomini?cie niekonwertowalnych znak?w
   -f KODOWANIE, --from-code=KODOWANIE
                              kodowanie wej?cia
   -l, --list                  wypisanie obs?ugiwanych kodowa?
   -s, --silent                pomini?cie komunikat?w b??d?w dotycz?cych konwersji
   -t KODOWANIE, --to-code=KODOWANIE
                              kodowanie wyj?cia
 %s Argument %s: dyrektywa formatuj?ca z rozmiarem nie jest tutaj dozwolona. Argument %s: dyrektywa formatuj?ca o zmiennej precyzji nie jest tutaj dozwolona. Argument %s: dyrektywa formatuj?ca o zmiennej szeroko?ci nie jest tutaj dozwolona. Argument %s: znak '%c' nie jest poprawnym okre?leniem konwersji. Argument %s: znak ko?cz?cy dyrektyw? formatuj?c? nie jest poprawnym okre?leniem konwersji. Argument %s: ?a?cuch formatuj?cy pobiera wi?cej ni? jeden argument: %u argument. Argument %s: ?a?cuch formatuj?cy pobiera wi?cej ni? jeden argument: %u argumenty. Argument %s: ?a?cuch formatuj?cy pobiera wi?cej ni? jeden argument: %u argument?w. Argument %s: ?a?cuch ko?czy si? w ?rodku dyrektywy. %s: b??d wej./wyj. %s:%u:%u %s:%u:%u: nie mo?na skonwertowa? %s:%u:%u niedoko?czony znak lub sekwencja shift (stdin) Konwersja tekstu z jednego kodowania do innego.
 b??d wej./wyj. Wyj?cie informacyjne:
 Opcje steruj?ce zagadnieniami konwersji:
 Opcje steruj?ce wyj?ciem b??d?w:
 Opcje steruj?ce formatem wej?cia i wyj?cia:
 B??dy prosz? zg?asza? na adres <bug-gnu-libiconv@gnu.org>.
 `%s --help' poka?e wi?cej informacji.
 Sk?adnia: %s [OPCJA...] [-f KODOWANIE] [-t KODOWANIE] [PLIK_WEJ...]
 Sk?adnia: iconv [-c] [-s] [f z_kodu] [-t do_kodu] [plik ...] Napisane przez %s.
 nie mo?na przekonwertowa? zamiennika bajtu na Unicode: %s nie mo?na przekonwertowa? zamiennika bajtu na kodowanie docelowe: %s nie mo?na przekonwertowa? zamiennika bajtu na ?a?cuch szeroki: %s nie mo?na przekonwertowa? zamiennika unicode na kodowanie docelowe: %s nie mo?na przekonwertowa? zamiennika znaku szerokiego na kodowanie docelowe: %s konwersja z kodu %s do kodu %s jest nieobs?ugiwana konwersja z kodu %s jest nieobs?ugiwana konwersja do kodu %s jest nieobs?ugiwana lub:    %s -l
 lub:    iconv -l '%s -l' poda list? obs?ugiwanych kodowa? 