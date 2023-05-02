hérna eru ýmsar skipanir og leiðbeiningar hvernig á að nota þær

Það er hægt að skrifa forritunarkóða í linux á ýmsan hátt - lærir seinna

Glósur

**cp**
Command used to copy files.

**mkdir**
**mkdir -p**
Command used to create directories.

**mv**
Command used to move and/or rename files.

**rm**
Command used to remove files or directories.

**rmdir**
Command used to remove directories.

**touch**
Command used to create empty files.

**pwd - print working directory**
Skoða þar sem þú ert

**cd cd .. cd /rót**
Færir þig á milli mappa

**ls -a -s -F -l -d**
Skoða directory list directory

**man - manual**
Skoða manual

**mkdir -p vefir/{_template/{css,img,js},tolvubraut.is/{css,img,js},tskoli.is/{css,img,js}}**
**mkdir býr til directory**
**rmdir - remove directory**
Directories skipanir

**sudo - vertu super user  ---- sudo su gerir mig að admin #**
Super dúber user

**apt install tree - apt er skipunin til installa**
Install skipan

**cp - copy -v til að segja linux að segja þér hvað það er að gera ***
**cp -R til að copy allar skrár innan directory með**

**umask 022 (sjálfgefna stillingin)**



**Skráar skipanir**
cat == skoða skrá
less == skoða skrá
vim == opna textaskrá
touch == býr til tóma skrá ( ">" býr líka til skrá
chmod +x filename ---- gefa permission a skránna**
./ == opna skrá*        

**echo "einhver texti" >> skráarnafn**
Notice that by using >> all existing data is preserved and the new data is appended at the end of the file.
Notice that using one redirection symbol overwrites an existing file. This is called "clobbering" a file.

HÉRNA ER LÝSINGAR Á HELSTU EIGINLEIKUM LS SKIPUNINNI !!!
a-flaggið sýnir allar skrár, jafnvel faldaðar skrár sem venjulega eru ekki sýnilegar. 
S-flaggið vísar til stærðarsýningar og raðar skrám og möppum eftir stærð í minnkandi röð. Hægt að bæta við r og það þýðir reverse
l-flaggið sýnir lengri lista af upplýsingum um skrárnar, eins og eiganda, hóp, stærð, tímaðgerðir og aðgangsheimildir.
f-flaggið sýnir allar skrár og möppur í núverandi möppu án þess að raða þeim í stafrófsröð eða bæta við aukainnleikum eins og lýsingum um skrárnöfnin. 
D-flaggið sýnir möppuna sjálfa í stað þess að sýna innihaldið. 
"-la" - sýnir lengri lista yfir allar skrár og möppur í núverandi möppu, þar á meðal faldaðar skrár sem venjulega eru faldar og upplýsingar um eiganda, hóp, stærð, tímaðgerðir og aðgangsheimildir.
"-ltr" - sýnir allar skrár og möppur í núverandi möppu í tímaðri röð, þar sem nýjustu skrárnar eru sýndar fyrst.
"-lsS" - sýnir öll skránöfn og möppunöfn í núverandi möppu og raðar þeim í minnkandi röð eftir stærð.
"-lR" - sýnir lengri lista af upplýsingum um allar skrár og möppur í núverandi möppu og í undirmöppum hennar.
"-ld" - sýnir upplýsingar um möppuna sjálfa í stað innihalds hennar.

**Að búa til tar skrá**
tar -cvf mybackups/udev.tar /etc/udev
#The -c option tells the tar command to create a tar file. 
The -v option stands for "verbose", which instructs the tar command to demonstrate what it is doing. 
The -f option is used to specify the name of the tar file.

**Skoða skrá**
tar –tvf mybackups/udev.tar
t = list contents, v = verbose, f = filename):

**to create a tar file that is compressed use -z option: The -z option makes use of the gzip utility to perform compression.**
tar –zcvf mybackups/udev.tar.gz /etc/udev
ls –lh mybackups

**to extract - contents go to same directory by default**
tar –xvf udev.tar.gz

**To add a file to an existing archive, use the -r option.**
tar -rvf udev.tar /etc/hosts
tar –tvf udev.tar

**gzip skráarnafn**
When you use gzip, the original file is replaced by the zipped file
When you unzip the file, the zipped file will be replaced with the original file.
gunzip skráarnafn unzippar skránni og replacar zippuðu skránna

**The tar command discussed earlier in this lab automatically descends through any subdirectories of a directory specified to be archived.** 

**With the bzip2, gzip, and zip commands the -r option must be specified in order to perform recursion into subdirectories.**

bzip2 og bunzip2 er mjög svipað og gzip
zx og unxz er líka mjög svipað
zip og unzip -- nota -l rofann með unzip skipun til að sjá innihald möppunnar


**LEITAR SKIPANIR**
head & tail sýna fyrstu síðu og síðustu síðuna
head -2 skráarnafn sýnir tildæmis fyrstu tvær línurnar
ls /etc | tail -5 ---- sýnir síðustu 5 línur
head -n -20 /etc/passwd ----- sleppir síðustu 20 línum

grep ---- er leitarvalmöguleiki
grep '^root' SKRÁARNAFN  --- leitar að orðinu root sem fyrsta orð í línu
grep 'sync' skráarnafn --- leitar að öllum orðum í einni línu
grep 'sync$' skráarnafn --- leitar að orðinu sem síðasta orð
grep '.y' skráarnafn --- leitar að stafinum y sem staf númer tvö í orði
grep 'sshd|root|operator' skráarnafn --- leita að mörgum orðum
grep -E 'sshd|root|operator' skráarnafn --- leita að mörgum orðum -- nota frekar
egrep 'no(b|n)' skráarnafn --- leitar að nob eða non
head passwd | grep '[0-9]'
grep -E '[0-9]{3}' passwd

more & less sýna skráarinnihald. Less er þægilegra enda býður uppá fleiri möguleika eins og tildæmsi leit með því að nota skástrik /

cut
Command used to extract columns of text from a file or standard input.
Section 10.6
grep
Command used to filter lines in a file or the output of another command that matches a specified pattern.
Section 10.7
head
Command used to display only the first few lines of a file.
Section 10.1.3
less
Pager command used to view file contents one page of data at a time.
Section 10.1.2
sort
Command used to rearrange lines of files or input.
Section 10.4
tail
Command used to display only the last few lines of a files.
Section 10.1.3
wc
Command that displays statistics of files such as the number of lines, words, and bytes.
Section 10.5