# Playlist summary


#### packages ----

library(readr)
library(dplyr)

library(ggplot2)

# and yes I know this is bad form but has anyone come up with a more elegant way to define the current directory?
setwd("C:/@data/GitHub/WorkInProgress/playlistr")



#### iTunes ----


# iTunes playlist --  summarize by artist and album

playlist <- read_csv("playlist.csv")

ls(playlist)
ls.str(playlist)

albums <- playlist %>%
  distinct(Album)
head(albums)

# for code below:
# http://stackoverflow.com/questions/25571547/select-unique-values-with-select-function-in-dplyr-library

albums2 <- playlist %>% 
  group_by(AlbumArtist, Album) %>%
  summarise() %>%
  select(unique.x=AlbumArtist, unique.y=Album)
head(albums2)


albums3 <- playlist %>% 
  mutate(LastPlayedDate = substring(LastPlayed, 1, 10)) %>%
  group_by(LastPlayedDate, AlbumArtist, Album) %>%
  summarise() %>%
  select(unique.w= LastPlayedDate, unique.x=AlbumArtist, unique.y=Album)
head(albums3)


write_csv(albums3, "albums.csv")


#### ECM albums on iTunes list ----


ECMalbumlist <- read_csv("ECMviaiTunes.csv")

ls(ECMalbumlist)
ls.str(ECMalbumlist)

ECMalbums <- ECMalbumlist %>%
  distinct(Album)
head(ECMalbums)

# for code below:
# http://stackoverflow.com/questions/25571547/select-unique-values-with-select-function-in-dplyr-library

ECMalbums <- ECMalbumlist %>% 
  group_by(Artist, Album) %>%
  summarise() %>%
  select(unique.x=Artist, unique.y=Album) %>%
  arrange(unique.y)
head(ECMalbums)



write_csv(ECMalbums, "ECMalbums.csv")

# repeat for New Series

ECMNSalbumlist <- read_csv("ECMNewSeriesviaiTunes.csv")

ls(ECMNSalbumlist)
ls.str(ECMNSalbumlist)

ECMNSalbums <- ECMNSalbumlist %>%
  distinct(Album)
head(ECMNSalbums)

# for code below:
# http://stackoverflow.com/questions/25571547/select-unique-values-with-select-function-in-dplyr-library

ECMNSalbums <- ECMNSalbumlist %>% 
  group_by(Artist, Album) %>%
  summarise() %>%
  select(unique.x=Artist, unique.y=Album) %>%
  arrange(unique.y)
head(ECMNSalbums)



write_csv(ECMNSalbums, "ECMNSalbums.csv")




#### ECM albums on LP and CD ----


ECMalbumlist <- read_csv("albumlist_ECM_2017-05-30.csv")

ls(ECMalbumlist)
ls.str(ECMalbumlist)

ggplot(ECMalbumlist, aes(x=Number)) +
  geom_histogram(binwidth = 100)
