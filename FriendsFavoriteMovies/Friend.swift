//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/09.
//

import Foundation
import SwiftData

@Model
class Friend{
	var name: String
	var favoriteMovies: Movie?

	init(name: String){
		self.name = name
	}

	static let sampleData = [
		Friend(name: "Elena"),
		Friend(name: "Graham"),
		Friend(name: "Mayuri"),
		Friend(name: "Rich"),
		Friend(name: "Rody"),
	]
}
