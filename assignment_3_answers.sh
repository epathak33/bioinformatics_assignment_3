sed "/Zoo/d" pandas.txt >> no_zoo_pandas.txt #1
awk '{print $1,$4,$2}' pandas.txt #2
awk '{print $5}' pandas.txt | sort #3
sed 's/female/F/' pandas.txt |sed 's/male/M/' >> output_F_M_New_pandas.txt #4
grep October pandas.txt|grep female -c #5
grep -n -v "Enish" pandas.txt >> number_6_ans_pandas.txt #6
sed -n -e 1p -e 6p -e 17p pandas.txt >> number_7_ans_pandas.txt #7 (help from https://linuxcommando.blogspot.com/2008/03/using-sed-to-extract-lines-in-text-file.html)
grep -i x pandas.txt >> lines_x_pandas.txt #8
awk '{print $5}' pandas.txt | sort | uniq -i -u >> unique_location_pandas.txt #9 uniq command will only identify duplicates that are adjacent, or next to each other, in the file.
awk '$4 <=10 {print}' pandas.txt | awk '{print $1,$4}' | sort -nk2 >> youngerthanten_pandas.txt #10 Use the -k option to sort on a certain column. For example, use “-k 2” to sort on the second column. Help taken from https://www.geeksforgeeks.org/sort-command-linuxunix-examples/