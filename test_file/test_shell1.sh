#! /bin/bash
function test(){
	myName="hongnaiwu"
	test="sdajoowqe"
	yourName="yingyuzhen"
	list=("java" "python" "js" "shell" 520)
	allName="hello,"${myName}" and "${yourName}"!"
	echo ${allName}
	echo ${list[3]}
	echo ${list[@]}
	echo ${#list[@]}
	for i in "$*";do
		echo $i
	done
	for i in "$@";do
		echo $i
	done
	echo "脚本传递的参数个数：$#"
	echo "脚本运行的当前进程ID号：$$"
	echo "执行的文件名为：$0"
	echo "第一个参数为：$1"
	echo "第二个参数为：$2"
}
function test1(){
	a=`expr 3 + 3`
	echo "$a"
	val=`expr 2 + 2`
	echo "两数之和为 : $val"
	b=10
	d=20
	c=`expr $d \* $b`
	echo "$c"
}

function test2(){
	a=10
	b=20
	if [ $a -lt $b ]
	then
		echo "a小于或等于b"
	else
		echo "a大于b"
	fi
	if [ $a -lt $b -o $b -gt 100 ]
	then
		echo "该表达式返回值为true"
	fi
}

function test3(){
	a="python"
	b="java"
	if [ -z $a ]
	then
		echo "a字符串长度为0"
	else
		echo "a字符串长度不为0"
	fi
	if [ $a ]
	then
		echo "a字符串不为空"
	else
		echo "a字符串为空"
	fi
}

function test4(){
	file="/Users/apple/test.sh"
	if [ -r $file ]
	then
		echo "文件可读"
	else
		echo "文件不可读"
	fi
	if [ -d $file ]
	then 
		echo "文件是个目录"
	else
		echo "文件不是个目录"
	fi
	if [ -s $file ]
	then
		echo "文件不为空"
	fi
	if [ -e $file ]
	then
		echo "文件存在"
	fi
}

function test5(){
	echo it is a test
	echo \"it is a test\"
	read name 
	echo "$name it is a test"
	echo -e "hello \c"
	echo "my wife yingshuyun"
#	echo "hello python and java" > myfile
	echo `date`
}

function test6(){
	printf "%s %s %s\n" a b c d e f g h i j
	a=10
	b=20
	if [ $a == $b ]
	then
		echo "a等于b"
	elif [ $a -gt $b ]
	then 
		echo "a大于b"
	else
		echo "a小于b"
	fi
}

function test7(){
	a=0
	b=10
	until [ ! $a -lt $b ]
	do
		echo $a
		a=`expr $a + 1`
	done
	result=$[ a + b ]
	echo $result
	echo '按下 <CTRL-D> 退出'
	echo  '输入你最喜欢的网站名: '
	while read FILM
	do
		echo "$FILM 是最好的网址"
	done		
}

function test8(){
	echo '请输入1-5之间的数字!'
	echo '你输入的数字为:'
	read num
	case $num in 
		1) echo '你输入了1'
		;;
		2) echo '你输入了2'
		;;
		3) echo '你输入了3'
		;;
		4) echo '你输入了4'
		;;
		5) echo '你输入了5'
		;;
		*) echo '你输入的值不在1-5范围内'
		;;
	esac
}

function test9(){
	while true
	do
   		echo -n "输入 1 到 5 之间的数字:"
    		read num
    		case $num in
        		1|2|3|4|5) echo "你输入的数字为 $num!"
        		;;
        		*) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            		break
        		;;
    		esac
	done
}
url="www.baidu.com"
#test9
