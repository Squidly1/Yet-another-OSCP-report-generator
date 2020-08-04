# Yet-Another-OSCP-Report-Generator

This is my derivative OSCP report generator.  I first heard about this from John Hammond's Youtube channel and set to using it as well, but didn't see how to add images (screenshots FTW).  Some of the supporting docs I found were all over the map when it came to what code to use for successful image inclusion.  Yes you can do it, but we won't provide an example, or here's an example but it won't work with this version, etc etc.  Here's the best source for your markdown questions: https://www.markdownguide.org/basic-syntax/

In short, to add an image into your report with a caption:

! [ caption ADD_CAPTION_HERE ] ( /PATH/TO/YOUR/IMAGE/IMAGE.jpg )

*Note: Remove the extraneous spaces in the above code sample, unless you like frustration.*

That's it.  Just plop that in wherever you need to add an image in your lab_report.md or exam_report.md files and those images will be added to the final PDF version of the report.  The only other thing to note is that the generator will annotate "Figure" and a #.# for each image based on which *section* the image appears in and (to the right of the .) based on however many images are in that same section (it auto-counts for you).  Lastly, please note that attempts to manually add a width setting will be ignored - pandoc will size the image to fit the width of your page automatically.

---

Usages:

./generate_report.sh lab_report.md Lab-Report.pdf

./generate_report.sh exam_report.md Exam-Report.pdf

./package_maker.sh

You can use the generate_report.sh to test out the PDF creation of your edited .md files, and use ./package_maker.sh to auto-generate and compress the lab and exam reports for you.  Note that when using the package_maker.sh you will need to close the PDF viewer to continue on through the script (it pauses after showing each PDF).  As well, I swapped out using evince (John Hammond's original version uses this as his PDF viewer) for atril... for some reason I kept getting a "server" error with evince and got tired of wrestling with it, and atril works well enough.

---

Dependencies:

<code> apt install -y pandoc p7zip texlive-full atril </code>

---

General Notes:

The "lab_report.md" file should be updated as you finalize owning each of the lab machines.  View it in its raw form to see all of the formatting.  Any good text editor can be used to make changes to it.

Test this code out waaaaaay before the exam day!!1!   If this borks it needs to be troubleshot and fixed before the stress of the exam day.

As well, double-check the two reports BEFORE sending them to Offensive Security!  Usage of this script and all associated code used to generate your report does NOT carry any guarantees for perfection or any protections against your report getting borked in the end.

---

Required "Don't Blame ME!":

All of this is provided to assist in minimizing the effort in creating the final documentation required to complete the exam phase of the OSCP.  If this helps you then great, if not... apologies.
