-- Write a function called ends_in_3(num) that returns true
-- if the final digit of num is 3, and false otherwise.
function ends_in_3(num)
  l = string.len(tostring(num))
  return string.sub(num, l, l) == "3"
end
--
-- print(ends_in_3(0))
-- print(ends_in_3(3))
-- print(ends_in_3(123))
-- print(ends_in_3(332))

-- Now, write a similar function called is_prime(num) to test
-- if a number is prime (that is, it’s divisible only by itself and 1).
function is_prime(num)
  count = 0
  divisor = num
  while divisor > 0 and count < 3 do
    if num % divisor == 0 then
      count = count + 1
      divisor = divisor - 1
    else
      divisor = divisor - 1
    end
  end
  if count == 2 then
    return true
  else
    return false
  end
end

-- print(is_prime(3))

-- for i=1, 9 do
--   print(is_prime(i))
--   i = i + 1
-- end

-- Create a program to print the first n prime numbers that end in 3.
function primes_ending_with_3(n)
  if ends_in_3(n) then
    if is_prime(n) then
      return true
    else
      return false
    end
  else
    return false
  end
end

print(primes_ending_with_3(3))
print(primes_ending_with_3(13))
print(primes_ending_with_3(7))
print(primes_ending_with_3(3333))
