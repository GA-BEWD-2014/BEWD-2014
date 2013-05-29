# Exceptions

!SLIDE

# Bad things happen to good people

!SLIDE

# This is unfortunate

``` ruby
File.open('a_file_that_is_unfortunately_not_there')
# => Errno::ENOENT: No such file or directory - a_file_that_is_unfortunately_not_there
# Your program stops
# you get fired
```

!SLIDE

# Win!

``` ruby
begin
  File.open('a_file_that_is_unfortunately_not_there')
rescue
  puts "Your file can not be found"
  # Still employed
end
```

!SLIDE
# rescue

!SLIDE
# rescue specific errors
``` ruby
begin
  File.open('a_file_that_is_unfortunately_not_there')
rescue Errno::ENOENT
  puts "Your file can not be found"
  # Still employed
end
```
!SLIDE
# get more info
``` ruby
begin
  File.open('a_file_that_is_unfortunately_not_there')
rescue Errno::ENOENT => e
  puts "Your file can not be found"
  puts e.message
  # Still employed
end
# No such file or directory - a_file_that_is_unfortunately_not_there
```

!SLIDE
# begin rescue end not needed if in a method
``` ruby
def gonna_fail
  File.open('a_file_that_is_unfortunately_not_there')
rescue
  puts "Your file can not be found"
  # Still employed
end

gonna_fail

```
