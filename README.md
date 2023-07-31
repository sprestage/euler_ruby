## Euler solutions in Ruby
These are Ruby programs that solve the math problems from http://projecteuler.net/problems.

This project was inspired by the Seatle.rb May 2014 Coding Challenge found here, http://www.thagomizer.com/blog/2014/05/06/may-coding-challenge.html

## Run rake tests
To run the rake test tasks, use the following syntax
```
$ rake euler20
```

## Euler problems and times
See comments at the top of each solution .rb file for the each problem description.


#### 1. Multiples of 3 and 5
```
$ time ./multiples_of_3_or_5_euler_01.rb
sum = 233168

real  0m0.192s
user  0m0.043s
sys 0m0.014s
```

#### 2. Even Fibonacci numbers

```
$ time ./fibonacci_euler_02.rb

2 8 34 144 610 2584 10946 46368 196418 832040 3524578  = 4613732

real  0m0.132s
user  0m0.043s
sys 0m0.013s
```


#### 3. Largest prime number

```
$ time ./prime_factor_euler_03.rb

71, where 600851475143 / 71 is now 8462696833
839, where 8462696833 / 839 is now 10086647
1471, where 10086647 / 1471 is now 6857
6857, where 6857 / 6857 is now 1

Biggest prime factor of 600851475143 = 6857

real  0m0.170s
user  0m0.047s
sys 0m0.014s
```


#### 4. Largest palindrome product

```
$ time ./largest_palindrome_product.rb

The largest palindrome made from the product of two 3-digit numbers
is:  906609 = 993 * 913.

real  0m8.784s
user  0m5.227s
sys 0m0.058s
```


#### 5. Smallest multiple
I had trouble with this one taking WAY to long until I threw everything into a hash.  My first solution took over two minutes to run.

```
$ time ./smallest_multiple_euler_05.rb
232792560

real  0m0.483s
user  0m0.044s
sys 0m0.020s
```


#### 6. Sum square difference
That was VERY easy.

```
$ time ./sum_square_difference_euler_06.rb
difference = 25164150

real  0m0.571s
user  0m0.049s
sys 0m0.019s
```


#### 7. 10001st prime
The much more efficient solution uses the Sieve of Eratosthenes (ca 240 BC), which works for smaller primes (all those less than 10,000,000,000).  Thank you Univ of Tenn at Martin for providing a good page on understanding and finding primes.  http://primes.utm.edu/prove/merged.html

```
$ time ./10001st_prime_euler_07.rb

The 6'th prime number is 13.

The 10001'th prime number is 104743.


real  0m0.494s
user  0m0.457s
sys 0m0.020s
```

The first solution takes about 5-6 minutes.  Optimization is needed, such as a non-iterative way of checking for primes.  Time to learn more math.
```
$ time ./10001st_prime_euler_07.rb
#10001 prime = 104743

real  5m32.597s
user  1m2.179s
sys 0m0.761s
```


#### 8. Largest product in a series

This was also very straightforward.  <- original comment

Further investigations:
Refactoring turned up some problems.  The following is copied from
comments in my code:

I do not see how this could work, as the specs say "find the thirteen
 adjacent digits" and this program only appears to find the 5 adjacent
 digits.  I'm awfully sure that the Euler Project site said my answer
 was correct, so I'm reluctant to change this solution until the Euler
 site comes back.  I may give it a try anyway, and keep the solution
 in comments for my own satisfaction.  Here is hoping the Euler site
 can recover and again provide the delightful opportunity for learning
 that it has provided in the past.  June 22, 2014   -sprestage

Ok, new solution implemented and code refactored into methods.  The example
 answer tests out successfully, but I am unable to check the challenge answer.
 my code returns a highest product of 23514624000, but my README shows the
 correct answer was 40824 when I originally solved this and submitted the
 answer to projecteuler.net.  This is the best I can to for a solution,
 unless or until the Euler Project site returns.  June 23, 2014  -sprestage

```
$ time ./largest_product_in_series_euler_08.rb

highest_product = 40824

real  0m0.119s
user  0m0.043s
sys 0m0.014s
```


#### 9. Special Pythagorean triplet

Took me a little time to wrap my head around some of this.  Probably could have done it much faster.  Pre-optimization is the devil.  *sigh*

Later refactoring of this solution to put it into a method turned up some serious cool for me.  I realized that this method was going to need to be tucked inside a class, since I needed to access several pieces of data from within the Pythagorean triplet.  Most importantly, that a, b, & c.  But also, while I was at it, I made it easy to check the sum and product as well.  This was the first refactoring that really called for a class and not just a free standing method, which I found all sorts of interesting in my Ruby and OOP learning process.  -sprestage 6/23/14

```
$ time ./special_Pythagorean_triplet_euler_09.rb

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
```


#### 10. Summation of primes
Used that Sieve of Eratosthenes hash solution from #7 again.
```
$ time ./summation_of_primes_euler_10.rb

sum of primes less than 2000000: 142913828922

real  0m17.364s
user  0m5.554s
sys 0m0.145s
```


#### 11. Largest product in a grid
```
$ time ./largest_product_in_grid_euler_11.rb

biggest product of four = 70600674

real  0m0.153s
user  0m0.039s
sys 0m0.012s
```


#### 13. Large sum
```
$ time ./large_sum_euler_13.rb

full sum = 5537376230390876637302048746832985971773659831892672

first 10 digits of the sum are:
5537376230

real  0m0.060s
user  0m0.036s
sys 0m0.010s
```


#### 14. Longest Collatz sequence
```
$ time ./longest_Collatz_sequence_euler_14.rb

longest_chain_length = 525
longest_source = 837799

real  0m41.295s
user  0m21.559s
sys 0m0.081s
```


#### 16. Power digit sum
```
$ time ./power_digit_sum_euler_16.rb
sum of the digits of x^1000 = 1366

real  0m0.056s
user  0m0.040s
sys 0m0.012s
```


#### 17. Number letter counts
This felt more iterative than I would have preferred.  But that may be the nature of the beast.

```
$ time ./number_letter_counts_euler_17.rb

number_letter_count = 21124

real  0m0.190s
user  0m0.113s
sys 0m0.016s
```


#### 19. Counting Sundays

```
$ time ./counting_sundays_euler_19.rb

There are 171 Sundays that fall on the first of the month.


real  0m1.123s
user  0m0.081s
sys 0m0.022s
```


#### 20. Factorial digit sum

```
$ time ./factorial_digit_sum_euler_20.rb

93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000
648


real  0m0.265s
user  0m0.044s
sys 0m0.014s
```


#### 21. Amicable numbers
```
```


#### 22. Names scores
```
```


#### 23. Non-abundant sums
```
```
