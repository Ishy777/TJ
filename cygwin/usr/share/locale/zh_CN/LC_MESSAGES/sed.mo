??    Q      ?  m   ,      ?  ?   ?  ,   ?  5   	  N   ?  7   ?  \   ?  _   #	  `   ?	  u   ?	  b   Z
  V   ?
  Y     ~   n  ?   ?  %   }     ?     ?     ?     ?          %     A  $   Y     ~     ?     ?     ?     ?  #   ?          #     +     >     P     b     t  H   ?     ?     ?  !        %     :  (   O     x     ?  #   ?     ?     ?  $        ,     K  #   e  B   ?  2   ?     ?           4     R  *   q  *   ?     ?     ?     ?  #     #   )  &   M     t     ?  ,   ?     ?     ?  -   ?     +     :     I     _     u     ?     ?     ?  ?  ?  ?   k  '   N  -   v  J   ?  3   ?  L   #  c   p  ]   ?  i   2  R   ?  H   ?  Q   8  n   ?  d   ?  )   ^     ?  !   ?     ?     ?     ?               6     R     h     ?     ?     ?     ?     ?     ?     ?  !     !   #  !   E     g  M   |     ?     ?  /   ?     .     C  *   [     ?     ?     ?     ?  )   ?  /        J     g     ?  $   ?     ?     ?  2   ?           9  "   X  )   {     ?     ?     ?  #   ?  #   ?  "         ?      R   (   n      ?      ?   %   ?      ?      ?      !     '!     >!     R!     l!  !   ?!            "           E       Q                         =   F       L   B   
   5          -      4   2                +               N   C   @         ;           1   &   :       9   #           <   8   ,              P   %   )   K             	   0                      M   !       6   .       /       7   G         D   I   (      *   >   J         O   ?       $             '          3      H      A    
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
 : doesn't want any addresses Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Memory exhausted No match No previous regular expression Premature end of regular expression Regular expression too big Success Trailing backslash Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... {script-only-if-no-other-script} [input-file]...

 `e' command not supported `}' doesn't want any addresses can't find label for jump to `%s' cannot remove %s: %s cannot rename %s: %s cannot specify modifiers on empty regexp cannot stat %s: %s command only uses one address comments don't accept any addresses couldn't attach to %s: %s couldn't edit %s: is a terminal couldn't edit %s: not a regular file couldn't follow symlink %s: %s couldn't open file %s: %s couldn't open temporary file %s: %s couldn't write %d item to %s: %s couldn't write %d items to %s: %s delimiter character is not a single-byte character error in subprocess expected \ after `a', `c' or `i' expected newer version of sed extra characters after command invalid reference \%d on `s' command's RHS invalid usage of +N or ~N as first address invalid usage of line address 0 missing command multiple `!'s multiple `g' options to `s' command multiple `p' options to `s' command multiple number options to `s' command no input files no previous regular expression number option to `s' command may not be zero option `e' not supported read error on %s: %s strings for `y' command are different lengths unexpected `,' unexpected `}' unknown command: `%c' unknown option to `s' unmatched `{' unterminated `s' command unterminated `y' command unterminated address regex Project-Id-Version: sed 4.2.0
Report-Msgid-Bugs-To: bug-gnu-utils@gnu.org
POT-Creation-Date: 2012-12-22 14:36+0100
PO-Revision-Date: 2008-01-28 23:17+0800
Last-Translator: LI Daobing <lidaobing@gmail.com>
Language-Team: Chinese (simplified) <i18n-zh@googlegroups.com>
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 
如果没有 -e, --expression, -f 或 --file 选项，那么第一个非选项参数被视为
sed脚本。其他非选项参数被视为输入文件，如果没有输入文件，那么程序将从标准
输入读取数据。
       --help     打印帮助并退出
       --version  输出版本信息并退出
   --follow-symlinks
                 直接修改文件时跟随软链接
   --posix
                 关闭所有 GNU 扩展
   -R, --regexp-perl
                 使用 Perl 5 的正则表达式语法
   -b, --binary
                 以二进制方式打开文件 (回车加换行不做特殊处理)
   -e 脚本, --expression=脚本
                 添加“脚本”到程序的运行列表
   -f 脚本文件, --file=脚本文件
                 添加“脚本文件”到程序的运行列表
   -l N, --line-length=N
                 指定“l”命令的换行期望长度
   -n, --quiet, --silent
                 取消自动打印模式空间
   -r, --regexp-extended
                 在脚本中使用扩展正则表达式
   -s, --separate
                 将输入文件视为各个独立的文件而不是一个长的连续输入
   -u, --unbuffered
                 从输入文件读取最少的数据，更频繁的刷新输出
 %s：-e 表达式 #%lu，字符 %lu：%s
 %s：无法读取 %s：%s
 %s：文件 %s 行号：%lu：%s
 : 不需要任何地址 非法回引用 非法的字符类型名 非法的收集字符 “\{\}”中内容非法 非法的正则表达式头 非法的范围结束 非法的正则表达式 内存耗尽 没有匹配项 前面没有正则表达式 正则表达式不完整 正则表达式过大 成功 尾端的“\” 未匹配的“(”或者“\(” 未匹配的“)”或者“\)” 未匹配的“[”或者“[^” 未匹配的“\{” 用法: %s [选项]... {脚本(如果没有其他脚本)} [输入文件]...

 不支持命令“e” “}”不需要任何地址 无法为目的为“%s”的跳转找到标签 无法移除 %s：%s 无法重命名 %s：%s 无法对空正则表达式指定修饰符 无法获取 %s 的状态: %s 命令只使用一个地址 注释不接受任何地址 无法绑定 %s: %s 无法编辑文件 %s: 这是一个终端 无法编辑文件 %s: 不是一个普通文件 无法跟随软链接 %s: %s 无法打开文件 %s: %s 无法打开临时文件 %s: %s 无法将 %d 个项目写入 %s：%s 分割符长度不为1 子进程出错 期望在“a”, “c”, “i”之后有“\” 需要更高版本的sed 命令后含有多余的字符 “s”命令的RHS非法引用\%d 无法将 +N 或 ~N 作为第一个地址 非法使用地址0 遗漏命令 多个“!” 多个“s”命令的选项“g” 多个“s”命令的选项“p” 多个“s”命令的数值选项 没有输入文件 前面没有正则表达式 “s”命令的数值选项不能为零 不支持选项“e” 读取 %s 出错：%s “y”命令的字符串长度不同 意外的“,” 意外的“}” 未知的命令：“%c” “s”的未知选项 未匹配的“{” 未终止的“s”命令 未终止的“y”命令 未终止的地址正则表达式 