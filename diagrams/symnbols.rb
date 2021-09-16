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