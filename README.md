Marshal + Base64 coder. Usefull for serialize data to db.

    gem 'marshal64'

```ruby    
str = Marshal64.dump(x)
x = Marshal64.load(str)
```

or 

```ruby
str = Marshal64.encode(x)
x = Marshal64.decode(str)
```
