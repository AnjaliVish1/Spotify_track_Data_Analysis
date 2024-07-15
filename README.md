# Spotify_Tracks_Dataset_Analysis
## About
This is a dataset of Spotify tracks over a range of 125 different genres. Each track has some audio features associated with it. The data is in CSV format which is tabular and can be loaded quickly.


## Usage
The dataset can be used for:

• Building a Recommendation System based on some user input or preference.

• Classification purposes based on audio features and available genres.



## Data Dictinaries

#### Table_1 Spotify_Music


| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `id` | `int` | Music ID |
| track_id |varchar(100)|The Spotify ID for the track|
|artists|varchar(100)|The artists' names |
|album_name|varchar(100)|The album name in which the track appears|
|track_name|varchar(100)|Name of the track|
|popularity|varchar(100)|The popularity of a track is a value between 0 and 100, with 100 being the most popular|
|duration_ms|varchar(100)|The track length in milliseconds|
|explicit|varchar(100)|Whether or not the track has explicit lyrics (true = yes it does; false = no it does not OR unknown)|
|danceability|varchar(100)|Danceability describes how suitable a track is for dancing|
|energy|varchar(100)|Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity|
|key|varchar(100)|The key the track is in. Integers map to pitches using standard Pitch Class notation. E.g. 0 = C, 1 = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1|
|loudness|varchar(100)|The overall loudness of a track in decibels |
|mode|varchar(100)|Mode indicates the modality (major or minor) of a track, the type of scale from which its melodic content is derived|
|speechiness|varchar(100)|Speechiness detects the presence of spoken words in a track|
|acousticness|varchar(100)|A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic|
|instrumentalness|varchar(100)|Predicts whether a track contains no vocals. "Ooh" and "aah" sounds are treated as instrumental in this context|
|liveness|varchar(100)|Detects the presence of an audience in the recording|
|valence|varchar(100)|A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry)|
|tempo|varchar(100)|The overall estimated tempo of a track in beats per minute (BPM). In musical terminology, tempo is the speed or pace of a given piece and derives directly from the average beat duration|
|time_signature|varchar(100)|An estimated time signature. The time signature (meter) is a notational convention to specify how many beats are in each bar (or measure)|
|track_genre|varchar(100)|The genre in which the track belongs|


#### Table_2 Music
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `music_id`      | `int` | Music Id |
|music_name|varchar(50)|Name of the Music|



#### Table_3 Customers
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `customer_name`      | `char(50)` | Cusotmer name |
|Track_name|char(50)|Name of the Tracks|


#### Table_4 Subscription plan
| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `name`      | `varchar(50)` | Name of subscription plan |
|price|varchar(50)|Charges of Plan|
|description|varchar(100)|description of plan|
