#New Ticket transition to in Review
Get-JiraIssue -Key CR-3967 | Invoke-JiraIssueTransition -Transition 11

#this would move a ticket to ready for approval but it requires yet undiscoverd custom fields first filled out
 Get-JiraIssue -Key CR-3967 | Invoke-JiraIssueTransition -Transition 41

 #set a ticket to complete if it is currently in approved state
 Get-JiraIssue -Key CR-3967 | Invoke-JiraIssueTransition -Transition 81 

#Show "transitions" aka what you can do with a ticket based on its current status

Get-JiraIssue -Key CR-3967 | Select-Object -ExpandProperty Transition

#grab comments from api - you can edit the CR-XXXX format to grab tickets

https://servicedesk.boozallencsn.com/rest/api/2/issue/CR-3967/comment/

"id":"158648" #each comment has a json ID that can be tacked on the end to access it

#returns only that comment
https://servicedesk.boozallencsn.com/rest/api/2/issue/CR-3967/comment/158648
