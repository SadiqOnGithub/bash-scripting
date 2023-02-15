# docAndDocxSort
	don't forget to change permission before running
	`chmod +x docAndDocxSort.sh`

-to convert docx to pdf we are using -- unoconv -- as it is simple. 
	and the command to convert doc to pdf is `unoconv -f pdf /path/to/document.docx`
	
-libreoffice and soffice are producing corrupt pdf.
-pandoc is taking all the packages of the universe to run.

docAndDocxSort is working fine. Done. Alhamdulillah.


# searchAndSort.sh

A simple way to search and sort CV. Alhamdulillah.


# bash command learning

iterate over current dir files
	`for file in *;`   -- hidden files included
	`for file in ./*;`   -- hidden files excluded  |  NOT Preferred

