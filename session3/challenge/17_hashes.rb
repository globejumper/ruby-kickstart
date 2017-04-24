# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(head)
  array = []
  current_node = head
  array << current_node[:data]
  while current_node[:next] != nil
    current_node = current_node[:next]
     array<<current_node[:data]
  end
  puts array.reverse
end
