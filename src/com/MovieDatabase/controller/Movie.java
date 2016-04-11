package com.MovieDatabase.controller;

public class Movie {

	private String title;
	private String genre;
	private int releaseDate;
	
	public Movie () {}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public int getReleaseDate() {
		return releaseDate;
	}
	
	public void setReleaseDate(int releaseDate) {
		this.releaseDate = releaseDate;
	}
}
