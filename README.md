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
