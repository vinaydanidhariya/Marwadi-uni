# Write a shell script which will generate first n Fibonacci numbers
# like: 1, 1, 2, 3, 5.
N=6
a=0
b=1
echo "The Fibonacci series is : "
for (( i=0; i<N; i++ ))
do
echo -n "$a "
fn=$((a + b))
a=$b
b=$fn
done

# 1, 1, 2, 3, 5, 8