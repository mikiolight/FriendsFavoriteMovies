//
//  FilteredMovieList.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/19.
//

import SwiftUI
import SwiftData

struct FilteredMovieList: View {
	@State private var serchText = ""

	var body: some View {
		NavigationSplitView {
			MovieList(titleFilter: serchText)
				.searchable(text: $serchText)
		} detail: {
			Text("Select a movie")
				.navigationTitle("Movie")
				.navigationBarTitleDisplayMode(.inline)
		}
	}
}

#Preview {
    FilteredMovieList()
		.modelContainer(SampleData.shared.modelContainer)
}
