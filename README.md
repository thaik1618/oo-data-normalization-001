# OO Data Normalization

![floppy disk](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/oo-labs/floppy-disk.png)

## Objectives

Make two classes, Song and Artist. The Song class should have a method `#serialize` that saves a new file to the `tmp` folder. For instance, if the artist's name is Onerepublic and the song is "Counting Stars", the serialize method should save a file called `counting_stars.txt` to the `tmp` folder. The file should contain the string "Onerepublic - Counting Stars".

## Instructions

* Implement a song class and an artist class. Look at the specs or run your testing suite to see what the classes should look like.
* Write a `serialize` method in the song class that:
  * Replaces spaces in the song title with underscores and makes every character lower case.
  * Uses this serialized version of the title as the name of a new [temporary](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html) text (`.txt`) file and saves it in the `tmp/` folder. 
  * Writes the name of the artist then the name of the song separated by spaces and a dash (`-`) in the file.

## Example

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

The method should serialize the name of the song and create a new file with that name, so the file looks like this:

`blank_space.txt`

Calling `blank_space.serialize` should then write the following in that new file:

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
