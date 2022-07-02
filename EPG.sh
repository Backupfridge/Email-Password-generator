#!/bin/bash

PS3='Please enter your choice: '
options=("Email Generate" "Password Generate" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Email Generate")
            read -p "The Email's Top Level Domain: " TLD

for (( i=0; i<20; i++)); do
	CHARS=$(cat /dev/urandom | tr -dc "a-zA-Z0-9" | fold -w 24 | head -n 1)
	echo $CHARS@$TLD
done

echo ""
echo "Emails Generated"
echo ""

            ;;
        "Password Generate")
            #!/bin/bash

PAD=1
while (( $PAD < 20 ))
do
read -p "Password character lengh: " PAD
if (( $PAD < 20 )); then
echo "Not enough characters"
fi
echo ""
done

for (( i=0; i<20; i++)); do
    CHARS=$(cat /dev/urandom | tr -dc "a-zA-Z0-9!@#$%^&()_+?><~\;" | fold -w $PAD | head -n 1)
    echo $CHARS
done

echo ""
echo "Passwords Generated"
echo ""
            ;;
        "Option 3")
            echo "more coming to this script soon!" & exit
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
