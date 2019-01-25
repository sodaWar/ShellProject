#! /bin/bash
. ./test.sh

echo "第一个测试文件的网址是：$url"
test1(){
    a=5
    b=10
    c=192
    echo "$a+$b" | bc 
    echo "scale=2;(2.77771-1.44546)/1" |bc 
    echo "obase=2;$c" |bc
    echo "obase=10;ibase=2;11000000" |bc
    echo "$b^$a" | bc
    echo "sqrt(100)" |bc
}

test2(){
    a=10
    b=15
    let c=a+b
    echo $c
}

test3(){
s=0
for((i=1;i<101;i++));do
let s=s+i
done;
echo $s
}

test4(){
while [ $# != 0 ];do
echo "第一个参数为:$1,参数个数为:$#"
shift
done
}

test4 1 3 4 5 6
