#Martin Vasko, xvasko12 FIT2BIT-2BIB
#!/bin/bash

LC_ALL=en_US.utf8

#ignore install.sh and find another script
#name of script!! problem if more scripts inside
script=$(ls -l | grep -v "\.txt" | grep -v "Docker" | grep -v "install" | grep -v "\.c" | grep -v "\.md" | grep -v "\.h" | grep -v "proj2" | awk {'print $9'})
#script=$(ls -l | grep -v install.sh | grep .sh | awk {'print $9'})
if [ -n "$script" ]; then
	echo "Starting script"
	echo
	#script IOS1
	#script parameters without proj2 parameter at the start!
	#for more parameters add parameters, depends on how many params
	if [ -n "$1" ]; then
		if [ -n "$2" ]; then
			sh $script $1 $2
		else
			sh $script $1
		fi
	else
		sh $script
	fi
	echo
	echo "End of script"
fi


##proj2 directory needed!!
#problem if more directories maybe should be named proj2??!!
#git clone

#direc=$(ls -l | grep "^d" |awk {'print $9'})
#if [ -d "$direc" ]; then
#	cd $direc
	#make project 2
#	make
	#try it / test it
#	echo
#	echo "Execute proj2 , above generated output by makefile"
#	execu=$(find . -type f -perm 755 -print)
	#for parameters in proj2 use $1 as proj2
#	if [ "$1" == "proj2" ]; then
#		if [ -n "$2" && -n "$3" ]; then
#			echo "Using paramaters '$2' and '$3'"
#			if [ -n "$4" && -n "$5" ]; then
#				echo "another parameters '$4' and '$5'"
#				echo
#				echo
#				./$execu $2 $3 $4 $5
#			else
#				echo
#				echo
#				./$execu $2 $3
#			fi
#		fi
#	else
#		./$execu
#	fi
#	echo
#	echo
#	echo "End of execution"
	#execute file
	#clean directory 2
#	make clean
#fi

