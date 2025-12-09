//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/09.
//

import Foundation
import SwiftData

@Model
class Movie{
	var title: String
	var releaseDate: Date

	init(title: String, releasedate: Date){
		self.title = title
		self.releaseDate = releasedate
	}
}
