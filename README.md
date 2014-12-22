---
  tags: todo, serialization, oop
  languages: ruby
  resources: 3
---

# OO Data Normalization

## Objectives

* Implement a song class and an artist class. Look at the specs or run `rspec` to see what the classes should look like.
* Write a `serialize` method in the song class that:
  * Replaces spaces in the song title with underscores and makes every character lower case.
  * Uses this serialized version of the title as the name of a new [temporary](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html) text (`.txt`) file and saves it in the `tmp/` folder. 
  * Writes the name of the artist then the name of the song separated by spaces and a dash (`-`) in the file.

So if we have an instance of Artist, and it has a name:

```ruby
taylor_swift = Artist.new("Taylor Swift")
```

And if we associate it with an instance of Song:

```ruby
blank_space = Song.new("Blank Space")
blank_space.artist = taylor_swift
```

If we call:

```ruby
blank_space.serialize
```

The method should sanitize the name of the song and create a new file with that name, so the file looks like this:

`blank_space.txt`

Calling `blank_space.serialize` should then write the following in that new file:

`"Taylor Swift - Blank Space"`

## Resources
* [Ruby Docs](http://www.ruby-doc.org/) - [TempFile](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html)
* [Sandi Metz's Practical Object-Oriented Design in Ruby: An Agile Primer](http://books.flatironschool.com/books/102) - [Chapters 1 and 2](http://books.flatironschool.com/books/102?page=48), page 26
* [Alvin Alexander's Blog](http://alvinalexander.com/) - [How to Write Text to a File in Ruby](http://alvinalexander.com/blog/post/ruby/how-write-text-to-file-ruby-example)
