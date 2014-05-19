##Euler solutions in Ruby
These are Ruby programs that solve the math problems from http://projecteuler.net/problems.

This project was inspired by the Seatle.rb May 2014 Coding Challenge found here, http://www.thagomizer.com/blog/2014/05/06/may-coding-challenge.html

<br>
####1. Multiples of 3 and 5
<pre>
susanmaclaptop:euler_ruby susan$ time ./multiples_of_3_or_5_euler_01.rb
sum = 233168

real  0m0.192s
user  0m0.043s
sys 0m0.014s
</pre>


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


####6. Sum square difference
That was VERY easy.

<pre>
susanmaclaptop:euler_ruby susan$ time ./sum_square_difference_euler_06.rb
difference = 25164150

real  0m0.571s
user  0m0.049s
sys 0m0.019s
</pre>


####7. 10001st prime
The much more efficient solution uses the Sieve of Eratosthenes (ca 240 BC), which works for smaller primes (all those less than 10,000,000,000).  Thank you Univ of Tenn at Martin for providing a good page on understanding and finding primes.  http://primes.utm.edu/prove/merged.html

<pre>
susanmaclaptop:euler_ruby susan$ time ./10001st_prime_euler_07.rb

The 10001st prime number is 104743

real  0m3.323s
user  0m0.539s
sys 0m0.065s
</pre>

The first solution takes about 5-6 minutes.  Optimization is needed, such as a non-iterative way of checking for primes.  Time to learn more math.
<pre>
susanmaclaptop:euler_ruby susan$ time ./10001st_prime_euler_07.rb
#10001 prime = 104743

real  5m32.597s
user  1m2.179s
sys 0m0.761s
</pre>


####8. Largest product in a series

This was also very straightforward.

<pre>
susanmaclaptop:euler_ruby susan$ time ./largest_product_in_series_euler_08.rb

highest_product = 40824

real  0m0.119s
user  0m0.043s
sys 0m0.014s
</pre>


####9. Special Pythagorean triplet

Took me a little time to wrap my head around some of this.  Probably could have done it much faster.  Pre-optimization is the devil.  *sigh*

<pre>
susanmaclaptop:euler_ruby susan$ time ./special_Pythagorean_triplet_euler_09.rb

  200 + 375 + 425 = 1000
AND
  200**2 + 375**2 = 425**2
AND
  40000 + 140625 = 180625
AND
 200 &lt; 375 &lt; 425

The product of abc is: 31875000.

real  0m0.148s
user  0m0.073s
sys 0m0.011s
</pre>


####10. Summation of primes
Used that Sieve of Eratosthenes hash solution from #7 again.
<pre>
susanmaclaptop:euler_ruby susan$ time ./summation_of_primes_euler_10.rb

sum of primes less than 2000000: 142913828922

real  0m17.364s
user  0m5.554s
sys 0m0.145s
</pre>
