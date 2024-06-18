 echo "実行するにはenterを押してください…"
 read check
 xsel --clipboard --output >temp1.txt
 echo "" >>temp1.txt
 cat -n temp1.txt >temp2.txt
 sed 's/^[[:space:]]*//' ./temp2.txt > temp3.txt
 sed -e 's/\t/  /' ./temp3.txt  >temp4.txt
 cat temp4.txt|xsel -bi
 rm ./temp1.txt temp2.txt temp3.txt temp4.txt
 echo "コピーが完了しました。"