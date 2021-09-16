:symbol # A Symbol literal
:"symbol" # The same literal
:'another long symbol' # Quotes are useful for symbols with spaces
s = "string"
sym = :"#{s}" # The Symbol :string

o = [1,2,3,5]
# Symbols are often used to refer to method names in reflective code. For example,
# suppose we want to know if some object has an each method:
p o.respond_to? :each
# Here’s another example. It tests whether a given object responds to a specified method,
# and, if so, invokes that method:
name = :size
if o.respond_to? name
p o.send(name)
end

str = "string" # Begin with a string
sym = str.intern # Convert to a symbol
sym = str.to_sym # Another way to do the same thing
str = sym.to_s # Convert back to a string
str = sym.id2name # Another way to do it


# Two distinct Symbol objects will always have different
# content.

# Comparing two Symbol objects for
# equality is much faster than comparing two strings for equality. For this reason, symbols
# are generally preferred to strings as hash keys.
#e.g
"AM" == "PM" #is slow as strings are mutable and core ruby checks each and every char in string
:AM == :PM #is fast as symbols are immutable