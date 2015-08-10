# OO Data Normalization

## Objectives

1. Understand why we as programmers need to manipulate and format data.
2. Practice formatting data. 
3. Introduce the topic of object relations. 
4. Learn about writing data to files using Ruby. 

## Data Normalization

As programmers, it's our job to deliver information to people. We are being entrusted with an enormous responsibility––to handle people's data (whether it's videos, music, insurance information, pictures of cats, etc.) and deliver it to them in a clean, sensical manner. One very common action that you'll likely facilitate as a programmer is that of downloading files, such as audio files. Normal people like their files titled in normal ways. `artistSongxy1288304` doesn't mean anything to the muggles (non-progammers) of the world. In this lab, we'll be taking file names, normalizing them and writing their contents to a file in a `tmp` folder. 

## Writing Data to Files in Ruby

Ruby makes it easy to write data to a file. Ruby has a built-in [File class](http://ruby-doc.org/core-2.2.2/File.html). You can create new temporary files using: 

`Tempfile.new`

The `.new` method can take in a number of arguments. The first argument is an array. The first element of that array is the file name and the second argument of the array is the file extension/type. The second argument is the desired location of the file. Let's take a look: 

`Tempfile.new(["my_new_file", ".txt"], "desktop/my_aswesome_folder")`


f = Tempfile.new(["#{new_title}", ".txt"], "tmp")
    f.write("#{self.artist.name} - #{self.title}")
    f.close

## Instructions

This is a test-driven lab. Use the test output and the guidelines below.

* Make two classes, Song and Artist. The Song class should have a method `#slugify` that sanitized the file name and saves a new file to the `tmp` folder. For instance, if the artist's name is Onerepublic and the song is "Counting Stars", the `slufigy` method should save a file called `counting_stars.txt` to the `tmp` folder. The file should contain the string "Onerepublic - Counting Stars".

* The `slugify` method should:
  * Replace spaces in the song title with underscores and makes every character lower case. 
  * Uses this slugified version of the title as the name of a new [temporary](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/tempfile/rdoc/Tempfile.html) text (`.txt`) file and saves it in the `tmp/` folder. 
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
