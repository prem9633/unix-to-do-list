#!/bin/bash
case $1 in 
	-i)echo "topic -> $2 and details -> $3"
		echo "$2 : $3" >>/home/prem/Desktop/usp_project/todo.log
		
		echo "saved successfully"
		;;
	-s)echo "search note"
		echo "for the given topic details are"
		grep -i $2 /home/prem/Desktop/usp_project/todo.log
		;;
	-d) echo "delete a note"
	        sed -i -e "/\<$2\>/d" /home/prem/Desktop/usp_project/todo.log
		echo "deleted successfully"
		;; 
	-a)echo "your to-do list"
	
		cat /home/prem/Desktop/usp_project/todo.log 
		
		;;
	-e)echo "exporting the stickey to the current directory"
		gcc /home/prem/Desktop/usp_project/copy.c
		/home/prem/Desktop/usp_project/a.out /home/prem/Desktop/usp_projecttodo.log  $2
		
		rm -r a.out
		;;
	*)echo "invalid option";;
esac
