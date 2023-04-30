
# Digital Logic 


- [Computations](#computations)
- [Binary System](#binary-system)
- [Take a Byte](#take-a-byte)
- [Character Encoding](#character-encoding)
- [ASCII](#ascii)
- [UTF 8](#utf-8)
- [RGB](#rgb)
- [Next Steps](#next-steps)


## Computations 

Let's look at this simple math problem. 0 +1 equals what? It only takes a moment to come up with the answer 1, but imagine that you needed to do 100 calculations that were this simple. 

You could do it, and if you were careful, you might not make any mistakes. Well, what if you needed to do 1,000 of these calculations? 

How about 1 million? How about 1 billion? This is exactly what a computer does. 

## Binary System 

A computer simply compares 1s and 0s, but millions or billions of times per second. The communication that a computer uses is referred to as binary system, also known as base-2 numeral system. 

This means that it only talks in 1s and 0s. Okay, so how do I communicate with it? Think of it like this. We use the letters of the alphabet to form words and we give those words meaning. 

We use them to create sentences, paragraphs, and whole stories. The same thing applies to binary, except instead of A, B, C, and so on, we only have 0 and 1 to create words that we give meaning to. 

In computing terms, we group binary into 8 numbers, or bits. Technically, a bit is a binary digit. 

Historically, we used 8 bits because in the early days of computing, hardware utilized the base-2 numeral system to move bits around. 2 to the 8th numbers offered us a large enough range of values to do the computing we needed. 

## Take a Byte 

Back then, any number of bits was used, but eventually the grouping of 8 bits became the industry standard that we use today. You should know that a group of 8 bits is referred to as a byte. So a byte of zeroes and ones could look like 10011011. 

Each byte can store one character, and we can have 256 possible values, thanks to the base-2 system, 2 to the 8th. In computer talk, this byte could mean something like the letter C.

What does the following translate to?

> 01101000  01100101  01101100  01101100   01101111

You can try to convert it if you're already familiar on how binary conversion works, or we could also just plug it in an [online converter](https://www.rapidtables.com/convert/number/binary-to-ascii.html). This should translate to:

> hello 

By using binary, we can have unlimited communication with our computer. Everything you see on your computer right now, whether it's a video, an image, text or anything else, is nothing more than a 1 or a 0. 

## Character Encoding 

Character encoding is used to assign our binary values to characters so that we as humans can read them. We definitely wouldn't want to see all the text in our emails and Web pages rendered in complex sequences of zeros and ones. This is where character encodings come in handy. 

You can think of character encoding as a dictionary. It's a way for your computers to look up which human characters should be represented by a given binary value. 


## ASCII 

The oldest character encoding standard used is ASCII. It represents the English alphabet, digits, and punctuation marks. The first character in ASCII to binary table, a lowercase a, maps to 0 1 1 0 0 0 0 1 in binary. 

This is done for all the characters you can find in the English alphabet as well as numbers and some special symbols. The great thing with ASCII was that we only needed to use 127 values out of our possible 256. 

It lasted for a very long time, but eventually it wasn't enough. Other character encoding standards recreated to represent different languages, different amounts of characters and more. Eventually they would require more than 256 values we were allowed to have. 

## UTF 8 

Then came UTF 8. The most prevalent encoding standard used today. Along with having the same ASCII table, it also lets us use a variable number of bytes. 

Think of any emoji. It's not possible to make emojis with a single byte, so as we can only store one character in a byte, instead UTF 8 allows us to store a character in more than one byte, which means endless emoji fun. 

UTF 8 is built off the Unicode Standard. The Unicode Standard helps us represent character encoding in a consistent manner. 

## RGB 

Now that we've been able to represent letters, numbers, punctuation marks and even emojis, how do we represent color? Well, there are all kinds of color models. 

The basic one that's used in a lot of computers is RGB, or red, green, and blue model. Just like the actual colors, if you mix a combination of any of these, you'll be able to get the full range of colors. 

In computerland, we use 3 characters for the RGB model. Each character represents a shade of the color and that then changes the color of the pixel you see on your screen. 

With just eight combinations of zeros and ones, we're able to represent everything that you see on your computer, from a simple letter a, to basically any video you're watching in Youtube. Very cool. 


## Next Steps 

Learn how binary works in the [next page](025-Binary.md).
