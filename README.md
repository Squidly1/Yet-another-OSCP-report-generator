# Yet-Another-OSCP-Report-Generator

This is my derivative OSCP report generator.  I first heard about this from John Hammond's Youtube channel and set to using it as well, but didn't see how to add images (screenshots FTW).  Some of the supporting docs I found were all over the map when it came to what code to use for successful image inclusion.  Yes you can do it, but we won't provide an example, or here's an example but it won't work with this version, etc etc.  Here's the best source for your markdown questions: https://www.markdownguide.org/basic-syntax/

In short, to add an image into your report with a caption:

! [ caption ADD_CAPTION_HERE ] ( /PATH/TO/YOUR/IMAGE/IMAGE.jpg )

That's it.  Just plop that in wherever you need to add an image in your lab_report.md or exam_report.md files and those images will be added to the final PDF version of the report.  The only other thing to note is that the generator will annotate "Figure" and a #.# for each image based on which *section* the image appears in and (to the right of the .) based on however many images are in that same section (it auto-counts for you).  Lastly, please note that attempts to manually add a width setting will be ignored - pandoc will size the image to fit the width of your page automatically.

