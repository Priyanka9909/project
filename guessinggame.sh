@@ -0,0 +1,20 @@
function guessthegame(){
    correct_answer=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "you might enter your number of guess"
        read  number
        if [ $number -lt $correct_answer ]
        then
            echo "your selected number is Less then the true number"
        elif [ $number -gt $correct_answer ]
        then
            echo "your selected number is Greater then the true number"
        else
            echo " Kudos, you made the right choice!"
        break;
        fi
    done
}
echo "guess the number of files in the current directory!"
guessthegame
