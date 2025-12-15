//
//  MovieList.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/09.
//

import SwiftUI
import SwiftData

struct MovieList: View {
	@Query(sort: \Movie.title) private var movies: [Movie]
	@Environment(\.modelContext) private var context


	var body: some View {
		NavigationSplitView {
			List {
				ForEach(movies) { movie in
					NavigationLink(movie.title) {
						MovieDetail(movie: movie)
					}
				}
			}
			.navigationTitle("Movies")
		} detail: {
			Text("Select a movie")
				.navigationTitle("Movie")
				.navigationBarTitleDisplayMode(.inline)
		}
	}
}

#Preview {
    MovieList()
		.modelContainer(SampleData.shared.modelContainer)
}
