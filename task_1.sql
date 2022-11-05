create table if not exists musicians(
	musician_id SERIAL primary key,
	name text);

create table if not exists genres(
	genre_id SERIAL primary key,
	name text);

create table if not exists albums(
	album_id SERIAL primary key,
	name text,
	year int);

create table if not exists songs(
	song_id SERIAL primary key,
	name text,
	length float,
	album_id INTEGER REFERENCES albums(album_id));

create table if not exists collections(
	collection_id SERIAL primary key,
	name text,
	year int);

create table if not exists GenresMusicians(
	GenreMusician_id SERIAL primary key,
	musician_id INTEGER REFERENCES musicians(musician_id),
	genre_id INTEGER references genres(genre_id));

create table if not exists AlbumsMusicians(
	AlbumMusician_id SERIAL primary key,
	musician_id INTEGER references musicians(musician_id),
	album_id INTEGER references albums(album_id));

create table if not exists CollectionsSongs(
	CollectionSong_id SERIAL primary key,
	collection_id INTEGER references collections(collection_id),
	song_id INTEGER references songs(song_id));
	
