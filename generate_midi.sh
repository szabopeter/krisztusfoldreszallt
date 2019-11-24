for lyfile in kotta.ly satb.ly
do
    lilypond -ddelete-intermediate-files -dno-point-and-click --pdf "${lyfile}"
done
