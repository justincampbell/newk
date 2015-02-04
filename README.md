# Newk

Remove the need for `.new` in Ruby. You should probably never use this.

## Newk a class

```rb
class Animal
  def initialize(type)
    @type = type
  end
end

require 'newk'
Newk.newk Animal

Animal(:cat) # => #<Animal:0x007ff0992b3ea0 @type=:cat>
```

## Newk everything

```rb
class Animal
  def initialize(type)
    @type = type
  end
end

require 'newk/everything'

Animal(:cat) # => #<Animal:0x007ff0992b3ea0 @type=:cat>
```

## ...even in the future

```rb
require 'newk/everything'

class Animal
  def initialize(type)
    @type = type
  end
end

Animal(:cat) # => #<Animal:0x007ff0992b3ea0 @type=:cat>
```

# Why?!

Because I was working through the fantastic book [Understanding Computation](), and was making nested expressions with classes/structs:

```rb
Machine.new(
  Add.new(
    Multiply.new(Number.new(1), Number.new(2)),
    Multiply.new(Number.new(3), Number.new(4))
  )
)
```

I thought it would look better like:

```rb
Machine(
  Add(
    Multiply(Number(1), Number(2)),
    Multiply(Number(3), Number(4))
  )
)
```
