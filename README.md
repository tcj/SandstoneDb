# SandstoneDb
FileTree and Metacello version of [Ramon Leon's SandstoneDb](http://onsmalltalk.com/programming/smalltalk/sandstonedb-simple-activerecord-style-persistence-in-squeak/).

## History of this repo

SandstoneDb has been [available via SqueakSource](http://squeaksource.com/SandstoneDb.html).  At Camp Smalltalk 2019, [Dale Henrichs](https://github.com/dalehenrich/) graciously helped me make this available in FileTree/Metacello format with the author's permission.  That is this repo.

From the class comment of `SDActiveRecord`:

>I'm the core of a simple object database based upon a mix of several patterns intended for use with *small* Seaside based web applications.  I am not meant to scale to millions of records, just tens of thousands, but for prototyping and small office applications where the number of records are in the thousands and the number of concurrent users can be handled by a single Squeak image.  To use me, simply subclass me and restart your image that's it.

### Platforms

I have tested this in [Squeak](https://squeak.org) 5.2.

The baseline is intended to also support Pharo, but I have not tested it.

### Installing

I am in the habit of cloning GitHub projects outside of Squeak and then adding FileTree repos manually.  If you do the same, you can adapt the following code to your own local directory tree:

```Smalltalk
Metacello new 
	baseline: 'SandstoneDb';
	repository: 'filetree://Users/yournamehere/src/SandstoneDb/src';
	load
```

In the future, the following may also work, without needing to clone the repo first:

```Smalltalk
Metacello new 
        baseline: 'SandstoneDb';
        repository: 'github://tcj/SandstoneDb:master/src';
        load
```

## License

Code commited to this repository will be automatically under [MIT](http://www.opensource.org/licenses/mit-license.php) license.

## Acknowledgments

* [Camp Smalltalk 2019](https://twitter.com/campsmalltalkna) and its hosts and sponsors
* [Dale Henrichs](https://github.com/dalehenrich) - for Metacello training
* [Ramon Leon](http://onsmalltalk.com/) - for SandstoneDb and allowing this adaptation of the SqueakSource repo





