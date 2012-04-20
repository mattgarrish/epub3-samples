@echo off & setLocal EnableDelayedExpansion

for /F "tokens=1,2,3 delims=/ " %%A in ('Date /t') do @( 
	set fullDate=%%C%%B%%A
)

set fileName=%~n1
set fileName=!fileName: =_!

java -jar lib/epubcheck-3.0b5-pre/epubcheck-3.0b5-pre.jar %1 -mode "exp" -save
move !fileName!.epub !fileName!-!fullDate!.epub