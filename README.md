# DS-4002-Project1

## Contents of the Repository

This repository includes all of the necessary files related to the first DS 4002 project for our group, The Swifties. This README.md file contains an overview of what is included in each of the three folders: SRC, Data, and Figures. The LICENSE.md file explains to a visitor the terms under which they may use and cite this repository. The SRC folder contains all source code for the project. The Data folder contains all of the data for the project. Lastly, the Figures folder contains all figures generated over the course of the project.

## SRC

We pulled the source data from Kaggle. It includes all of Taylor Swift's songs released during the time frame 2006-2017. It also includes the lyrics, song name, album name, and year of release.

### Installing/Building Code

We downloaded the data as a .csv file and cleaned it for use in R.

### Using Code

## Data

#### Data Dictionary

| Column Name | Data Type   | Description |
| ----------- | ----------- | ----------- |
| artist      | String      | This column contains a string of the name of the artist of the song. In this data set, all values in this column are “Taylor Swift”. |
| album       | String      | This column contains a string of the name of the album the song lyrics are from. This has six unique values, which include: “Taylor Swift”, “Fearless”, “Speak Now”, “Red”, “1989”, and “Reputation”. |
| track_title | String      | This column contains a string of the name of the song that lyrics are from. |
| track_n     | Integer     | This column contains the integer of the track number on the album of the song that lyrics are from. |
| lyrics      | String      | This column contains a string of the song lyrics from the song and line described in the other columns. |
| line        | Integer     | This column contains an integer of what line of the song the lyrics are from. |
| year        | Integer     | This column contains an integer value of the year the song the lyrics are from were released. |

#### Link to Data

Our dataset can be found [here](https://www.kaggle.com/datasets/PromptCloudHQ/taylor-swift-song-lyrics-from-all-the-albums) [1].

#### Relevant Notes About Data

There are several significant notes about our dataset. Firstly, it is important to note that it only contains lyrics from Taylor Swift's first six albums, not her entire discography. This led to our group adjusting our hypothesis and research question accordingly. Additionally, it is important to note that the dataset breaks up lyrics by line in each song, so some data aggregation will be necessary in order to use each song as individual data points.

## Figures 

| Figure      | Description | Takeaways   |
| ----------- | ----------- | ----------- |
| Romance:CountryRatioGraph.png| This graph has each Taylor Swift song plotted with the year of release on the x-axis and it's romance-to-country ratio on the y-axis. It also includes a line of best fit.| The line of best fit having a positive slope confirms our hypothesis that the lyrics of Taylor Swift's songs have shifted from being more aligned with the country theme to more aligned with the romance theme. |

## References
Our reasoning for choosing our country words can be found [here](https://www.reddit.com/r/country/comments/kvrbj0/analyzing_the_lyrics_of_14500_country_songs/).

[1] Vimal, Tarun, “Taylor Swift Song Lyrics from all the albums,” Kaggle.com, CC BY-SA 4.0, 2018. [Online]. Available: https://www.kaggle.com/datasets/PromptCloudHQ/taylor-swift-song-lyrics-from-all-the-albums. [Accessed February 14, 2023].

[2] Reddit User davidut2023, "Analyzing the lyrics of 14,500 Country songs," Reddit: https://www.reddit.com/r/country/comments/kvrbj0/analyzing_the_lyrics_of_14500_country_songs/, January 12, 2021. [Accessed February 21, 2023].
