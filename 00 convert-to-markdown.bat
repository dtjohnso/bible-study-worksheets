    for %%f in (*.docx) do (
        if exist "%%~nf.pdf" (
		if not exist "%%~nf.markdown" (
	        pandoc -t markdown -f docx --no-wrap "%%~nf.docx" -o "%%~nf.markdown"
		)
	    )
    )