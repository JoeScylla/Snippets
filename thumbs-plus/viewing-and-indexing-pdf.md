#Viewing and indexing PDF files#

You can use ThumbsPlus to thumbnail, view, convert, print and manage your .PDF files, as well as 
many other files from the Postscript family such as .PS, .EPS and .AI. However, this is not enabled 
by default.

Using these file types requires an open-source program named Ghostscript that is not included with 
the ThumbsPlus installation files. Getting it to work is easy though:

- If you do not already have it on your system, download and install the latest 32-bit 
  [Ghostscript for Windows](http://www.ghostscript.com/download/gsdnld.html)
- In ThumbsPlus, go to the settings for its Ghostscript plug-in (menu: Options | Ghostscript 
  PS/EPS/PDF) and set the full path to gsdll32.dll (which is part of Ghostscript that you just 
  installed). For example, `C:\Program Files\gs\gs8.64\bin\gsdll32.dll`, but on your system it may 
  well be installed elsewhere. You can also set some other options here, such as the resolution at 
  which you want to view and print your PDFs.
- Still in ThumbsPlus, go to the filetype definitions for PDF files. There are two ways to get 
  there: You can simply right-click on a PDF file and choose "configure type" from the context 
  menu, or you go to Options | Preferences | File Types, where you will find PDF in the Document 
  category. Select it and press Edit, then set these values for the PDF filetype:

		Equivalent to: (none)
		Category: Document
		Class: Raster
		Load file using: Cerious Plug-in >> Plug_gs.tpp

When done, close the dialog(s) and from now on, you can view PDF files with a simple double-click 
or `Enter`

**Notes:**

- When you open a PDF file in the viewer, it is converted into a bitmap image. You can edit it to 
  your heart's content, but it can only be saved in a regular bitmap image format such as TIF, BMP, 
  PNG or JPG.
- If you want to view and manage .ps, .eps or .ai files as well, you can simply set up those file 
  types as 'equivalent to: PDF'. Note that most but not all files of these types can be opened 
  through Ghostscript. (Or you can make separate file type definitions for them with the same 
  settings as above. The benefit of separate definitions is that you can also specify an external 
  editor for them, for instance so you can press Shift-Enter on an .AI file and have it open 
  automatically in Adobe Illustrator).