function compile {
    param (
        $num
    )
    $numFormat = '{0:d3}' -f $num
    $texfile = "\newcommand{\docNum}{$num} \input{./survey.tex}"
    $filename = "survey-$numFormat"
    $texfile | Out-File -FilePath "$filename.tex"
    latexmk -pdflatex=lualatex -pdf "$filename.tex"
    Move-Item "$filename.pdf" "2025/$filename.pdf"
    Remove-Item "$filename.*"
}

For ($i=0; $i -le 100; $i++) {
compile $i
}