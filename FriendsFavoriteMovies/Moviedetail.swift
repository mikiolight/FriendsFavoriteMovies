//
//  Moviedetail.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/10.
//

import SwiftUI

struct Moviedetail: View {
	@Bindable var movie: Movie

    var body: some View {
		Form {
			TextField("Movie title", text: $movie.title)

			DatePicker("Release date", selection: $movie.releaseDate, displayedComponents: .date)
		}
	}
}

#Preview {
	Moviedetail(movie: SampleData.shared.movie)
}
