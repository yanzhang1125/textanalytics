
####1 just one quatation mark
print(""")

#use \ to escape something
print("\"")

print('"')

cat("\"")

#change line
cat("ab\ncd")

#t is tab
cat("a\tb\nc\td")

####2

#use another \ to escape
cat(":-\\")

cat("(^_^\")")

cat("@_'-'")

cat("\\M/")

###3
library(stringr)
?str_locate
?str_sub #extract. if want to replace, just save the value in it

###4

str_locate(string = "great", pattern = "a")

list = c("great", "fantastic", "super")

str_locate(string = list, pattern = "a")

#fantatic only locate one
#str_locate only tells one character, str_locate_all shows all
str_locate_all(string = list, pattern = "a")

occurance = str_locate_all(string = list, pattern = "a")


###list
occurance[1]

##occurance[1,1] doesnt work, since it is a list

occurance[[1]]
occurance[[1]][1]



###5

str_sub(string = "testing", start = 1, end = 3)
#no need to specify start if from beginning since its default


str_sub(string = "testing", end = 3)


str_sub(string = "testing", 4)
#don't need to specify end if need end
#or
str_sub(string = "testing", 4, end = str_length("testing"))
str_sub(string = "testing", 4, end = nchar("testing"))
# so you don't need to count manually

#length is counting the lenghth of vector


str_sub("testing",
        start = 1, end = 4)


###6
input = c("abc", "defg")
str_sub(input, c(2,3))
#first element start from 2, second from 3
#default  is start

#
emails = readRDS("email.rds")
#RDA allows you to see variables
#RDS more compressed
#It's not a dataframe, it's just a list of emails

#not formatted first email
emails[1]

#organize it
cat(emails[1])

cat(emails[10]) #has phone

#split header and body
#cat: takes text
#cat organize things

####7

str_locate(emails[1],
           pattern = "\n")
#this does not work
#\n is a new line

str_locate(emails[1],
           pattern = "\n\n")
#patter: start a new line and did not type anything
#842 characters


###8

#header
header1 = str_sub(emails[1],end = 842)
#up to you to decide the end, to put the lines in the body or header

#body
body1 = str_sub(emails[1],843)






