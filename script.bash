#!/bin/bash
INPUT="table.csv"
OUTPUT="output2.txt"
exec 1>$OUTPUT
OLDIFS=$IFS
IFS=','; i=-1;
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read time fio sex nikname tel city year team bio check email
do
 i=$(( $i + 1 )); if [ $i -eq 0 ] ; then  continue; fi	
echo "Row_$i=$i¶¶$nikname¶¶$fio¶-¶-¶$year¶$sex¶¶ðóëåâîé¶¶¶$city¶$team¶¶"	
done < $INPUT
IFS=$OLDIFS

# on line 116 RowCount=2+kol

#go to line 120 and paste

