# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:  2d[x[-5]  2d[x[-4]2d[x[-3]2d[x[-2]2d[x[-1]
# two_d = [ 2d[x[0]]  2d[x[1] 2d[x[2] 2d[x[3] 2d[x[4]
#  two_d[0] = [ 1,      2,      3,      4,      5],         first go 2d[1[(0..self.length)]]
#  two_d[1] = [16,      17,     18,     19,     6],         then  go 2d[0[-1]]..[self.length[-1]]
#  two_d[2] = [15,      24,     25,     20,     7],
#  two_d[3] = [14,      23,     22,     21,     8],
#  two_d[4] = [13,      12,     11,     10,     9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access([arr,&block,direction="right")
  def spiral_access(arr, &block, x=0, y=0, direction="right")
# start by walking right
# if we hit the right boundary, we start walking down
#  a[1] a[2] a[3] b[-1] c[-1] c[-2] c[-3] b[1] b[2]

  # if we walk through the zeroeth array(0..array.length), then we walk the last values of arrays 1..#ofarrays
  #then we walk backwards in the last array then walk upwards (#ofarrays..1)
  # then we walk
  #how do you know not to walk the first array?
  #increment a counter by 1 of
  walk[x[y]]


  walk x[y]




  # One iteration is top right bottom left
  # on each iteration, you go one less on the x axis and one less on the y axis
  # when your iteration number and your array match, you've reached the middle?
