# OO Data Normalization Lab

## Objectives

1. Practice formatting data. 
2. Practice associating objects to one another. 
3. Practice creating and writing to files with Ruby. 


## Instructions

This is a test-driven lab. Use the test output and the guidelines below. Refer back to the previous reading, along with the Ruby documentation on Ruby's [File class](http://ruby-doc.org/core-2.2.2/File.html), to help you. 

### Associating Songs and Artists

* Make two classes, `Song` and `Artist`. Songs have an `artist` `attr_accessor` (i.e. setter and getter) method. Artists have a `song` `attr_accessor`. In other words:
  * An individual artist's `song` attribute can be set equal to an instance of the `Song` class. 
  * An individual song's `artist` attribute can be set equal to an instance of the Artist class. 

### Normalizing Data and Writing to Files

The Song class should have a method `#slugify` that sanitizes the file name and saves a new file to the `tmp` folder. 

For instance, if the artist's name is Onerepublic and the song is "Counting Stars", the `slufigy` method should save a file called `counting_stars.txt` to the `tmp` folder. The file should contain the string "Onerepublic - Counting Stars".

* The `slugify` method should:
  * Replace spaces in the song title with underscores and make every character lower case. 
  * **A note on replacing strings in Ruby:** You can the the `.gsub` method to replace content within a Ruby string. For example: 

```ruby
my_string = "Hi, Ruby Learners."
my_string.gsub(".", "!")
=> "Hi, Ruby Learners!"
```
* The `slugify` method should also:
   * Use the slugified version of the title as the name of a new [temporary](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html) text (`.txt`) file and save it in the `tmp/` folder inside the directory of this lab. 
  * Write the name of the artist then the name of the song separated by spaces and a dash (`-`) in the file.

## Example

We have an instance of artist:

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
blank_space.slugify
```

The method should slugify the name of the song and create a new file with that name, so the file looks like this:

`blank_space.txt`

Calling `blank_space.slugify` should then write the following in that new file:

`"Taylor Swift - Blank Space"`
## Tempfiles

To create a new `Tempfile`, call `Tempfile.new` with two arguments – a two-element array of the file name and file extension, and the name of the folder in which the temporary file should live. For example:

```ruby
file = Tempfile.new(["dog", ".txt"], "tmp")
file.write("I am a dog!")
file.close
```

## Resources
* [Ruby Docs](http://www.ruby-doc.org/) - [TempFile](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html)

* [Alvin Alexander's Blog](http://alvinalexander.com/) - [How to Write Text to a File in Ruby](http://alvinalexander.com/blog/post/ruby/how-write-text-to-file-ruby-example)
