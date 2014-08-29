---
  tags: todo, serialization, oop
  languages: ruby
  resources: 3
---

# Serialization

## Objectives
* Implement a song class and an artist class. Look at the specs or run `rspec` to see what the classes should look like.
* Write a `serialize` method in the song class that:
  * Replaces spaces in the song title with underscores and makes every character lower case.
  * Uses this serialized version of the title as the name of a new [temporary](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html) text (`.txt`) file and saves it in the `tmp/` folder. 
  * Writes the name of the artist then the name of the song separated by spaces and a dash (`-`) in the file.

## Resources
* [Ruby Docs](http://www.ruby-doc.org/) - [TempFile](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html)
* [Sandi Metz's Practical Object-Oriented Design in Ruby: An Agile Primer](http://books.flatironschool.com/books/102) - [Chapters 1 and 2](http://books.flatironschool.com/books/102?page=48), page 26
* [Alvin Alexander's Blog](http://alvinalexander.com/) - [How to Write Text to a File in Ruby](http://alvinalexander.com/blog/post/ruby/how-write-text-to-file-ruby-example)