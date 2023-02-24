library(readr)
library(readxl)
library(dplyr)
library(stringr)
songdata = read.csv("taylor_swift_lyrics.csv")
View(songdata)

#Group of country and romance words we want to assess
country = "\\bjust\\b|\\bknow\\b|\\bain't\\b|\\byeah\\b|\\bback\\b|\\btime\\b|\\bnever\\b|\\bgonna\\b|\\bbaby\\b|\\blittle\\b|\\bgood\\b|\\bnight\\b|\\bgirl|\\bright\\b|\\bhear|\\bwanna\\b|\\bold\\b|\\blong\\b|\\bwant|\\bstill\\b|\\bcause\\b|\\bman\\b|\\bhome\\b|\\baway\\b|\\bday|\\blife\\b|\\bneed|\\bthink|\\bfeel"
romance = "\\bkiss|\\blov|\\bheart|\\bhand|\\bhug|\\bboyfriend\\b|\\bgirlfriend\\b|\\bbaby\\b|\\bhold\\b|\\bgirl|\\bboy|\\bman\\b|\\bstay|\\bleav|\\blife\\b|\\bdream|\\bliv|\\break|\\bex-|\\btreat|\\bflower|\\bdanc|\\bnew\\b|\\bchang|\\beye|\\bhop|\\bthink|\\bfeel"


by_song <- function(songdata){
  song <- data.frame(song_name=unique(songdata$track_title), lyrics=character(94),stringsAsFactors=FALSE)
  song_names<-unique(songdata$track_title)
  for (x in 1:94){
    for (y in 1:nrow(songdata)){
      if (song$song_name[x] == songdata$track_title[y]){
        song$lyrics[x] <- paste(song$lyrics[x], songdata$lyric[y]) 
      }
    }
    for (x in 1:14){
      song$year[x] <- "2006"
    }
    for (x in 15:94){
      song$year[x] <- "2008"
    }
  }
  song
}

#Finds total word count for each song
songdata1%>%
 group_by(songdata1$lyrics)%>%
  mutate(count = row_number())

split = strsplit(songdata1$lyrics, " ")
sapply(split, length)

#Find percentage of country and romance words for each song
songdata1%>%
  group_by(songdata1$lyrics)

View(songdata1)


country_count <- str_count(songdata1$lyrics, regex(country2))
romance_count <- str_count(songdata1$lyrics, regex(romance2))

songdata2 <- songdata %>% distinct(track_title, .keep_all = TRUE)
years_2 = songdata2$year

plot(romance_count/country_count~years_2)
abline(lm(romance_count/country_count~years_2))
lm(romance_count/country_count~years_2)