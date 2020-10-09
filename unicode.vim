" ==============================================================================
" Unicode goodies
" ==============================================================================

"       ▼  Controls and Latin-1 Suppl.
"  U+00A0    ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ¬ ­ ® ¯

" default imapping for <C-u> is undo... we do NOT want that or failure to input
" a unicode mapping in time will result in undoing everything that was just
" typed!
imap <C-u> <Nop>

inoremap <C-u>! ¡
inoremap <C-u>cent ¢
inoremap <C-u>pound £
inoremap <C-u>currency ¤
inoremap <C-u>yen ¥
inoremap <C-u>brokenbar ¦
inoremap <C-u>section §
inoremap <C-u>diaeresis ¨
inoremap <C-u>copyright ©
inoremap <C-u>fordinal ª
inoremap <C-u><<" «
inoremap <C-u>not ¬
inoremap <C-u>softhyphen ­
inoremap <C-u>registered ®
inoremap <C-u>macron ¯

"  U+00B0  ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿

inoremap <C-u>degree °
inoremap <C-u>plusminus ±
inoremap <C-u>^2 ²
inoremap <C-u>^3 ³
inoremap <C-u>` ´
inoremap <C-u>micro µ
inoremap <C-u>pilcrow ¶
inoremap <C-u>middledot ·
inoremap <C-u>cedilla ¸
inoremap <C-u>^1 ¹
inoremap <C-u>mordinal º
inoremap <C-u>>>" »
inoremap <C-u>1/4 ¼
inoremap <C-u>1/2 ½
inoremap <C-u>3/4 ¾
inoremap <C-u>? ¿

"  U+00C0  À Á Â Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï

" inoremap <C-u>graveA À
" inoremap <C-u>acuteA Á
" inoremap <C-u>circumflexA Â
" inoremap <C-u>tildeA Ã
" inoremap <C-u>diaeresisA Ä
" inoremap <C-u>ringA Å
" inoremap <C-u>AE Æ
" inoremap <C-u>cedillaC Ç
" inoremap <C-u>graveE È
" inoremap <C-u>acuteE É
" inoremap <C-u>circumflexE Ê
" inoremap <C-u>diaeresisE Ë
" inoremap <C-u>graveI Ì
" inoremap <C-u>acuteI Í
" inoremap <C-u>circumflexI Î
" inoremap <C-u>diaeresisI Ï

"  U+00D0  Ð Ñ Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß

" inoremap <C-u>Eth Ð
" inoremap <C-u>tildeN Ñ
" inoremap <C-u>graveO Ò
" inoremap <C-u>acuteO Ó
" inoremap <C-u>circumflexO Ô
" inoremap <C-u>tildeO Õ
" inoremap <C-u>diaeresisO Ö
inoremap <C-u>mult ×
" inoremap <C-u>strokeO Ø
" inoremap <C-u>graveU Ù
" inoremap <C-u>acuteU Ú
" inoremap <C-u>circumflexU Û
" inoremap <C-u>diaeresisU Ü
" inoremap <C-u>acuteY Ý
" inoremap <C-u>Thorn Þ
" inoremap <C-u>eszett ß

"  U+00E0  à á â ã ä å æ ç è é ê ë ì í î ï

" inoremap <C-u>gravea à
" inoremap <C-u>acutea á
" inoremap <C-u>circumflexa â
" inoremap <C-u>tildea ã
" inoremap <C-u>diaeresisa ä
" inoremap <C-u>ringa å
inoremap <C-u>ae æ
" inoremap <C-u>cedillac ç
" inoremap <C-u>gravee è
" inoremap <C-u>acutee é
" inoremap <C-u>circumflexe ê
" inoremap <C-u>diaeresise ë
" inoremap <C-u>gravei ì
" inoremap <C-u>acutei í
" inoremap <C-u>circumflexi î
" inoremap <C-u>diaeresisi ï

"  U+00F0  ð ñ ò ó ô õ ö ÷ ø ù ú û ü ý þ ÿ

" inoremap <C-u>eth ð
" inoremap <C-u>tilden ñ
" inoremap <C-u>graveo ò
" inoremap <C-u>acuteo ó
" inoremap <C-u>circumflexo ô
" inoremap <C-u>tildeo õ
" inoremap <C-u>diaeresiso ö
inoremap <C-u>div ÷
" inoremap <C-u>strokeo ø
" inoremap <C-u>graveu ù
" inoremap <C-u>acuteu ú
" inoremap <C-u>circumflexu û
" inoremap <C-u>diaeresisu ü
" inoremap <C-u>acutey ý
" inoremap <C-u>thorn þ
" inoremap <C-u>diaeresisy ÿ

"       ▼  Latin Extended-A
"  U+0100  Ā ā Ă ă Ą ą Ć ć Ĉ ĉ Ċ ċ Č č Ď ď

" inoremap <C-u>macronA Ā
" inoremap <C-u>macrona ā
" inoremap <C-u>breveA Ă
" inoremap <C-u>brevea ă
" inoremap <C-u>ogonekA Ą
" inoremap <C-u>ogoneka ą
" inoremap <C-u>acuteC Ć
" inoremap <C-u>acutec ć
" inoremap <C-u>circumflexC Ĉ
" inoremap <C-u>circumflexc ĉ
" inoremap <C-u>dotC Ċ
" inoremap <C-u>dotc ċ
" inoremap <C-u>caronC Č
" inoremap <C-u>caronc č
" inoremap <C-u>caronD Ď
" inoremap <C-u>carond ď

"  U+0110  Đ đ Ē ē Ĕ ĕ Ė ė Ę ę Ě ě Ĝ ĝ Ğ ğ

" inoremap <C-u>strokeD Đ
" inoremap <C-u>stroked đ
" inoremap <C-u>macronE Ē
" inoremap <C-u>macrone ē
" inoremap <C-u>breveE Ĕ
" inoremap <C-u>brevee ĕ
" inoremap <C-u>dotE Ė
" inoremap <C-u>dote ė
" inoremap <C-u>ogonekE Ę
" inoremap <C-u>ogoneke ę
" inoremap <C-u>caronE Ě
" inoremap <C-u>carone ě
" inoremap <C-u>circumflexG Ĝ
" inoremap <C-u>circumflexg ĝ
" inoremap <C-u>breveG Ğ
" inoremap <C-u>breveg ğ

"  U+0120  Ġ ġ Ģ ģ Ĥ ĥ Ħ ħ Ĩ ĩ Ī ī Ĭ ĭ Į į

" inoremap <C-u>dotG Ġ
" inoremap <C-u>dotg ġ
" inoremap <C-u>cedillaG Ģ
" inoremap <C-u>cedillag ģ
" inoremap <C-u>circumflexH Ĥ
" inoremap <C-u>circumflexh ĥ
" inoremap <C-u>strokeH Ħ
" inoremap <C-u>strokeh ħ
" inoremap <C-u>tildeI Ĩ
" inoremap <C-u>tildei ĩ
" inoremap <C-u>macronI Ī
" inoremap <C-u>macroni ī
" inoremap <C-u>breveI Ĭ
" inoremap <C-u>brevei ĭ
" inoremap <C-u>ogonekI Į
" inoremap <C-u>ogoneki į

"  U+0130  İ ı Ĳ ĳ Ĵ ĵ Ķ ķ ĸ Ĺ ĺ Ļ ļ Ľ ľ Ŀ

" inoremap <C-u>dotI İ
" inoremap <C-u>dotlessi ı
" inoremap <C-u>IJ Ĳ
" inoremap <C-u>ij ĳ
" inoremap <C-u>circumflexJ Ĵ
" inoremap <C-u>circumflexj ĵ
" inoremap <C-u>cedillaK Ķ
" inoremap <C-u>cedillak ķ
" inoremap <C-u>kra ĸ
" inoremap <C-u>acuteL Ĺ
" inoremap <C-u>acutel ĺ
" inoremap <C-u>cedillaL Ļ
" inoremap <C-u>cedillal ļ
" inoremap <C-u>caronL Ľ
" inoremap <C-u>caronl ľ
" inoremap <C-u>middledotL Ŀ

"  U+0140  ŀ Ł ł Ń ń Ņ ņ Ň ň ŉ Ŋ ŋ Ō ō Ŏ ŏ

" inoremap <C-u>middledotl ŀ
" inoremap <C-u>strokeL Ł
" inoremap <C-u>strokel ł
" inoremap <C-u>acuteN Ń
" inoremap <C-u>acuten ń
" inoremap <C-u>cedillaN Ņ
" inoremap <C-u>cedillan ņ
" inoremap <C-u>caronN Ň
" inoremap <C-u>caronn ň
" inoremap <C-u>apostrophen ŉ
" inoremap <C-u>Eng Ŋ
" inoremap <C-u>eng ŋ
" inoremap <C-u>macronO Ō
" inoremap <C-u>macrono ō
" inoremap <C-u>breveO Ŏ
" inoremap <C-u>breveo ŏ

"  U+0150  Ő ő Œ œ Ŕ ŕ Ŗ ŗ Ř ř Ś ś Ŝ ŝ Ş ş

" inoremap <C-u>dacuteO Ő
" inoremap <C-u>dacuteo ő
" inoremap <C-u>OE Œ
" inoremap <C-u>oe œ
" inoremap <C-u>acuteR Ŕ
" inoremap <C-u>acuter ŕ
" inoremap <C-u>cedillaR Ŗ
" inoremap <C-u>cedillar ŗ
" inoremap <C-u>caronR Ř
" inoremap <C-u>caronr ř
" inoremap <C-u>acuteS Ś
" inoremap <C-u>acutes ś
" inoremap <C-u>circumflexS Ŝ
" inoremap <C-u>circumflexs ŝ
" inoremap <C-u>cedillaS Ş
" inoremap <C-u>cedillas ş

"  U+0160  Š š Ţ ţ Ť ť Ŧ ŧ Ũ ũ Ū ū Ŭ ŭ Ů ů

" inoremap <C-u>caronS Š
" inoremap <C-u>carons š
" inoremap <C-u>cedillaT Ţ
" inoremap <C-u>cedillat ţ
" inoremap <C-u>caronT Ť
" inoremap <C-u>caront ť
" inoremap <C-u>strokeT Ŧ
" inoremap <C-u>stroket ŧ
" inoremap <C-u>tildeU Ũ
" inoremap <C-u>tildeu ũ
" inoremap <C-u>macronU Ū
" inoremap <C-u>macronu ū
" inoremap <C-u>breveU Ŭ
" inoremap <C-u>breveu ŭ
" inoremap <C-u>ringU Ů
" inoremap <C-u>ringu ů

"  U+0170  Ű ű Ų ų Ŵ ŵ Ŷ ŷ Ÿ Ź ź Ż ż Ž ž ſ

" inoremap <C-u>dacuteU Ű
" inoremap <C-u>dacuteu ű
" inoremap <C-u>ogonekU Ų
" inoremap <C-u>ogoneku ų
" inoremap <C-u>circumflexW Ŵ
" inoremap <C-u>circumflexw ŵ
" inoremap <C-u>circumflexY Ŷ
" inoremap <C-u>circumflexy ŷ
" inoremap <C-u>diaeresisY Ÿ
" inoremap <C-u>acuteZ Ź
" inoremap <C-u>acutez ź
" inoremap <C-u>dotZ Ż
" inoremap <C-u>dotz ż
" inoremap <C-u>caronZ Ž
" inoremap <C-u>caronz ž
" inoremap <C-u>shorts ſ

"       ▼  Latin Extended-B
"  U+0180  ƀ Ɓ Ƃ ƃ Ƅ ƅ Ɔ Ƈ ƈ Ɖ Ɗ Ƌ ƌ ƍ Ǝ Ə
"  U+0190  Ɛ Ƒ ƒ Ɠ Ɣ ƕ Ɩ Ɨ Ƙ ƙ ƚ ƛ Ɯ Ɲ ƞ Ɵ
"  U+01A0  Ơ ơ Ƣ ƣ Ƥ ƥ Ʀ Ƨ ƨ Ʃ ƪ ƫ Ƭ ƭ Ʈ Ư
"  U+01B0  ư Ʊ Ʋ Ƴ ƴ Ƶ ƶ Ʒ Ƹ ƹ ƺ ƻ Ƽ ƽ ƾ ƿ
"  U+01C0  ǀ ǁ ǂ ǃ Ǆ ǅ ǆ Ǉ ǈ ǉ Ǌ ǋ ǌ Ǎ ǎ Ǐ
"  U+01D0  ǐ Ǒ ǒ Ǔ ǔ Ǖ ǖ Ǘ ǘ Ǚ ǚ Ǜ ǜ ǝ Ǟ ǟ
"  U+01E0  Ǡ ǡ Ǣ ǣ Ǥ ǥ Ǧ ǧ Ǩ ǩ Ǫ ǫ Ǭ ǭ Ǯ ǯ
"  U+01F0  ǰ Ǳ ǲ ǳ Ǵ ǵ Ƕ Ƿ Ǹ ǹ Ǻ ǻ Ǽ ǽ Ǿ ǿ
"  U+0200  Ȁ ȁ Ȃ ȃ Ȅ ȅ Ȇ ȇ Ȉ ȉ Ȋ ȋ Ȍ ȍ Ȏ ȏ
"  U+0210  Ȑ ȑ Ȓ ȓ Ȕ ȕ Ȗ ȗ Ș ș Ț ț Ȝ ȝ Ȟ ȟ
"  U+0220  Ƞ ȡ Ȣ ȣ Ȥ ȥ Ȧ ȧ Ȩ ȩ Ȫ ȫ Ȭ ȭ Ȯ ȯ
"  U+0230  Ȱ ȱ Ȳ ȳ ȴ ȵ ȶ ȷ ȸ ȹ Ⱥ Ȼ ȼ Ƚ Ⱦ ȿ
"  U+0240  ɀ Ɂ ɂ Ƀ Ʉ Ʌ Ɇ ɇ Ɉ ɉ Ɋ ɋ Ɍ ɍ Ɏ ɏ

"       ▼  IPA Extensions
"  U+0250  ɐ ɑ ɒ ɓ ɔ ɕ ɖ ɗ ɘ ə ɚ ɛ ɜ ɝ ɞ ɟ
"  U+0260  ɠ ɡ ɢ ɣ ɤ ɥ ɦ ɧ ɨ ɩ ɪ ɫ ɬ ɭ ɮ ɯ
"  U+0270  ɰ ɱ ɲ ɳ ɴ ɵ ɶ ɷ ɸ ɹ ɺ ɻ ɼ ɽ ɾ ɿ
"  U+0280  ʀ ʁ ʂ ʃ ʄ ʅ ʆ ʇ ʈ ʉ ʊ ʋ ʌ ʍ ʎ ʏ
"  U+0290  ʐ ʑ ʒ ʓ ʔ ʕ ʖ ʗ ʘ ʙ ʚ ʛ ʜ ʝ ʞ ʟ
"  U+02A0  ʠ ʡ ʢ ʣ ʤ ʥ ʦ ʧ ʨ ʩ ʪ ʫ ʬ ʭ ʮ ʯ

"       ▼  Spacing Modifier Letters
"  U+02B0  ʰ ʱ ʲ ʳ ʴ ʵ ʶ ʷ ʸ ʹ ʺ ʻ ʼ ʽ ʾ ʿ
"  U+02C0  ˀ ˁ ˂ ˃ ˄ ˅ ˆ ˇ ˈ ˉ ˊ ˋ ˌ ˍ ˎ ˏ
"  U+02D0  ː ˑ ˒ ˓ ˔ ˕ ˖ ˗ ˘ ˙ ˚ ˛ ˜ ˝ ˞ ˟
"  U+02E0  ˠ ˡ ˢ ˣ ˤ ˥ ˦ ˧ ˨ ˩ ˪ ˫ ˬ ˭ ˮ ˯
"  U+02F0  ˰ ˱ ˲ ˳ ˴ ˵ ˶ ˷ ˸ ˹ ˺ ˻ ˼ ˽ ˾ ˿

"       ▼  Greek and Coptic
"  U+0380      ΄ ΅ Ά · Έ Ή Ί  Ό  Ύ Ώ

"  U+0390  ΐ Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο

inoremap <C-u>Gamma Γ
inoremap <C-u>Delta Δ
inoremap <C-u>Theta Θ
inoremap <C-u>Lambda Λ
inoremap <C-u>Xi Ξ

"  U+03A0  Π Ρ   Σ Τ Υ Φ Χ Ψ Ω Ϊ Ϋ ά έ ή ί

inoremap <C-u>Pi Π
inoremap <C-u>Sigma Σ
inoremap <C-u>Upsilon Υ
inoremap <C-u>Phi Φ
inoremap <C-u>Psi Ψ
inoremap <C-u>Omega Ω

"  U+03B0  ΰ α β γ δ ε ζ η θ ι κ λ μ ν ξ ο

inoremap <C-u>alpha α
inoremap <C-u>beta β
inoremap <C-u>gamma γ
inoremap <C-u>delta δ
inoremap <C-u>epsilon ε
inoremap <C-u>zeta ζ
inoremap <C-u>eta η
inoremap <C-u>theta θ
inoremap <C-u>iota ι
inoremap <C-u>kappa κ
inoremap <C-u>lambda λ
inoremap <C-u>mu μ
inoremap <C-u>nu ν
inoremap <C-u>xi ξ

"  U+03C0  π ρ ς σ τ υ φ χ ψ ω ϊ ϋ ό ύ ώ

inoremap <C-u>pi π
inoremap <C-u>rho ρ
inoremap <C-u>sigma σ
inoremap <C-u>tau τ
inoremap <C-u>upsilon υ
inoremap <C-u>phi φ
inoremap <C-u>chi χ
inoremap <C-u>psi ψ
inoremap <C-u>omega ω

"  U+03D0  ϐ ϑ   ϕ ϖ               Ϝ ϝ
"  U+03F0  ϰ ϱ   ϵ


"       ▼  Phonetic extensions
"  U+1D00  ᴀ ᴁ ᴂ ᴃ ᴄ ᴅ ᴆ ᴇ ᴈ ᴉ ᴊ ᴋ ᴌ ᴍ ᴎ ᴏ
"  U+1D10  ᴐ ᴑ ᴒ ᴓ ᴔ ᴕ ᴖ ᴗ ᴘ ᴙ ᴚ ᴛ ᴜ ᴝ ᴞ ᴟ
"  U+1D20  ᴠ ᴡ ᴢ ᴣ ᴤ ᴥ ᴦ ᴧ ᴨ ᴩ ᴪ ᴫ ᴬ ᴭ ᴮ ᴯ

inoremap <C-u>^A ᴬ
inoremap <C-u>^B ᴮ

"  U+1D30  ᴰ ᴱ ᴲ ᴳ ᴴ ᴵ ᴶ ᴷ ᴸ ᴹ ᴺ ᴻ ᴼ ᴽ ᴾ ᴿ

inoremap <C-u>^D ᴰ
inoremap <C-u>^E ᴱ
inoremap <C-u>^G ᴳ
inoremap <C-u>^H ᴴ
inoremap <C-u>^I ᴵ
inoremap <C-u>^J ᴶ
inoremap <C-u>^K ᴷ
inoremap <C-u>^L ᴸ
inoremap <C-u>^M ᴹ
inoremap <C-u>^N ᴺ
inoremap <C-u>^O ᴼ
inoremap <C-u>^P ᴾ
inoremap <C-u>^R ᴿ

"  U+1D40  ᵀ ᵁ ᵂ ᵃ ᵄ ᵅ ᵆ ᵇ ᵈ ᵉ ᵊ ᵋ ᵌ ᵍ ᵎ ᵏ

inoremap <C-u>^T ᵀ
inoremap <C-u>^U ᵁ
inoremap <C-u>^W ᵂ
inoremap <C-u>^a ᵃ
inoremap <C-u>^alpha ᵅ
inoremap <C-u>^b ᵇ
inoremap <C-u>^d ᵈ
inoremap <C-u>^e ᵉ
inoremap <C-u>^g ᵍ
inoremap <C-u>^k ᵏ

"  U+1D50  ᵐ ᵑ ᵒ ᵓ ᵔ ᵕ ᵖ ᵗ ᵘ ᵙ ᵚ ᵛ ᵜ ᵝ ᵞ ᵟ

inoremap <C-u>^m ᵐ
inoremap <C-u>^o ᵒ
inoremap <C-u>^p ᵖ
inoremap <C-u>^t ᵗ
inoremap <C-u>^u ᵘ
inoremap <C-u>^v ᵛ
inoremap <C-u>^beta ᵝ
inoremap <C-u>^gamma ᵞ
inoremap <C-u>^delta ᵟ

"  U+1D60  ᵠ ᵡ ᵢ ᵣ ᵤ ᵥ ᵦ ᵧ ᵨ ᵩ ᵪ ᵫ ᵬ ᵭ ᵮ ᵯ

inoremap <C-u>^phi ᵠ
inoremap <C-u>^chi ᵡ
inoremap <C-u>_i ᵢ
inoremap <C-u>_r ᵣ
inoremap <C-u>_u ᵤ
inoremap <C-u>_v ᵥ
inoremap <C-u>_beta ᵦ
inoremap <C-u>_gamma ᵧ
inoremap <C-u>_rho ᵨ
inoremap <C-u>_phi ᵩ
inoremap <C-u>_chi ᵪ

"  U+1D70  ᵰ ᵱ ᵲ ᵳ ᵴ ᵵ ᵶ ᵷ ᵸ ᵹ ᵺ ᵻ ᵼ ᵽ ᵾ ᵿ

"       ▼  General Punctuation
"  U+2000
"  U+2010  ‐ ‑ ‒ – — ― ‖ ‗ ‘ ’ ‚ ‛ “ ” „ ‟
"  U+2020  † ‡ • ‣ ․ ‥ … ‧

"  U+2030  ‰ ‱ ′ ″ ‴ ‵ ‶ ‷ ‸ ‹ › ※ ‼ ‽ ‾ ‿

inoremap <C-u>!! ‼

"  U+2040  ⁀ ⁁ ⁂ ⁃ ⁄ ⁅ ⁆ ⁇ ⁈ ⁉ ⁊ ⁋ ⁌ ⁍ ⁎ ⁏

inoremap <C-u>?? ⁇
inoremap <C-u>?! ⁈
inoremap <C-u>!? ⁉
inoremap <C-u>_* ⁎

"  U+2050  ⁐ ⁑ ⁒ ⁓ ⁔ ⁕ ⁖ ⁗ ⁘ ⁙ ⁚ ⁛ ⁜ ⁝ ⁞
"  U+2060

"       ▼  Superscripts and Subscripts
"  U+2070  ⁰ ⁱ   ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁺ ⁻ ⁼ ⁽ ⁾ ⁿ

inoremap <C-u>^0 ⁰
inoremap <C-u>^i ⁱ
inoremap <C-u>^4 ⁴
inoremap <C-u>^5 ⁵
inoremap <C-u>^6 ⁶
inoremap <C-u>^7 ⁷
inoremap <C-u>^8 ⁸
inoremap <C-u>^9 ⁹
inoremap <C-u>^+ ⁺
inoremap <C-u>^- ⁻
inoremap <C-u>^= ⁼
inoremap <C-u>^( ⁽
inoremap <C-u>^) ⁾
inoremap <C-u>^n ⁿ

"  U+2080  ₀ ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₊ ₋ ₌ ₍ ₎

inoremap <C-u>_0 ₀
inoremap <C-u>_1 ₁
inoremap <C-u>_2 ₂
inoremap <C-u>_3 ₃
inoremap <C-u>_4 ₄
inoremap <C-u>_5 ₅
inoremap <C-u>_6 ₆
inoremap <C-u>_7 ₇
inoremap <C-u>_8 ₈
inoremap <C-u>_9 ₉
inoremap <C-u>_+ ₊
inoremap <C-u>_- ₋
inoremap <C-u>_= ₌
inoremap <C-u>_( ₍
inoremap <C-u>_) ₎

"  U+2090  ₐ ₑ ₒ ₓ ₔ ₕ ₖ ₗ ₘ ₙ ₚ ₛ ₜ

inoremap <C-u>_a ₐ
inoremap <C-u>_e ₑ
inoremap <C-u>_o ₒ
inoremap <C-u>_x ₓ
inoremap <C-u>_h ₕ
inoremap <C-u>_k ₖ
inoremap <C-u>_l ₗ
inoremap <C-u>_m ₘ
inoremap <C-u>_n ₙ
inoremap <C-u>_p ₚ
inoremap <C-u>_s ₛ
inoremap <C-u>_t ₜ

"       ▼  Currency Symbols
"  U+20A0            ₪ ₫ €
"  U+20B0        ₽

"       ▼  Letterlike Symbols
"  U+2100  ℀ ℁ ℂ ℃ ℄ ℅ ℆ ℇ ℈ ℉ ℊ ℋ ℌ ℍ ℎ ℏ

inoremap <C-U>euler ℇ

"  U+2110  ℐ ℑ ℒ ℓ ℔ ℕ № ℗ ℘ ℙ ℚ ℛ ℜ ℝ ℞ ℟

"  U+2120  ℠ ℡ ™ ℣ ℤ ℥ Ω ℧ ℨ ℩ K Å ℬ ℭ ℮ ℯ

inoremap <C-U>tm ™

"  U+2130  ℰ ℱ Ⅎ ℳ ℴ ℵ ℶ ℷ ℸ ℹ ℺ ℻ ℼ ℽ ℾ ℿ

inoremap <C-U>info ℹ
inoremap <C-U>[pi ℼ
inoremap <C-U>[gamma ℽ
inoremap <C-U>[Gamma ℾ
inoremap <C-U>[Pi ℿ

"  U+2140  ⅀ ⅁ ⅂ ⅃ ⅄ ⅅ ⅆ ⅇ ⅈ ⅉ ⅊ ⅋ ⅌ ⅍ ⅎ ⅏

inoremap <C-U>[nsumm ⅀
inoremap <C-U>[/D ⅅ
inoremap <C-U>[/d ⅆ
inoremap <C-U>[/e ⅇ
inoremap <C-U>[/i ⅈ
inoremap <C-U>[/j ⅉ

"       ▼  Number Forms
"  U+2150  ⅐ ⅑ ⅒ ⅓ ⅔ ⅕ ⅖ ⅗ ⅘ ⅙ ⅚ ⅛ ⅜ ⅝ ⅞ ⅟

inoremap <C-U>1/7 ⅐
inoremap <C-U>1/9 ⅑
inoremap <C-U>1/10 ⅒
inoremap <C-U>1/3 ⅓
inoremap <C-U>2/3 ⅔
inoremap <C-U>1/5 ⅕
inoremap <C-U>2/5 ⅖
inoremap <C-U>3/5 ⅗
inoremap <C-U>4/5 ⅘
inoremap <C-U>1/6 ⅙
inoremap <C-U>5/6 ⅚
inoremap <C-U>1/8 ⅛
inoremap <C-U>3/8 ⅜
inoremap <C-U>5/8 ⅝
inoremap <C-U>7/8 ⅞

"  U+2160  Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ Ⅺ Ⅻ Ⅼ Ⅽ Ⅾ Ⅿ

inoremap <C-U>romanI Ⅰ
inoremap <C-U>romanII Ⅱ
inoremap <C-U>romanIII Ⅲ
inoremap <C-U>romanIV Ⅳ
inoremap <C-U>romanV Ⅴ
inoremap <C-U>romanVI Ⅵ
inoremap <C-U>romanVII Ⅶ
inoremap <C-U>romanVIII Ⅷ
inoremap <C-U>romanIX Ⅸ
inoremap <C-U>romanX Ⅹ
inoremap <C-U>romanXI Ⅺ
inoremap <C-U>romanXII Ⅻ
inoremap <C-U>romanL Ⅼ
inoremap <C-U>romanC Ⅽ
inoremap <C-U>romanD Ⅾ
inoremap <C-U>romanM Ⅿ

"  U+2170  ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ ⅷ ⅸ ⅹ ⅺ ⅻ ⅼ ⅽ ⅾ ⅿ

inoremap <C-U>romani ⅰ
inoremap <C-U>romanii ⅱ
inoremap <C-U>romaniii ⅲ
inoremap <C-U>romaniv ⅳ
inoremap <C-U>romanv ⅴ
inoremap <C-U>romanvi ⅵ
inoremap <C-U>romanvii ⅶ
inoremap <C-U>romanviii ⅷ
inoremap <C-U>romanix ⅸ
inoremap <C-U>romanx ⅹ
inoremap <C-U>romanxi ⅺ
inoremap <C-U>romanxii ⅻ
inoremap <C-U>romanl ⅼ
inoremap <C-U>romanc ⅽ
inoremap <C-U>romand ⅾ
inoremap <C-U>romanm ⅿ

"  U+2180  ↀ ↁ ↂ Ↄ ↄ ↅ ↆ ↇ ↈ ↉ ↊ ↋


"       ▼  Arrows
"  U+2190  ← ↑ → ↓ ↔ ↕ ↖ ↗ ↘ ↙ ↚ ↛ ↜ ↝ ↞ ↟

inoremap <C-U><- ←
inoremap <C-U>-^ ↑
inoremap <C-U>-> →
inoremap <C-U>-v ↓
inoremap <C-U><~ ↜
inoremap <C-U>~> ↝
inoremap <C-U><<- ↞
inoremap <C-U>-^^ ↟

"  U+21A0  ↠ ↡ ↢ ↣ ↤ ↥ ↦ ↧ ↨ ↩ ↪ ↫ ↬ ↭ ↮ ↯

inoremap <C-U>->> ↠
inoremap <C-U>-vv ↡
inoremap <C-U><-( ↢
inoremap <C-U>)-> ↣
inoremap <C-U><-<Bar> ↤
inoremap <C-U><Bar>-^ ↥
inoremap <C-U><Bar>-> ↦
inoremap <C-U><Bar>-v ↧
inoremap <C-U></ ↩
inoremap <C-U>\> ↪

"  U+21B0  ↰ ↱ ↲ ↳ ↴ ↵ ↶ ↷ ↸ ↹ ↺ ↻ ↼ ↽ ↾ ↿
"  U+21C0  ⇀ ⇁ ⇂ ⇃ ⇄ ⇅ ⇆ ⇇ ⇈ ⇉ ⇊ ⇋ ⇌ ⇍ ⇎ ⇏

"  U+21D0  ⇐ ⇑ ⇒ ⇓ ⇔ ⇕ ⇖ ⇗ ⇘ ⇙ ⇚ ⇛ ⇜ ⇝ ⇞ ⇟
inoremap <C-U><= ⇐
inoremap <C-U>=^ ⇑
inoremap <C-U>=> ⇒
inoremap <C-U>=v ⇓
inoremap <C-U><=> ⇔
inoremap <C-U>^=v ⇕

"  U+21E0  ⇠ ⇡ ⇢ ⇣ ⇤ ⇥ ⇦ ⇧ ⇨ ⇩ ⇪ ⇫ ⇬ ⇭ ⇮ ⇯
"  U+21F0  ⇰ ⇱ ⇲ ⇳ ⇴ ⇵ ⇶ ⇷ ⇸ ⇹ ⇺ ⇻ ⇼ ⇽ ⇾ ⇿

"       ▼  Mathematical Operators
"  U+2200  ∀ ∁ ∂ ∃ ∄ ∅ ∆ ∇ ∈ ∉ ∊ ∋ ∌ ∍ ∎ ∏

inoremap <C-u>forall ∀
inoremap <C-u>complement ∁
inoremap <C-u>pdiff ∂
inoremap <C-u>exists ∃
inoremap <C-u>nexists ∄
inoremap <C-u>empty ∅
inoremap <C-u>incr ∆
inoremap <C-u>nabla ∇
inoremap <C-u>elem ∈
inoremap <C-u>nelem ∉
inoremap <C-u>selem ∊
inoremap <C-u>contains ∋
inoremap <C-u>ncontains ∌
inoremap <C-u>scontains ∍
inoremap <C-u>endofproof ∎
inoremap <C-u>nproduct ∏

"  U+2210  ∐ ∑ − ∓ ∔ ∕ ∖ ∗ ∘ ∙ √ ∛ ∜ ∝ ∞ ∟

inoremap <C-u>ncoproduct ∐
inoremap <C-u>nsum ∑
inoremap <C-u>minus −
inoremap <C-u>minusplus ∓
inoremap <C-u>dotplus ∔
inoremap <C-u>divslash ∕
inoremap <C-u>setminus ∖
inoremap <C-u>asterisk ∗
inoremap <C-u>ring ∘
inoremap <C-u>bullet ∙
inoremap <C-u>root2 √
inoremap <C-u>root3 ∛
inoremap <C-u>root4 ∜
inoremap <C-u>proportional ∝
inoremap <C-u>infinity ∞
inoremap <C-u>rangle ∟

"  U+2220  ∠ ∡ ∢ ∣ ∤ ∥ ∦ ∧ ∨ ∩ ∪ ∫ ∬ ∭ ∮ ∯

inoremap <C-u>angle ∠
inoremap <C-u>mangle ∡
inoremap <C-u>sangle ∢
inoremap <C-u>divides ∣
inoremap <C-u>ndivides ∤
inoremap <C-u>parallel ∥
inoremap <C-u>nparallel ∦
inoremap <C-u>and ∧
inoremap <C-u>or ∨
inoremap <C-u>intersection ∩
inoremap <C-u>union ∪
inoremap <C-u>integral ∫
inoremap <C-u>integral2 ∬
inoremap <C-u>integral3 ∭

"  U+2230  ∰ ∱ ∲ ∳ ∴ ∵ ∶ ∷ ∸ ∹ ∺ ∻ ∼ ∽ ∾ ∿

inoremap <C-u>therefore ∴
inoremap <C-u>because ∵
inoremap <C-u>ratio ∶
inoremap <C-u>proportion ∷
inoremap <C-u>:: ∷
inoremap <C-u>dotminus ∸
inoremap <C-u>excess ∹
inoremap <C-u>gproportion ∺
inoremap <C-u>homothetic ∻
inoremap <C-u>~ ∼
inoremap <C-U>rtilde ∽
inoremap <C-U>sine ∿

"  U+2240  ≀ ≁ ≂ ≃ ≄ ≅ ≆ ≇ ≈ ≉ ≊ ≋ ≌ ≍ ≎ ≏

inoremap <C-U>wreath ≀
inoremap <C-U>/~ ≁
inoremap <C-U>-~ ≂
inoremap <C-U>~- ≃
inoremap <C-U>/~- ≄
inoremap <C-U>~= ≅
inoremap <C-U>~/= ≆
inoremap <C-U>/~= ≇
inoremap <C-U>~~ ≈
inoremap <C-U>/~~ ≉
inoremap <C-U>~~- ≊
inoremap <C-U>~~~ ≋

"  U+2250  ≐ ≑ ≒ ≓ ≔ ≕ ≖ ≗ ≘ ≙ ≚ ≛ ≜ ≝ ≞ ≟

inoremap <C-U>:= ≔
inoremap <C-U>=: ≕
inoremap <C-U>def= ≝
inoremap <C-U>?= ≟

"  U+2260  ≠ ≡ ≢ ≣ ≤ ≥ ≦ ≧ ≨ ≩ ≪ ≫ ≬ ≭ ≮ ≯

inoremap <C-U>/= ≠
inoremap <C-U>=3 ≡
inoremap <C-U>/=3 ≢
inoremap <C-U>=4 ≣
inoremap <C-U>=< ≤
inoremap <C-U>>= ≥
inoremap <C-U><< ≪
inoremap <C-U>>> ≫
inoremap <C-U>/< ≮
inoremap <C-U>/> ≯

"  U+2270  ≰ ≱ ≲ ≳ ≴ ≵ ≶ ≷ ≸ ≹ ≺ ≻ ≼ ≽ ≾ ≿

inoremap <C-U>/=< ≰
inoremap <C-U>/>= ≱

"  U+2280  ⊀ ⊁ ⊂ ⊃ ⊄ ⊅ ⊆ ⊇ ⊈ ⊉ ⊊ ⊋ ⊌ ⊍ ⊎ ⊏

inoremap <C-U>psubset ⊂
inoremap <C-U>psuperset ⊃
inoremap <C-U>/psubset ⊄
inoremap <C-U>/psuperset ⊅
inoremap <C-U>subset ⊆
inoremap <C-U>superset ⊇
inoremap <C-U>/subset ⊈
inoremap <C-U>/superset ⊉
inoremap <C-U>multiset ⊌
inoremap <C-U>multisetmult ⊍
inoremap <C-U>multisetunion ⊎

"  U+2290  ⊐ ⊑ ⊒ ⊓ ⊔ ⊕ ⊖ ⊗ ⊘ ⊙ ⊚ ⊛ ⊜ ⊝ ⊞ ⊟

inoremap <C-U>o+ ⊕
inoremap <C-U>o- ⊖
inoremap <C-U>ox ⊗
inoremap <C-U>o/ ⊘
inoremap <C-U>o. ⊙
inoremap <C-U>oo ⊚
inoremap <C-U>o* ⊛
inoremap <C-U>o= ⊜
inoremap <C-U>s+ ⊞
inoremap <C-U>s- ⊟

"  U+22A0  ⊠ ⊡ ⊢ ⊣ ⊤ ⊥ ⊦ ⊧ ⊨ ⊩ ⊪ ⊫ ⊬ ⊭ ⊮ ⊯

inoremap <C-U>sx ⊠
inoremap <C-U>s. ⊡
inoremap <C-U>top ⊤
inoremap <C-U>bottom ⊥

"  U+22B0  ⊰ ⊱ ⊲ ⊳ ⊴ ⊵ ⊶ ⊷ ⊸ ⊹ ⊺ ⊻ ⊼ ⊽ ⊾ ⊿

inoremap <C-U>-o ⊸
inoremap <C-U>xor ⊻
inoremap <C-U>nand ⊼
inoremap <C-U>nor ⊽

"  U+22C0  ⋀ ⋁ ⋂ ⋃ ⋄ ⋅ ⋆ ⋇ ⋈ ⋉ ⋊ ⋋ ⋌ ⋍ ⋎ ⋏

inoremap <C-U>n-and ⋀
inoremap <C-U>n-or ⋁
inoremap <C-U>n-intersect ⋂
inoremap <C-U>n-union ⋃
inoremap <C-U>diamond ⋄
inoremap <C-U>dot ⋅
inoremap <C-U>star ⋆
inoremap <C-U>bowtie ⋈
inoremap <C-U>cor ⋎
inoremap <C-U>cand ⋏

"  U+22D0  ⋐ ⋑ ⋒ ⋓ ⋔ ⋕ ⋖ ⋗ ⋘ ⋙ ⋚ ⋛ ⋜ ⋝ ⋞ ⋟

inoremap <C-U><<< ⋘
inoremap <C-U>>>> ⋙

"  U+22E0  ⋠ ⋡ ⋢ ⋣ ⋤ ⋥ ⋦ ⋧ ⋨ ⋩ ⋪ ⋫ ⋬ ⋭ ⋮ ⋯
"  U+22F0  ⋰ ⋱ ⋲ ⋳ ⋴ ⋵ ⋶ ⋷ ⋸ ⋹ ⋺ ⋻ ⋼ ⋽ ⋾ ⋿

"       ▼  Miscellaneous Technical
"  U+2300  ⌀ ⌁ ⌂ ⌃ ⌄ ⌅ ⌆ ⌇ ⌈ ⌉ ⌊ ⌋ ⌌ ⌍ ⌎ ⌏
"  U+2310  ⌐ ⌑ ⌒ ⌓ ⌔ ⌕ ⌖ ⌗ ⌘ ⌙ ⌚ ⌛ ⌜ ⌝ ⌞ ⌟
"  U+2320  ⌠ ⌡ ⌢ ⌣ ⌤ ⌥ ⌦ ⌧ ⌨ 〈 〉 ⌫ ⌬
"  U+2330      ⌴  ⌶ ⌷ ⌸ ⌹ ⌺ ⌻ ⌼ ⌽ ⌾ ⌿
"  U+2340  ⍀ ⍁ ⍂ ⍃ ⍄ ⍅ ⍆ ⍇ ⍈ ⍉ ⍊ ⍋ ⍌ ⍍ ⍎ ⍏
"  U+2350  ⍐ ⍑ ⍒ ⍓ ⍔ ⍕ ⍖ ⍗ ⍘ ⍙ ⍚ ⍛ ⍜ ⍝ ⍞ ⍟
"  U+2360  ⍠ ⍡ ⍢ ⍣ ⍤ ⍥ ⍦ ⍧ ⍨ ⍩ ⍪ ⍫ ⍬ ⍭ ⍮ ⍯
"  U+2370  ⍰ ⍱ ⍲ ⍳ ⍴ ⍵ ⍶ ⍷ ⍸ ⍹ ⍺   ⍽
"  U+2380  ⎀ ⎁ ⎂ ⎃ ⎄ ⎅ ⎆ ⎇ ⎈ ⎉ ⎊ ⎋ ⎌ ⎍ ⎎ ⎏
"  U+2390  ⎐ ⎑ ⎒ ⎓ ⎔ ⎕ ⎖ ⎗ ⎘ ⎙ ⎚ ⎛ ⎜ ⎝ ⎞ ⎟
"  U+23A0  ⎠ ⎡ ⎢ ⎣ ⎤ ⎥ ⎦ ⎧ ⎨ ⎩ ⎪ ⎫ ⎬ ⎭ ⎮ ⎯
"  U+23B0  ⎰ ⎱ ⎲ ⎳ ⎴ ⎵ ⎶ ⎷ ⎸ ⎹ ⎺ ⎻ ⎼ ⎽
"  U+23C0                ⏏
"  U+23D0  ⏐                       ⏜ ⏝ ⏞ ⏟
"  U+23E0  ⏠ ⏡
"  U+23F0        ⏳             ⏻ ⏼ ⏽ ⏾

"       ▼  Enclosed Alphanumerics
"  U+2460  ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨
"  U+24B0              Ⓐ Ⓑ Ⓒ Ⓓ Ⓔ Ⓕ Ⓖ Ⓗ Ⓘ Ⓙ
"  U+24C0  Ⓚ Ⓛ Ⓜ Ⓝ Ⓞ Ⓟ Ⓠ Ⓡ Ⓢ Ⓣ Ⓤ Ⓥ Ⓦ Ⓧ Ⓨ Ⓩ
"  U+24D0  ⓐ ⓑ ⓒ ⓓ ⓔ ⓕ ⓖ ⓗ ⓘ ⓙ ⓚ ⓛ ⓜ ⓝ ⓞ ⓟ
"  U+24E0  ⓠ ⓡ ⓢ ⓣ ⓤ ⓥ ⓦ ⓧ ⓨ ⓩ ⓪

"       ▼  Misc. Mathematical Symbols-A
"  U+27C0  ⟀ ⟁ ⟂ ⟃ ⟄ ⟅ ⟆ ⟇ ⟈ ⟉ ⟊   ⟌
"  U+27D0  ⟐ ⟑ ⟒ ⟓ ⟔ ⟕ ⟖ ⟗ ⟘ ⟙ ⟚ ⟛ ⟜ ⟝ ⟞ ⟟
"  U+27E0  ⟠ ⟡ ⟢ ⟣ ⟤ ⟥ ⟦ ⟧ ⟨ ⟩ ⟪ ⟫ ⟬ ⟭ ⟮ ⟯

inoremap <C-U>[[ ⟦
inoremap <C-U>]] ⟧
inoremap <C-U>[< ⟨
inoremap <C-U>>] ⟩
inoremap <C-U>[<< ⟪
inoremap <C-U>>>] ⟫

"       ▼  Suppl. Arrows-A
"  U+27F0  ⟰ ⟱ ⟲ ⟳ ⟴ ⟵ ⟶ ⟷ ⟸ ⟹ ⟺ ⟻ ⟼ ⟽ ⟾ ⟿

"       ▼  Supplemental Arrows-B
"  U+2900  ⤀ ⤁ ⤂ ⤃ ⤄ ⤅ ⤆ ⤇ ⤈ ⤉ ⤊ ⤋ ⤌ ⤍ ⤎ ⤏
"  U+2910  ⤐ ⤑ ⤒ ⤓ ⤔ ⤕ ⤖ ⤗ ⤘ ⤙ ⤚ ⤛ ⤜ ⤝ ⤞ ⤟
"  U+2920  ⤠ ⤡ ⤢ ⤣ ⤤ ⤥ ⤦ ⤧ ⤨ ⤩ ⤪ ⤫ ⤬ ⤭ ⤮ ⤯
"  U+2930  ⤰ ⤱ ⤲ ⤳ ⤴ ⤵ ⤶ ⤷ ⤸ ⤹ ⤺ ⤻ ⤼ ⤽ ⤾ ⤿
"  U+2940  ⥀ ⥁ ⥂ ⥃ ⥄ ⥅ ⥆ ⥇ ⥈ ⥉ ⥊ ⥋ ⥌ ⥍ ⥎ ⥏
"  U+2950  ⥐ ⥑ ⥒ ⥓ ⥔ ⥕ ⥖ ⥗ ⥘ ⥙ ⥚ ⥛ ⥜ ⥝ ⥞ ⥟
"  U+2960  ⥠ ⥡ ⥢ ⥣ ⥤ ⥥ ⥦ ⥧ ⥨ ⥩ ⥪ ⥫ ⥬ ⥭ ⥮ ⥯
"  U+2970  ⥰ ⥱ ⥲ ⥳ ⥴ ⥵ ⥶ ⥷ ⥸ ⥹ ⥺ ⥻ ⥼ ⥽ ⥾ ⥿

"       ▼  Misc. Math Symbols-B
"  U+2980  ⦀ ⦁ ⦂ ⦃ ⦄ ⦅ ⦆ ⦇ ⦈ ⦉ ⦊ ⦋ ⦌ ⦍ ⦎ ⦏
"  U+2990  ⦐ ⦑ ⦒ ⦓ ⦔ ⦕ ⦖ ⦗ ⦘ ⦙ ⦚ ⦛ ⦜ ⦝ ⦞ ⦟
"  U+29A0  ⦠ ⦡ ⦢ ⦣ ⦤ ⦥ ⦦ ⦧ ⦨ ⦩ ⦪ ⦫ ⦬ ⦭ ⦮ ⦯
"  U+29B0  ⦰ ⦱ ⦲ ⦳ ⦴ ⦵ ⦶ ⦷ ⦸ ⦹ ⦺ ⦻ ⦼ ⦽ ⦾ ⦿
"  U+29C0  ⧀ ⧁ ⧂ ⧃ ⧄ ⧅ ⧆ ⧇ ⧈ ⧉ ⧊ ⧋ ⧌ ⧍ ⧎ ⧏
"  U+29D0  ⧐ ⧑ ⧒ ⧓ ⧔ ⧕ ⧖ ⧗ ⧘ ⧙ ⧚ ⧛ ⧜ ⧝ ⧞ ⧟
"  U+29E0  ⧠ ⧡ ⧢ ⧣ ⧤ ⧥ ⧦ ⧧ ⧨ ⧩ ⧪ ⧫ ⧬ ⧭ ⧮ ⧯
"  U+29F0  ⧰ ⧱ ⧲ ⧳ ⧴ ⧵ ⧶ ⧷ ⧸ ⧹ ⧺ ⧻ ⧼ ⧽ ⧾ ⧿

inoremap <C-U>spot ⦁
inoremap <C-U>: ⦂
inoremap <C-U>{{ ⦃
inoremap <C-U>}} ⦄
inoremap <C-U>(( ⦅
inoremap <C-U>)) ⦆

"       ▼  Supplemental Math Operators
"  U+2A00  ⨀ ⨁ ⨂ ⨃ ⨄ ⨅ ⨆ ⨇ ⨈ ⨉ ⨊ ⨋ ⨌ ⨍ ⨎ ⨏
"  U+2A10  ⨐ ⨑ ⨒ ⨓ ⨔ ⨕ ⨖ ⨗ ⨘ ⨙ ⨚ ⨛ ⨜ ⨝ ⨞ ⨟
"  U+2A20  ⨠ ⨡ ⨢ ⨣ ⨤ ⨥ ⨦ ⨧ ⨨ ⨩ ⨪ ⨫ ⨬ ⨭ ⨮ ⨯
"  U+2A30  ⨰ ⨱ ⨲ ⨳ ⨴ ⨵ ⨶ ⨷ ⨸ ⨹ ⨺ ⨻ ⨼ ⨽ ⨾ ⨿
"  U+2A40  ⩀ ⩁ ⩂ ⩃ ⩄ ⩅ ⩆ ⩇ ⩈ ⩉ ⩊ ⩋ ⩌ ⩍ ⩎ ⩏
"  U+2A50  ⩐ ⩑ ⩒ ⩓ ⩔ ⩕ ⩖ ⩗ ⩘ ⩙ ⩚ ⩛ ⩜ ⩝ ⩞ ⩟
"  U+2A60  ⩠ ⩡ ⩢ ⩣ ⩤ ⩥ ⩦ ⩧ ⩨ ⩩ ⩪ ⩫ ⩬ ⩭ ⩮ ⩯
"  U+2A70  ⩰ ⩱ ⩲ ⩳ ⩴ ⩵ ⩶ ⩷ ⩸ ⩹ ⩺ ⩻ ⩼ ⩽ ⩾ ⩿
"  U+2A80  ⪀ ⪁ ⪂ ⪃ ⪄ ⪅ ⪆ ⪇ ⪈ ⪉ ⪊ ⪋ ⪌ ⪍ ⪎ ⪏
"  U+2A90  ⪐ ⪑ ⪒ ⪓ ⪔ ⪕ ⪖ ⪗ ⪘ ⪙ ⪚ ⪛ ⪜ ⪝ ⪞ ⪟
"  U+2AA0  ⪠ ⪡ ⪢ ⪣ ⪤ ⪥ ⪦ ⪧ ⪨ ⪩ ⪪ ⪫ ⪬ ⪭ ⪮ ⪯
"  U+2AB0  ⪰ ⪱ ⪲ ⪳ ⪴ ⪵ ⪶ ⪷ ⪸ ⪹ ⪺ ⪻ ⪼ ⪽ ⪾ ⪿
"  U+2AC0  ⫀ ⫁ ⫂ ⫃ ⫄ ⫅ ⫆ ⫇ ⫈ ⫉ ⫊ ⫋ ⫌ ⫍ ⫎ ⫏
"  U+2AD0  ⫐ ⫑ ⫒ ⫓ ⫔ ⫕ ⫖ ⫗ ⫘ ⫙ ⫚ ⫛ ⫝̸ ⫝ ⫞ ⫟
"  U+2AE0  ⫠ ⫡ ⫢ ⫣ ⫤ ⫥ ⫦ ⫧ ⫨ ⫩ ⫪ ⫫ ⫬ ⫭ ⫮ ⫯
"  U+2AF0  ⫰ ⫱ ⫲ ⫳ ⫴ ⫵ ⫶ ⫷ ⫸ ⫹ ⫺ ⫻ ⫼ ⫽ ⫾ ⫿

inoremap <C-u>; ⨾
inoremap <C-U><Bar><Bar><Bar> ⫴
inoremap <C-U>/// ⫻

"       ▼  Misc. Symbols and Arrows
"  U+2B00  ⬀ ⬁ ⬂ ⬃ ⬄ ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬌ ⬍ ⬎ ⬏
"  U+2B10  ⬐ ⬑ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬚ ⬛ ⬜ ⬝ ⬞ ⬟
"  U+2B20  ⬠ ⬡ ⬢ ⬣ ⬤ ⬥ ⬦ ⬧ ⬨ ⬩ ⬪ ⬫ ⬬ ⬭ ⬮ ⬯
"  U+2B30  ⬰ ⬱ ⬲ ⬳ ⬴ ⬵ ⬶ ⬷ ⬸ ⬹ ⬺ ⬻ ⬼ ⬽ ⬾ ⬿
"  U+2B40  ⭀ ⭁ ⭂ ⭃ ⭄ ⭅ ⭆ ⭇ ⭈ ⭉ ⭊ ⭋ ⭌ ⭍ ⭎ ⭏
"  U+2B50  ⭐ ⭑ ⭒ ⭓ ⭔ ⭕ ⭖ ⭗ ⭘ ⭙ ⭚ ⭛ ⭜ ⭝ ⭞ ⭟
"  U+2B60  ⭠ ⭡ ⭢ ⭣ ⭤ ⭥ ⭦ ⭧ ⭨ ⭩ ⭪ ⭫ ⭬ ⭭ ⭮ ⭯
"  U+2B70  ⭰ ⭱ ⭲ ⭳    ⭶ ⭷ ⭸ ⭹ ⭺ ⭻ ⭼ ⭽ ⭾ ⭿
"  U+2B80  ⮀ ⮁ ⮂ ⮃ ⮄ ⮅ ⮆ ⮇ ⮈ ⮉ ⮊ ⮋ ⮌ ⮍ ⮎ ⮏
"  U+2B90  ⮐ ⮑ ⮒ ⮓ ⮔ ⮕    ⮘ ⮙ ⮚ ⮛ ⮜ ⮝ ⮞ ⮟
"  U+2BA0  ⮠ ⮡ ⮢ ⮣ ⮤ ⮥ ⮦ ⮧ ⮨ ⮩ ⮪ ⮫ ⮬ ⮭ ⮮ ⮯
"  U+2BB0  ⮰ ⮱ ⮲ ⮳ ⮴ ⮵ ⮶ ⮷ ⮸ ⮹      ⮽ ⮾ ⮿
"  U+2BC0  ⯀ ⯁ ⯂ ⯃ ⯄ ⯅ ⯆ ⯇ ⯈   ⯊ ⯋ ⯌ ⯍ ⯎ ⯏
"  U+2BD0  ⯐ ⯑
"  U+2BE0                             ⯬ ⯭ ⯮ ⯯
"  U+2C70    ⱱ
"  U+2E20                 ⸮

" See https://en.wikipedia.org/wiki/Mathematical_Alphanumeric_Symbols
" Holes are filled here (e.g. planck constant ℎ is what we use for script h)
"
"       ▼  Mathematical Alphan. Symbols
"
" 𝐀 𝐁 𝐂 𝐃 𝐄 𝐅 𝐆 𝐇 𝐈 𝐉 𝐊 𝐋 𝐌 𝐍 𝐎 𝐏 𝐐 𝐑 𝐒 𝐓 𝐔 𝐕 𝐖 𝐗 𝐘 𝐙
" 𝐚 𝐛 𝐜 𝐝 𝐞 𝐟 𝐠 𝐡 𝐢 𝐣 𝐤 𝐥 𝐦 𝐧 𝐨 𝐩 𝐪 𝐫 𝐬 𝐭 𝐮 𝐯 𝐰 𝐱 𝐲 𝐳

inoremap <C-U>bA 𝐀
inoremap <C-U>bB 𝐁
inoremap <C-U>bC 𝐂
inoremap <C-U>bD 𝐃
inoremap <C-U>bE 𝐄
inoremap <C-U>bF 𝐅
inoremap <C-U>bG 𝐆
inoremap <C-U>bH 𝐇
inoremap <C-U>bI 𝐈
inoremap <C-U>bJ 𝐉
inoremap <C-U>bK 𝐊
inoremap <C-U>bL 𝐋
inoremap <C-U>bM 𝐌
inoremap <C-U>bN 𝐍
inoremap <C-U>bO 𝐎
inoremap <C-U>bP 𝐏
inoremap <C-U>bQ 𝐐
inoremap <C-U>bR 𝐑
inoremap <C-U>bS 𝐒
inoremap <C-U>bT 𝐓
inoremap <C-U>bU 𝐔
inoremap <C-U>bV 𝐕
inoremap <C-U>bW 𝐖
inoremap <C-U>bX 𝐗
inoremap <C-U>bY 𝐘
inoremap <C-U>bZ 𝐙
inoremap <C-U>ba 𝐚
inoremap <C-U>bb 𝐛
inoremap <C-U>bc 𝐜
inoremap <C-U>bd 𝐝
inoremap <C-U>be 𝐞
inoremap <C-U>bf 𝐟
inoremap <C-U>bg 𝐠
inoremap <C-U>bh 𝐡
inoremap <C-U>bi 𝐢
inoremap <C-U>bj 𝐣
inoremap <C-U>bk 𝐤
inoremap <C-U>bl 𝐥
inoremap <C-U>bm 𝐦
inoremap <C-U>bn 𝐧
inoremap <C-U>bo 𝐨
inoremap <C-U>bp 𝐩
inoremap <C-U>bq 𝐪
inoremap <C-U>br 𝐫
inoremap <C-U>bs 𝐬
inoremap <C-U>bt 𝐭
inoremap <C-U>bu 𝐮
inoremap <C-U>bv 𝐯
inoremap <C-U>bw 𝐰
inoremap <C-U>bx 𝐱
inoremap <C-U>by 𝐲
inoremap <C-U>bz 𝐳

" 𝐴 𝐵 𝐶 𝐷 𝐸 𝐹 𝐺 𝐻 𝐼 𝐽 𝐾 𝐿 𝑀 𝑁 𝑂 𝑃 𝑄 𝑅 𝑆 𝑇 𝑈 𝑉 𝑊 𝑋 𝑌 𝑍
" 𝑎 𝑏 𝑐 𝑑 𝑒 𝑓 𝑔   𝑖 𝑗 𝑘 𝑙 𝑚 𝑛 𝑜 𝑝 𝑞 𝑟 𝑠 𝑡 𝑢 𝑣 𝑤 𝑥 𝑦 𝑧

inoremap <C-U>iA 𝐴
inoremap <C-U>iB 𝐵
inoremap <C-U>iC 𝐶
inoremap <C-U>iD 𝐷
inoremap <C-U>iE 𝐸
inoremap <C-U>iF 𝐹
inoremap <C-U>iG 𝐺
inoremap <C-U>iH 𝐻
inoremap <C-U>iI 𝐼
inoremap <C-U>iJ 𝐽
inoremap <C-U>iK 𝐾
inoremap <C-U>iL 𝐿
inoremap <C-U>iM 𝑀
inoremap <C-U>iN 𝑁
inoremap <C-U>iO 𝑂
inoremap <C-U>iP 𝑃
inoremap <C-U>iQ 𝑄
inoremap <C-U>iR 𝑅
inoremap <C-U>iS 𝑆
inoremap <C-U>iT 𝑇
inoremap <C-U>iU 𝑈
inoremap <C-U>iV 𝑉
inoremap <C-U>iW 𝑊
inoremap <C-U>iX 𝑋
inoremap <C-U>iY 𝑌
inoremap <C-U>iZ 𝑍
inoremap <C-U>ia 𝑎
inoremap <C-U>ib 𝑏
inoremap <C-U>ic 𝑐
inoremap <C-U>id 𝑑
inoremap <C-U>ie 𝑒
inoremap <C-U>if 𝑓
inoremap <C-U>ig 𝑔
inoremap <C-U>ih ℎ
inoremap <C-U>ii 𝑖
inoremap <C-U>ij 𝑗
inoremap <C-U>ik 𝑘
inoremap <C-U>il 𝑙
inoremap <C-U>im 𝑚
inoremap <C-U>in 𝑛
inoremap <C-U>io 𝑜
inoremap <C-U>ip 𝑝
inoremap <C-U>iq 𝑞
inoremap <C-U>ir 𝑟
inoremap <C-U>is 𝑠
inoremap <C-U>it 𝑡
inoremap <C-U>iu 𝑢
inoremap <C-U>iv 𝑣
inoremap <C-U>iw 𝑤
inoremap <C-U>ix 𝑥
inoremap <C-U>iy 𝑦
inoremap <C-U>iz 𝑧

" 𝑨 𝑩 𝑪 𝑫 𝑬 𝑭 𝑮 𝑯 𝑰 𝑱 𝑲 𝑳 𝑴 𝑵 𝑶 𝑷 𝑸 𝑹 𝑺 𝑻 𝑼 𝑽 𝑾 𝑿 𝒀 𝒁
" 𝒂 𝒃 𝒄 𝒅 𝒆 𝒇 𝒈 𝒉 𝒊 𝒋 𝒌 𝒍 𝒎 𝒏 𝒐 𝒑 𝒒 𝒓 𝒔 𝒕 𝒖 𝒗 𝒘 𝒙 𝒚 𝒛

inoremap <C-U>biA 𝑨
inoremap <C-U>biB 𝑩
inoremap <C-U>biC 𝑪
inoremap <C-U>biD 𝑫
inoremap <C-U>biE 𝑬
inoremap <C-U>biF 𝑭
inoremap <C-U>biG 𝑮
inoremap <C-U>biH 𝑯
inoremap <C-U>biI 𝑰
inoremap <C-U>biJ 𝑱
inoremap <C-U>biK 𝑲
inoremap <C-U>biL 𝑳
inoremap <C-U>biM 𝑴
inoremap <C-U>biN 𝑵
inoremap <C-U>biO 𝑶
inoremap <C-U>biP 𝑷
inoremap <C-U>biQ 𝑸
inoremap <C-U>biR 𝑹
inoremap <C-U>biS 𝑺
inoremap <C-U>biT 𝑻
inoremap <C-U>biU 𝑼
inoremap <C-U>biV 𝑽
inoremap <C-U>biW 𝑾
inoremap <C-U>biX 𝑿
inoremap <C-U>biY 𝒀
inoremap <C-U>biZ 𝒁
inoremap <C-U>bia 𝒂
inoremap <C-U>bib 𝒃
inoremap <C-U>bic 𝒄
inoremap <C-U>bid 𝒅
inoremap <C-U>bie 𝒆
inoremap <C-U>bif 𝒇
inoremap <C-U>big 𝒈
inoremap <C-U>bih 𝒉
inoremap <C-U>bii 𝒊
inoremap <C-U>bij 𝒋
inoremap <C-U>bik 𝒌
inoremap <C-U>bil 𝒍
inoremap <C-U>bim 𝒎
inoremap <C-U>bin 𝒏
inoremap <C-U>bio 𝒐
inoremap <C-U>bip 𝒑
inoremap <C-U>biq 𝒒
inoremap <C-U>bir 𝒓
inoremap <C-U>bis 𝒔
inoremap <C-U>bit 𝒕
inoremap <C-U>biu 𝒖
inoremap <C-U>biv 𝒗
inoremap <C-U>biw 𝒘
inoremap <C-U>bix 𝒙
inoremap <C-U>biy 𝒚
inoremap <C-U>biz 𝒛

" 𝒜   𝒞 𝒟     𝒢     𝒥 𝒦     𝒩 𝒪 𝒫 𝒬   𝒮 𝒯 𝒰 𝒱 𝒲 𝒳 𝒴 𝒵
" 𝒶 𝒷 𝒸 𝒹   𝒻   𝒽 𝒾 𝒿 𝓀   𝓂 𝓃   𝓅 𝓆 𝓇 𝓈 𝓉 𝓊 𝓋 𝓌 𝓍 𝓎 𝓏

inoremap <C-U>sA 𝒜
inoremap <C-U>sB ℬ
inoremap <C-U>sC 𝒞
inoremap <C-U>sD 𝒟
inoremap <C-U>sE ℰ
inoremap <C-U>sF ℱ
inoremap <C-U>sG 𝒢
inoremap <C-U>sH ℋ
inoremap <C-U>sI ℐ
inoremap <C-U>sJ 𝒥
inoremap <C-U>sK 𝒦
inoremap <C-U>sL ℒ
inoremap <C-U>sM ℳ
inoremap <C-U>sN 𝒩
inoremap <C-U>sO 𝒪
inoremap <C-U>sP 𝒫
inoremap <C-U>sQ 𝒬
inoremap <C-U>sR ℛ
inoremap <C-U>sS 𝒮
inoremap <C-U>sT 𝒯
inoremap <C-U>sU 𝒰
inoremap <C-U>sV 𝒱
inoremap <C-U>sW 𝒲
inoremap <C-U>sX 𝒳
inoremap <C-U>sY 𝒴
inoremap <C-U>sZ 𝒵
inoremap <C-U>sa 𝒶
inoremap <C-U>sb 𝒷
inoremap <C-U>sc 𝒸
inoremap <C-U>sd 𝒹
inoremap <C-U>se ℯ
inoremap <C-U>sf 𝒻
inoremap <C-U>sg ℊ
inoremap <C-U>sh 𝒽
inoremap <C-U>si 𝒾
inoremap <C-U>sj 𝒿
inoremap <C-U>sk 𝓀
inoremap <C-U>sl ℓ
inoremap <C-U>sm 𝓂
inoremap <C-U>sn 𝓃
inoremap <C-U>so ℴ
inoremap <C-U>sp 𝓅
inoremap <C-U>sq 𝓆
inoremap <C-U>sr 𝓇
inoremap <C-U>ss 𝓈
inoremap <C-U>st 𝓉
inoremap <C-U>su 𝓊
inoremap <C-U>sv 𝓋
inoremap <C-U>sw 𝓌
inoremap <C-U>sx 𝓍
inoremap <C-U>sy 𝓎
inoremap <C-U>sz 𝓏

" 𝓐 𝓑 𝓒 𝓓 𝓔 𝓕 𝓖 𝓗 𝓘 𝓙 𝓚 𝓛 𝓜 𝓝 𝓞 𝓟 𝓠 𝓡 𝓢 𝓣 𝓤 𝓥 𝓦 𝓧 𝓨 𝓩
" 𝓪 𝓫 𝓬 𝓭 𝓮 𝓯 𝓰 𝓱 𝓲 𝓳 𝓴 𝓵 𝓶 𝓷 𝓸 𝓹 𝓺 𝓻 𝓼 𝓽 𝓾 𝓿 𝔀 𝔁 𝔂 𝔃

inoremap <C-U>sbA 𝓐
inoremap <C-U>sbB 𝓑
inoremap <C-U>sbC 𝓒
inoremap <C-U>sbD 𝓓
inoremap <C-U>sbE 𝓔
inoremap <C-U>sbF 𝓕
inoremap <C-U>sbG 𝓖
inoremap <C-U>sbH 𝓗
inoremap <C-U>sbI 𝓘
inoremap <C-U>sbJ 𝓙
inoremap <C-U>sbK 𝓚
inoremap <C-U>sbL 𝓛
inoremap <C-U>sbM 𝓜
inoremap <C-U>sbN 𝓝
inoremap <C-U>sbO 𝓞
inoremap <C-U>sbP 𝓟
inoremap <C-U>sbQ 𝓠
inoremap <C-U>sbR 𝓡
inoremap <C-U>sbS 𝓢
inoremap <C-U>sbT 𝓣
inoremap <C-U>sbU 𝓤
inoremap <C-U>sbV 𝓥
inoremap <C-U>sbW 𝓦
inoremap <C-U>sbX 𝓧
inoremap <C-U>sbY 𝓨
inoremap <C-U>sbZ 𝓩
inoremap <C-U>sba 𝓪
inoremap <C-U>sbb 𝓫
inoremap <C-U>sbc 𝓬
inoremap <C-U>sbd 𝓭
inoremap <C-U>sbe 𝓮
inoremap <C-U>sbf 𝓯
inoremap <C-U>sbg 𝓰
inoremap <C-U>sbh 𝓱
inoremap <C-U>sbi 𝓲
inoremap <C-U>sbj 𝓳
inoremap <C-U>sbk 𝓴
inoremap <C-U>sbl 𝓵
inoremap <C-U>sbm 𝓶
inoremap <C-U>sbn 𝓷
inoremap <C-U>sbo 𝓸
inoremap <C-U>sbp 𝓹
inoremap <C-U>sbq 𝓺
inoremap <C-U>sbr 𝓻
inoremap <C-U>sbs 𝓼
inoremap <C-U>sbt 𝓽
inoremap <C-U>sbu 𝓾
inoremap <C-U>sbv 𝓿
inoremap <C-U>sbw 𝔀
inoremap <C-U>sbx 𝔁
inoremap <C-U>sby 𝔂
inoremap <C-U>sbz 𝔃

" 𝔸 𝔹   𝔻 𝔼 𝔽 𝔾   𝕀 𝕁 𝕂 𝕃 𝕄   𝕆       𝕊 𝕋 𝕌 𝕍 𝕎 𝕏 𝕐
" 𝕒 𝕓 𝕔 𝕕 𝕖 𝕗 𝕘 𝕙 𝕚 𝕛 𝕜 𝕝 𝕞 𝕟 𝕠 𝕡 𝕢 𝕣 𝕤 𝕥 𝕦 𝕧 𝕨 𝕩 𝕪 𝕫

inoremap <C-U>[A 𝔸
inoremap <C-U>[B 𝔹
inoremap <C-U>[C ℂ
inoremap <C-U>[D 𝔻
inoremap <C-U>[E 𝔼
inoremap <C-U>[F 𝔽
inoremap <C-U>[G 𝔾
inoremap <C-U>[H ℍ
inoremap <C-U>[H ℍ
inoremap <C-U>[I 𝕀
inoremap <C-U>[J 𝕁
inoremap <C-U>[K 𝕂
inoremap <C-U>[L 𝕃
inoremap <C-U>[M 𝕄
inoremap <C-U>[N ℕ
inoremap <C-U>[O 𝕆
inoremap <C-U>[P ℙ
inoremap <C-U>[Q ℚ
inoremap <C-U>[R ℝ
inoremap <C-U>[S 𝕊
inoremap <C-U>[T 𝕋
inoremap <C-U>[U 𝕌
inoremap <C-U>[V 𝕍
inoremap <C-U>[W 𝕎
inoremap <C-U>[X 𝕏
inoremap <C-U>[Y 𝕐
inoremap <C-U>[Z ℤ
inoremap <C-U>[a 𝕒
inoremap <C-U>[b 𝕓
inoremap <C-U>[c 𝕔
inoremap <C-U>[d 𝕕
inoremap <C-U>[e 𝕖
inoremap <C-U>[f 𝕗
inoremap <C-U>[g 𝕘
inoremap <C-U>[h 𝕙
inoremap <C-U>[i 𝕚
inoremap <C-U>[j 𝕛
inoremap <C-U>[k 𝕜
inoremap <C-U>[l 𝕝
inoremap <C-U>[m 𝕞
inoremap <C-U>[n 𝕟
inoremap <C-U>[o 𝕠
inoremap <C-U>[p 𝕡
inoremap <C-U>[q 𝕢
inoremap <C-U>[r 𝕣
inoremap <C-U>[s 𝕤
inoremap <C-U>[t 𝕥
inoremap <C-U>[u 𝕦
inoremap <C-U>[v 𝕧
inoremap <C-U>[w 𝕨
inoremap <C-U>[x 𝕩
inoremap <C-U>[y 𝕪
inoremap <C-U>[z 𝕫

" 𝚨 𝚩 𝚪 𝚫 𝚬 𝚭 𝚮 𝚯 𝚰 𝚱 𝚲 𝚳 𝚴 𝚵 𝚶 𝚷 𝚸 𝚹 𝚺 𝚻 𝚼 𝚽 𝚾 𝚿 𝛀 𝛁
" 𝛂 𝛃 𝛄 𝛅 𝛆 𝛇 𝛈 𝛉 𝛊 𝛋 𝛌 𝛍 𝛎 𝛏 𝛐 𝛑 𝛒 𝛓 𝛔 𝛕 𝛖 𝛗 𝛘 𝛙 𝛚 𝛛 𝛜 𝛝 𝛞 𝛟 𝛠 𝛡

inoremap <C-U>bAlpha 𝚨
inoremap <C-U>bBeta 𝚩
inoremap <C-U>bGamma 𝚪
inoremap <C-U>bDelta 𝚫
inoremap <C-U>bEpsilon 𝚬
inoremap <C-U>bZeta 𝚭
inoremap <C-U>bEta 𝚮
inoremap <C-U>bTheta 𝚯
inoremap <C-U>bIota 𝚰
inoremap <C-U>bKappa 𝚱
inoremap <C-U>bLambda 𝚲
inoremap <C-U>bMu 𝚳
inoremap <C-U>bNu 𝚴
inoremap <C-U>bXi 𝚵
inoremap <C-U>bOmnicron 𝚶
inoremap <C-U>bPi 𝚷
inoremap <C-U>bRho 𝚸
inoremap <C-U>bSigma 𝚺
inoremap <C-U>bTau 𝚻
inoremap <C-U>bUpsilon 𝚼
inoremap <C-U>bPhi 𝚽
inoremap <C-U>bChi 𝚾
inoremap <C-U>bPsi 𝚿
inoremap <C-U>bOmega 𝛀
inoremap <C-U>bNabla 𝛁
inoremap <C-U>balpha 𝛂
inoremap <C-U>bbeta 𝛃
inoremap <C-U>bgamma 𝛄
inoremap <C-U>bdelta 𝛅
inoremap <C-U>bepsilon 𝛆
inoremap <C-U>bzeta 𝛇
" inoremap <C-U>beta 𝛈
inoremap <C-U>btheta 𝛉
inoremap <C-U>biota 𝛊
inoremap <C-U>bkappa 𝛋
inoremap <C-U>blambda 𝛌
inoremap <C-U>bmu 𝛍
inoremap <C-U>bnu 𝛎
inoremap <C-U>bxi 𝛏
inoremap <C-U>bomnicron 𝛐
inoremap <C-U>bpi 𝛑
inoremap <C-U>brho 𝛒
inoremap <C-U>bfsigma 𝛓
inoremap <C-U>bsigma 𝛔
inoremap <C-U>btau 𝛕
inoremap <C-U>bupsilon 𝛖
inoremap <C-U>bphi 𝛗
inoremap <C-U>bchi 𝛘
inoremap <C-U>bpsi 𝛙
inoremap <C-U>bomega 𝛚
inoremap <C-U>bpdiff 𝛛

" 𝛢 𝛣 𝛤 𝛥 𝛦 𝛧 𝛨 𝛩 𝛪 𝛫 𝛬 𝛭 𝛮 𝛯 𝛰 𝛱 𝛲 𝛳 𝛴 𝛵 𝛶 𝛷 𝛸 𝛹 𝛺 𝛻
" 𝛼 𝛽 𝛾 𝛿 𝜀 𝜁 𝜂 𝜃 𝜄 𝜅 𝜆 𝜇 𝜈 𝜉 𝜊 𝜋 𝜌 𝜍 𝜎 𝜏 𝜐 𝜑 𝜒 𝜓 𝜔 𝜕 𝜖 𝜗 𝜘 𝜙 𝜚 𝜛

inoremap <C-U>iAlpha 𝛢
inoremap <C-U>iBeta 𝛣
inoremap <C-U>iGamma 𝛤
inoremap <C-U>iDelta 𝛥
inoremap <C-U>iEpsilon 𝛦
inoremap <C-U>iZeta 𝛧
inoremap <C-U>iEta 𝛨
inoremap <C-U>iTheta 𝛩
inoremap <C-U>iIota 𝛪
inoremap <C-U>iKappa 𝛫
inoremap <C-U>iLambda 𝛬
inoremap <C-U>iMu 𝛭
inoremap <C-U>iNu 𝛮
inoremap <C-U>iXi 𝛯
inoremap <C-U>iOmnicron 𝛰
inoremap <C-U>iPi 𝛱
inoremap <C-U>iRho 𝛲
inoremap <C-U>iSigma 𝛴
inoremap <C-U>iTau 𝛵
inoremap <C-U>iUpsilon 𝛶
inoremap <C-U>iPhi 𝛷
inoremap <C-U>iChi 𝛸
inoremap <C-U>iPsi 𝛹
inoremap <C-U>iOmega 𝛺
inoremap <C-U>iNabla 𝛻
inoremap <C-U>ialpha 𝛼
inoremap <C-U>ibeta 𝛽
inoremap <C-U>igamma 𝛾
inoremap <C-U>idelta 𝛿
inoremap <C-U>iepsilon 𝜀
inoremap <C-U>izeta 𝜁
inoremap <C-U>ieta 𝜂
inoremap <C-U>itheta 𝜃
inoremap <C-U>iiota 𝜄
inoremap <C-U>ikappa 𝜅
inoremap <C-U>ilambda 𝜆
inoremap <C-U>imu 𝜇
inoremap <C-U>inu 𝜈
inoremap <C-U>ixi 𝜉
inoremap <C-U>iomnicron 𝜊
inoremap <C-U>ipi 𝜋
inoremap <C-U>irho 𝜌
inoremap <C-U>ifsigma 𝜍
inoremap <C-U>isigma 𝜎
inoremap <C-U>itau 𝜏
inoremap <C-U>iupsilon 𝜐
inoremap <C-U>iphi 𝜑
inoremap <C-U>ichi 𝜒
inoremap <C-U>ipsi 𝜓
inoremap <C-U>iomega 𝜔
inoremap <C-U>ipdiff 𝜕

" 𝜜 𝜝 𝜞 𝜟 𝜠 𝜡 𝜢 𝜣 𝜤 𝜥 𝜦 𝜧 𝜨 𝜩 𝜪 𝜫 𝜬 𝜭 𝜮 𝜯 𝜰 𝜱 𝜲 𝜳 𝜴 𝜵
" 𝜶 𝜷 𝜸 𝜹 𝜺 𝜻 𝜼 𝜽 𝜾 𝜿 𝝀 𝝁 𝝂 𝝃 𝝄 𝝅 𝝆 𝝇 𝝈 𝝉 𝝊 𝝋 𝝌 𝝍 𝝎 𝝏 𝝐 𝝑 𝝒 𝝓 𝝔 𝝕

inoremap <C-U>biAlpha 𝜜
inoremap <C-U>biBeta 𝜝
inoremap <C-U>biGamma 𝜞
inoremap <C-U>biDelta 𝜟
inoremap <C-U>biEpsilon 𝜠
inoremap <C-U>biZeta 𝜡
inoremap <C-U>biEta 𝜢
inoremap <C-U>biTheta 𝜣
inoremap <C-U>biIota 𝜤
inoremap <C-U>biKappa 𝜥
inoremap <C-U>biLambda 𝜦
inoremap <C-U>biMu 𝜧
inoremap <C-U>biNu 𝜨
inoremap <C-U>biXi 𝜩
inoremap <C-U>biOmnicron 𝜪
inoremap <C-U>biPi 𝜫
inoremap <C-U>biRho 𝜬
inoremap <C-U>biSigma 𝜮
inoremap <C-U>biTau 𝜯
inoremap <C-U>biUpsilon 𝜰
inoremap <C-U>biPhi 𝜱
inoremap <C-U>biChi 𝜲
inoremap <C-U>biPsi 𝜳
inoremap <C-U>biOmega 𝜴
inoremap <C-U>biNabla 𝜵
inoremap <C-U>bialpha 𝜶
inoremap <C-U>bibeta 𝜷
inoremap <C-U>bigamma 𝜸
inoremap <C-U>bidelta 𝜹
inoremap <C-U>biepsilon 𝜺
inoremap <C-U>bizeta 𝜻
inoremap <C-U>bieta 𝜼
inoremap <C-U>bitheta 𝜽
inoremap <C-U>biiota 𝜾
inoremap <C-U>bikappa 𝜿
inoremap <C-U>bilambda 𝝀
inoremap <C-U>bimu 𝝁
inoremap <C-U>binu 𝝂
inoremap <C-U>bixi 𝝃
inoremap <C-U>biomnicron 𝝄
inoremap <C-U>bipi 𝝅
inoremap <C-U>birho 𝝆
inoremap <C-U>bifsigma 𝝇
inoremap <C-U>bisigma 𝝈
inoremap <C-U>bitau 𝝉
inoremap <C-U>biupsilon 𝝊
inoremap <C-U>biphi 𝝋
inoremap <C-U>bichi 𝝌
inoremap <C-U>bipsi 𝝍
inoremap <C-U>biomega 𝝎
inoremap <C-U>bipdiff 𝝏

" 𝟎 𝟏 𝟐 𝟑 𝟒 𝟓 𝟔 𝟕 𝟖 𝟗
" 𝟘 𝟙 𝟚 𝟛 𝟜 𝟝 𝟞 𝟟 𝟠 𝟡

inoremap <C-U>b0 𝟎
inoremap <C-U>b1 𝟏
inoremap <C-U>b2 𝟐
inoremap <C-U>b3 𝟑
inoremap <C-U>b4 𝟒
inoremap <C-U>b5 𝟓
inoremap <C-U>b6 𝟔
inoremap <C-U>b7 𝟕
inoremap <C-U>b8 𝟖
inoremap <C-U>b9 𝟗
inoremap <C-U>[0 𝟘
inoremap <C-U>[1 𝟙
inoremap <C-U>[2 𝟚
inoremap <C-U>[3 𝟛
inoremap <C-U>[4 𝟜
inoremap <C-U>[5 𝟝
inoremap <C-U>[6 𝟞
inoremap <C-U>[7 𝟟
inoremap <C-U>[8 𝟠
inoremap <C-U>[9 𝟡

"       ▼  Suppl. Arrows-C
" U+1F800  🠀 🠁 🠂 🠃 🠄 🠅 🠆 🠇 🠈 🠉 🠊 🠋
" U+1F810  🠐 🠑 🠒 🠓 🠔 🠕 🠖 🠗 🠘 🠙 🠚 🠛 🠜 🠝 🠞 🠟
" U+1F820  🠠 🠡 🠢 🠣 🠤 🠥 🠦 🠧 🠨 🠩 🠪 🠫 🠬 🠭 🠮 🠯
" U+1F830  🠰 🠱 🠲 🠳 🠴 🠵 🠶 🠷 🠸 🠹 🠺 🠻 🠼 🠽 🠾 🠿
" U+1F840  🡀 🡁 🡂 🡃 🡄 🡅 🡆 🡇
" U+1F850  🡐 🡑 🡒 🡓 🡔 🡗 🡘
" U+1F860  🡠 🡡 🡢 🡣 🡤 🡧 🡨 🡩 🡪 🡫 🡬 🡯
" U+1F870  🡰 🡱 🡲 🡳 🡴 🡷 🡸 🡹 🡺 🡻 🡼 🡿
" U+1F880  🢀 🢁 🢂 🢃 🢄 🢇
" U+1F890  🢐 🢑 🢒 🢓 🢔 🢕 🢖 🢗 🢘 🢙 🢚 🢛
" U+1F8A0  🢠 🢡 🢢 🢣 🢤 🢥 🢦 🢧 🢨 🢩 🢪 🢫
"
"
"
"
" ------------------------------------------------------------------------------
" Abbreviations
" ------------------------------------------------------------------------------
"  These abbreviations are a now defunct old way of accessing certain unicode
"  characters

" ia zalpha α
" ia zbeta β
" ia zchi χ
" ia zdelta δ
" ia zepsilon ε
" ia zeta η
" ia zgamma γ
" ia ziota ι
" ia zkappa κ
" ia zlambda λ
" ia zmu μ
" ia znu ν
" ia zomega ω
" ia zphi φ
" ia zpi π
" ia zpsi ψ
" ia zrho ρ
" ia zsigma σ
" ia ztau τ
" ia ztheta θ
" ia zupsilon υ
" ia zxi ξ
" ia zzeta ζ

" ia zDelta Δ
" ia zGamma Γ
" ia zLambda Λ
" ia zOmega Ω
" ia zPhi Φ
" ia zPi Π
" ia zPsi Ψ
" ia zSigma Σ
" ia zTheta Θ
" ia zXi Ξ

" ia zforall ∀
" ia zexists ∃
" ia zbottom ⊥

" ia zA 𝔸
" ia zB 𝔹
" ia zC ℂ
" ia zD 𝔻
" ia zE 𝔼
" ia zF 𝔽
" ia zG 𝔾
" ia zH ℍ
" ia zI 𝕀
" ia zJ 𝕁
" ia zK 𝕂
" ia zL 𝕃
" ia zM 𝕄
" ia zN ℕ
" ia zO 𝕆
" ia zP ℙ
" ia zQ ℚ
" ia zR ℝ
" ia zS 𝕊
" ia zT 𝕋
" ia zU 𝕌
" ia zV 𝕍
" ia zW 𝕎
" ia zX 𝕏
" ia zY 𝕐
" ia zZ ℤ
" ia zzgamma ℽ
" ia zzGamma ℾ
" ia zzpi ℼ
" ia zzPi ℿ

" ia zeq ≡
" ia zne ≠
" ia zle ≤
" ia zge ≥
" ia zdot ∘
" ia znot ¬
" ia zand ∧
" ia zor ∨
" ia zempty ∅
" ia zunion ∪
" ia zintersect ∩
