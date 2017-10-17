#Speeding up image loading#

ThumbsPlus v7 has a built-in "Private Virtual Memory" manager that, when you load a largish image, 
first decodes the image to a temporary file before the image data is loaded into memory. Basically, 
this was useful when computers didn't have several gigabytes of RAM, but for most users it no 
longer is today, and the process can really slow things down (particularly if the PVM manager picks 
a slow drive for its temp files, or even a sleeping external drive, only because it has the most 
disk space left).

I'm not sure about the filesize at which this PVM kicks in by default, but I believe it's around 
4 MB (may also be 12 MB). With many of today's digital cameras cranking out larger JPGs, this means 
that on most systems, ThumbsPlus 7 isn't working as fast as it can!

To disable PVM, exit ThumbsPlus, locate your thumbs.ini configuration file and open it in notepad. 
Add this section to it:

		[Virtualmemory]
		Minalloc=0

Save the file and launch TP, then open some larger JPGs to see if things work faster now.

P.S. Of course, PVM may still be useful for those who work with very large images, e.g. stitched 
panoramas and hi-res scans, or those whose systems have little RAM. To tweak PVM behavior according 
to your own needs, these are the relevant settings in thumbs.ini:

		[VirtualMemory]
		Drives=(path to scratch folder);(path to another);...

This defines the paths where TP7 may create the temporary files. Extremely useful if it is currently 
using a sleeping external drive, or even a drive to which you have no write access!)

Example:

		[VirtualMemory]
		Drives=E:\temp;C:\temp


You can also set the minimum allocation unit for which T+ will allocate private file space:

		[VirtualMemory]
		MinAlloc=(minimum KB for private allocation)

Example:

			MinAlloc=0

This would disable PVM. Otherwise, use a multiple of 1024.