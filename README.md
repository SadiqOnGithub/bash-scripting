# Bash Scripting

Don't forget to change permission before running.
Command : `chmod +x docAndDocxSort.sh`



## docAndDocxSort

Sort doc and docx; then convert them into pdfs

To convert docx to pdf we are using --unoconv-- as it is simple. 
Command : `unoconv -f pdf /path/to/document.docx`
	
#### Not Using!	
Libreoffice and soffice are producing corrupt pdf.

Pandoc is taking all the packages of the universe to run.



## searchAndSort.sh

A simple way to search and sort CV. Alhamdulillah.

You can provide search term and sort dir name by simple editing.


## Bash Command Learning

Iterate over current dir files

	`for file in *;`   -- hidden files included

	`for file in ./*;`   -- hidden files excluded  |  NOT Preferred

