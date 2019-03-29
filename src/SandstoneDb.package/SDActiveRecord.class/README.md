I'm the core of a simple object database based upon a mix of several patterns intended for use with *small* Seaside based web applications.  I am not meant to scale to millions of records, just tens of thousands, but for prototyping and small office applications where the number of records are in the thousands and the number of concurrent users can be handled by a single Squeak image.  To use me, simply subclass me and restart your image that's it.  

For more information see http://onsmalltalk.com/programming/smalltalk/sandstonedb-simple-activerecord-style-persistence-in-squeak/
