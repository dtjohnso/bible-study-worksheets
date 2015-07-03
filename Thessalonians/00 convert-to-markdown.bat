    for %%f in (*.docx) do (
        rem echo %%~nf
        if not exist "%%~nf.markdown" (
	        pandoc -t markdown -f docx --no-wrap "%%~nf.docx" -o "%%~nf.markdown"
	    )
    )