
BASEDIR="$PWD"
echo $BASEDIR
ls -A $BASEDIR | grep jpg  > oldfiles
cat oldfiles

while :
do

read -p "Press [Enter] key to continue..." readEnterKey

BASEDIR="$PWD"
# ls -A $BASEDIR > $BASEDIR/newfiles

ls -A $BASEDIR | grep jpg  > newfiles
cat newfiles

DIRDIFF=$(diff $BASEDIR/oldfiles $BASEDIR/newfiles | cut -f 2 -d "")

for file in $DIRDIFF
do

BASEDIR="$PWD"
if [ -e $BASEDIR/$file ]
then
echo "in here"
echo "New File Found : " 
echo $file

python app.py $file
echo
fi
done


ls -A $BASEDIR | grep jpg  > oldfiles
# ls -A $BASEDIR > oldfiles
done

echo


