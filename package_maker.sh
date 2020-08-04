#!/bin/bash

# A slightly modded version of John Hammond's script for creating an
# OSCP report package.   Make changes to the path where this script looks for
# the exam_report.md and lab_report.md.

OSID="12345678"  # my OSID, change it to reflect your own number.
DATE=$(date | awk {'print $2_$3_$4'}) # gimmie that date.

EXAM_REPORT="OSCP-OS-$OSID-Exam-Report-$DATE.pdf"
LAB_REPORT="OSCP-OS-$OSID-Lab-Report-$DATE.pdf"
ZIP_PACKAGE="OSCP-OS-$OSID-Exam-Report-$DATE.7z"

echo "Generating exam report...  Close PDF to continue."
./generate_report.sh /home/user/Desktop/Notes/Report/exam_report.md $EXAM_REPORT 

echo "Generating lab report...  Close PDF to continue."
./generate_report.sh /home/user/Desktop/Notes/Report/lab_report.md $LAB_REPORT 

echo "Generating exam report..."
7z a $ZIP_PACKAGE -pOS-$OSID $EXAM_REPORT $LAB_REPORT
