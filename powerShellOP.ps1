#Script: Ops 201 Class 09 Ops Challenge Solution
#Author: Cameron Griffin
#Date of latest revision: 11-17-2022
#Purpose: an informational powershell script

#Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
$EventLog=Get-EventLog -list

$EventLog>C:\cam\desktop\LogText.txt

#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
$EventLog -LogName "Application" -EntryType Error

#Print to the screen all events with ID of 16 from the System event log.
write-out $EventLog | get-id 16

#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
$EventLog>C:\cam\desktop\LogText.txt "application" -EntryType Error

#Print to the screen the most recent 20 entries from the System event log.’
write-out $EventLog -tail 20

#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
write-out $EventLog -count 500
