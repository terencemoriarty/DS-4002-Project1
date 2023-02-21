library(readr)
library(readxl)
library(dplyr)
songdata = read.csv("taylor_swift_lyrics.csv")
View(songdata)

#Look up engrams.?
#Find percentage of country and romance words for each song
#Find ratio of romance words to country words for each song
#Plot song ratio vs year of release
#Plot average ratio of songs aggregated by album

#Group of country and romance words we want to assess, work in progress
country = c("Truck", "Tractor", "Beer", "Jean", "Whiskey", "Guitar")
romance = c("Love", "Heart", "Kiss", "Stay", "Leave")

#each_song = group_by(songdata, songdata$track_title)

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

#Find percentage of country and romance words for each song
songdata1%>%
  group_by(songdata1$lyrics)


#Counts every use of the word "truck" in each song
lengths(gregexpr(" truck ", songdata1$lyrics))

