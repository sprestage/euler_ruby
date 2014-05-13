##Euler solutions in Ruby
These are Ruby programs that solve the math problems from http://projecteuler.net/problems.


<br>
####2. Even Fibonacci numbers

<pre>
susanmaclaptop:euler_ruby susan$ time ./fibonacci_euler_02.rb

2 8 34 144 610 2584 10946 46368 196418 832040 3524578  = 4613732

real  0m0.132s
user  0m0.043s
sys 0m0.013s
</pre>


####3. Largest prime number

<pre>
susanmaclaptop:euler_ruby susan$ time ./prime_factor_euler_03.rb

71, where 600851475143 / 71 is now 8462696833
839, where 8462696833 / 839 is now 10086647
1471, where 10086647 / 1471 is now 6857
6857, where 6857 / 6857 is now 1

Biggest prime factor of 600851475143 = 6857

real  0m0.170s
user  0m0.047s
sys 0m0.014s
</pre>


####4. Largest palindrome product

<pre>
susanmaclaptop:euler_ruby susan$ time ./largest_palindrome_product.rb

The largest palindrome made from the product of two 3-digit numbers
is:  906609 = 993 * 913.

real  0m8.784s
user  0m5.227s
sys 0m0.058s
</pre>


####5. Smallest multiple
I had trouble with this one taking WAY to long until I threw everything into a hash.  My first solution took over two minutes to run.

<pre>
susanmaclaptop:euler_ruby susan$ time ./smallest_multiple_euler_05.rb
232792560

real  0m0.483s
user  0m0.044s
sys 0m0.020s
</pre>
