library(readr)
library(readxl)
library(dplyr)
library(roperators)
library(stringr)
songdata = read.csv("taylor_swift_lyrics.csv")
View(songdata)

#Find percentage of country and romance words for each song
#Find ratio of romance words to country words for each song
#Plot song ratio vs year of release
#Plot average ratio of songs aggregated by album

#Group of country and romance words we want to assess, work in progress
#country = c("Truck", "Tractor", "Beer", "Jean", "Car", "Guitar")
#romance = c("Love", "Heart", "Kiss", "Stay", "Leave")

#country words from reddit doc, excluding love
country2 = "\\bjust\\b|\\bknow|\\bain't\\b|\\byeah\\b|\\bback\\b|\\btime\\b|\\bnever\\b|\\bgonna\\b|\\bbaby\\b|\\blittle\\b|\\bgood\\b|\\bnight|\\bgirl|\\bright\\b|\\bhear|\\bwanna\\b|\\bold\\b|\\blong\\b|\\bwant|\\bstill\\b|\\bcause\\b|\\bman\\b|\\bhome\\b|\\baway\\b|\\bday|\\blife\\b|\\bneed|\\bthink|\\bfeel"

#romance words from our own list
romance2 = "\\bkiss|\\blov|\\bheart|\\bhand|\\bhug|\\bboyfriend\\b|\\bgirlfriend\\b|\\bbaby\\b|\\bhold\\b|\\bgirl|\\bboy|\\bman\\b|\\bstay|\\bleav|\\blife\\b|\\bdream|\\bliv"


by_song <- function(songdata){
  song <- data.frame(song_name=unique(songdata$track_title), lyrics=character(94),stringsAsFactors=FALSE)
  song_names<-unique(songdata$track_title)
  for (x in 1:94){
    for (y in 1:nrow(songdata)){
      if (song$song_name[x] == songdata$track_title[y]){
        song$lyrics[x] <- paste(song$lyrics[x], songdata$lyric[y]) 
      }
    }
  }
  song
}
songdata1<- by_song(songdata)
View(songdata1)





#Finds total word count for each song
songdata1%>%
 group_by(songdata1$lyrics)%>%
  mutate(count = row_number())

split = strsplit(songdata1$lyrics, " ")
sapply(split, length)

#country ratio for each song
country_ratio = str_count(songdata1$lyrics, regex(country2)) / sapply(split, length); country_ratio

#romance ratio for each song
romance_ratio = str_count(songdata1$lyrics, regex(romance2)) / sapply(split,length); romance_ratio

#plots ratio between romance and country words
plot(romance_ratio/country_ratio)



#create dataframe2 which is the same as dataframe1 but with song year also added




#str_count function counts every use of every country word in each song
str_count(songdata1$lyrics, regex(" truck | tractor | beer | jean | car | guitar"))
str_count(songdata1$lyrics, regex(" truck"))
str_count(songdata1$lyrics, regex(" tractor"))
str_count(songdata1$lyrics, regex(" beer"))
str_count(songdata1$lyrics, regex(" jean"))
str_count(songdata1$lyrics, regex(" guitar"))
str_count(songdata1$lyrics, regex(" car "))
str_count(songdata1$lyrics, regex(" drive "))
