=begin

P
===
  Write a simpled linked list implementation. The elements may contain a range of data such as the numbers 1-10.
  Provide a method to reverse the linked list.
  Provide a method to convert the linked list to an Array.
  Provide a method to convert an Array to a linked list.
  
  The linked list is fundamental in computer science, and is often used in the implementation of other data structures.
  Ths singly-linked list is the simplest variant, where each element contains data and a field, `next`, pointing to the next element. This variant is often used to represent sequences or push-down stacks (LIFO).
  
E
===

DS
===
>> Element Class
  > Element#intitialize(datum, next = nil)
  > Element#datum
  > Element#tail?
  > Element#next

>> SimpleLinkedList Class
  > #initialize
    + @list = []
  > #size
    + @list.size
  > #empty?
    + @list.empty?
  > #push(el)
    + append `el` to @list
    + reassign previous element's `next` field to point to `el`
  > #peek
    + return datum of first element in `@list`?
  > #head
    + return first element in `@list`?
  > #pop
    + remove and return last item in `@list`
  > #to_a
    - transform `@list` to generate list of datums and return 
  > #reverse
    + need to reverse Elements && their `next`s
      - init new SimpleLinkedList
      - transform reverse `@list` to generate New Elems
        - create New Element with current datum and Elem at next index position
      - return SimpleLinkedList
  > ::from_a(list)
    + return `nil` if `list` is not an Array
    + init new SimpleLinkedList
    + transform `list` into Array of datums for SimpleLinkedList/
      - iterate over all elements
        - create New Element
        - datum is current Array element
      - iterate over New Elements
        - `next` is to current element
      - return SimpleLinkedList


NOTES
=====
>> Element
  + each element contains (1) datum
  + each element contains `next` field`
    - for Integers, can use #succ
    - or use class Variable to track most recent element?

>> SimpleLinkedList
  + similar to and built on Array Class?
  + 

=end

class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(datum, next_el = nil)
    @datum = datum
    @next = next_el
  end

  def tail?
    self.next.nil?
  end

end

# el1 = Element.new(1)
# p el1.datum
# p el1.next
# el2 = Element.new(2, el1)
# p el2.datum
# p el2.next == el1

class SimpleLinkedList
  attr_accessor :head
  attr_reader :list

  def initialize
    @list = []
  end

  def size
    # iterate over Elements increment count by `1` for each
    size = 0
    current_el = @head
    while current_el
      size += 1
      current_el = current_el.next
    end
    size
  end

  def empty?
    @head.nil?
  end

  def push(new_datum)
    new_el = Element.new(new_datum, @head)
    @head = new_el
  end


  def peek
    @head.datum if @head
  end

  def pop
    datum = peek
    new_head = @head.next
    @head = new_head
    datum
  end

  def to_a
    array = []
    current_el = head
    while !current_el.nil?
      array.push(current_el.datum)
      current_el = current_el.next
    end
    array
  end

  def reverse
    reverse_list = SimpleLinkedList.new
    current_el = head
    while !current_el.nil?
      reverse_list.push(current_el.datum)
      current_el = current_el.next
    end
    reverse_list
  end

  def self.from_a(arr)
    arr = [] if arr.nil?

    new_list = SimpleLinkedList.new
    arr.reverse.each { |val| new_list.push(val)}
    new_list
  end

end

# new_list = SimpleLinkedList.new
# new_list.push(1)
# new_list.push(2)
# p new_list.head.next.datum
# p new_list.to_a
# p SimpleLinkedList.from_a([1, 2])#.to_a

# list = SimpleLinkedList.new
# (1..10).each do |datum|
#   list.push(datum)
# end
# p list.size
# p list.peek