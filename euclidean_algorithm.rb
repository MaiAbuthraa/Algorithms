# Recall that the Greatest Common Divisor (GCD) of two integers A and B is the largest integer that divides both A and B.
# The Euclidean Algorithm is a technique for quickly finding the GCD of two integers.
# The Algorithm
# The Euclidean Algorithm for finding GCD(A,B) is as follows:
# • If A = 0 then GCD(A,B)=B, since the GCD(0,B)=B, and we can stop.  
# • If B = 0 then GCD(A,B)=A, since the GCD(A,0)=A, and we can stop.  
# • Write A in quotient remainder form (A = B⋅Q + R)
# Find GCD(B,R) using the Euclidean Algorithm since GCD(A,B) = GCD(B,R)

puts "Euclidean Algorithm"

def gcd(a, b)

  puts "A: #{a}, B: #{b}:"
  while b != 0
    temp = a
    a = b
    b = temp % b
  end

  return a
end

p gcd(270, 192)
p gcd(100, 20)
p gcd(30, 5)
