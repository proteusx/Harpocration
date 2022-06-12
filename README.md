# Harpocration For GoldenDict

## DESCRIPTION

The [Harpocration Lexicon of the Ten Attic Orators](https://archive.org/details/harpocrationetm01bekkgoog/page/n4/mode/2up) is a Greek dictionary from the
2nd century A.D. composed by [Valerius Harpocration](https://en.wikipedia.org/wiki/Harpocration).

**Harpocration for GoldenDict** is a Perl script to convert the text of Harpocration, taken from the [TLG
CDROM](http://stephanus.tlg.uci.edu/tlgauthors/cd.authors.php)
into a ABBYY Lingvo .dsl dictionary file that can be used with digital
dictionary lookup program [GoldenDict]( http://goldendict.org/), so that the
Harpocration Lexicon can be searched like any other modern dictionary.

## USAGE

Clone the Github repository `git clone https://github.com/proteusx/Harpocration.git`

You need to have available the dictionary text.  If not, provided that you have
the TLG CDRO, you can extract the text with the utility [tlg2u](https://github.com/proteusx/tlg2u)
or [proteus](https://github.com/proteusx/proteus)

Edit the line 7  of the script `harpocration.pl` and set the variable
`$text_file` to point to the lexicon text file.

Run the script `harpocration.pl`

If everything is in order the file **`dictionary/harpocration.dsl`** should be produced.  Point
GoldenDict to this folder and the Harpocration lexicon is ready to search.  Alternatively you may
copy the folder **`dictionary`** to some other location.

There is also a release with `harpocration.dsl` compiled and ready to use.

## NOTES
The Harpocration Lexicon as encoded in the TLG CDROM is sourced from this hard copy edition:
 Harpocrationis lexicon in Decem Oratores Atticos, vol.1 Dindorf, W. (Ed) Oxford University Press, 1853, 1969

## SEE ALSO

More Greek dictionaries for GoldenDict:

<https://github.com/proteusx/Suda-For-GoldenDict>
<https://github.com/proteusx/Hesychius-For-GoldenDict>
<https://github.com/proteusx/Photius-Lexicon>

<http://dadako.narod.ru/paperpoe.htm#greek>

<!-- vim: set tw=80 spell fo=tq: -->
