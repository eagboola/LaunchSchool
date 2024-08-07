=begin

P
===
  Create a custom `Set` type.
  This `Set` will behave like a set of unique elements that can be manipulated in several well-defined ways.
  Assume that all elements of a `Set` must be numbers (Integers?).
  Do not use the built-in Ruby `Set` Class.


E
===

DS
====
> CustomSet
  + CustomSet#initialize(set = [])
    - can instantiate with or without arguments
    - instantiation argument is an Array
  + CustomSet#empty?
    - `true` if no values within
    - `false` otherwise
  + CustomSet#contains?(value)
    - `true` if `value` present within
    - `false` otherwise
  + CustomSet#subset?(other_set)
    - return `true` if caller is a subset of argument -- `Caller Set` can be made from part or whole `Argument Set`
  + CustomSet#disjoint?(other_set)
    - return `true` if no values from `Caller Set` present in `Argument Set`
  + CustomSet#eql?(other_set)
    - return `true` if Sets are value equivalent
      - same number of items with same values
      - order is not important
  + CustomSet#add(value)
    - append `value` to `Caller Set`
  + CustomSet#intersection(other_set)
    - return `Set` containing values present in both Sets
    - if no intersecting values, return empty new Set
    - always returns `Set` object
  + CustomSet#difference(other_set)
    - return `Set` containing values from CallerSet that are NOT present in Argument Set
    - always returns `Set` object
  + CustomSet#union(other_set)
    - return `Set` containing values from both `Caller` and `Argument` Sets
    - always returns `Set` object


NOTES
=====
  + this Class makes use of Arrays
  + all values are to be unique -- no duplicates

ALGORITHM
=========

=end

class CustomSet
  attr_accessor :set
# + CustomSet#initialize(set = [])
#   - can instantiate with or without arguments
#   - instantiation argument is an Array
#   - all elements are unique -- no duplicates
  def initialize(set = [])
    @set = set.uniq.sort
  end

# + CustomSet#empty?
#   - `true` if no values within
#   - `false` otherwise
  def empty?
    set.empty?
  end

# + CustomSet#contains?(value)
#   - `true` if `value` present within
#   - `false` otherwise
  def contains?(value)
    set.one?(value)
  end

# + CustomSet#subset?(other_set)
#   - return `true` if caller is a subset of argument -- `Caller Set` can be made from part or whole `Argument Set`

  def subset?(other_set)
    set.each do |val|
      return false unless other_set.set.include?(val)
    end
    return true
  end

# + CustomSet#disjoint?(other_set)
#   - return `true` if no values from `Caller Set` present in `Argument Set`
  def disjoint?(other_set)
    set.each do |val|
      return false if other_set.set.include?(val)
    end
    
    return true
  end

  def length
    set.length
  end

# + CustomSet#eql?(other_set)
#   - return `true` if Sets are value equivalent
#     - same number of items with same values
#     - order is not important
  def eql?(other_set)
    return false unless set.length == other_set.set.length
    set.all? {|val| other_set.contains?(val)}
  end

  def ==(other_set)
    eql?(other_set)
  end

# + CustomSet#add(value)
#   - append `value` to `Caller Set`
  def add(val)
    set.push(val)
    # @set = set.uniq
    CustomSet.new(set + [val]) 
  end

# + CustomSet#intersection(other_set)
#   - return `Set` containing values present in both Sets
#   - if no intersecting values, return empty new Set
#   - always returns `Set` object
  def intersection(other_set)
    intersect = set.select {|val| other_set.set.include?(val)}
    CustomSet.new(intersect)
  end

# + CustomSet#difference(other_set)
#   - return `Set` containing values from CallerSet that are NOT present in Argument Set
#   - always returns `Set` object
  def difference(other_set)
    diff = set.reject {|val| other_set.set.include?(val)}
    CustomSet.new(diff)
  end

# + CustomSet#union(other_set)
#   - return `Set` containing values from both `Caller` and `Argument` Sets
#   - always returns `Set` object
  def union(other_set)
    CustomSet.new(set + other_set.set)
  end

end