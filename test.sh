diff ./golden/01.txt <(cat ./sample.tsv | ./bin/fill)
diff ./golden/02.txt <(cat ./sample.tsv | ./bin/fill 'O')
