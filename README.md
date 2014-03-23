merge.rb
========

A simple script to merge text files.

Usage: 
			
	ruby merge.rb output.js input1.js input2.js

The first argument defines the output file.

There are two config settings:

	success_msg = 'Files merged.'
	before_file = '/* {filename} */' + "\n\n"

Default adds a /* {filename} */ comment in order to output the files content.	
{filename} is a placeholder for the filename.	