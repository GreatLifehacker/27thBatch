PWD=$(pwd)
echo -e -n "\r$(figlet "2 7 t h  *  B a t c h")"
echo
echo "Author: Gowrishankar the Great || @GreatLifehacker ||"
echo
echo "Running on $PWD"

N=$(ls -l | wc -l)

installapk()
{
for file in *.apk
do
  echo "Installing $file ..."
  adb install "$file"
  ((N=N-1))
done
}

while [ "$N" -gt 0 ]
do
    installapk
done