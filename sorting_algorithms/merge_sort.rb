require 'pry-byebug'

def merge_sort(arr)
  puts "_________ #{arr}"
  array_size = arr.size

  return arr unless array_size > 1

  mid = array_size/2
  a, b, sorted = merge_sort(arr[0...mid]), merge_sort(arr[mid..-1]), []

  puts ">>> a #{a}"
  puts ">>> b #{b}"
  puts ">>> sorted #{sorted}"

  sorted << (a[0] < b[0] ? a.shift : b.shift) while [a,b].none?(&:empty?)
  sorted + a + b
end

puts merge_sort([4, 92, 1, 39, 19, 93, 49, 10])
