for i in {2000..3001}
do
	for j in {2000..3001}
	do
	    num1=$i
	    num2=$j
	    num3="${num1}${num2}"
	    text1="demofile${num3}txt"
	    echo $text1
	    rm $text
	done
done
