    for %%f in (*.docx) do (

            echo %%~nf
            pandoc -t markdown -f docx --no-wrap "%%~nf.docx" -o "%%~nf.markdown"
    )