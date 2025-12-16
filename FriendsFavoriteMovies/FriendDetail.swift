//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/10.
//

import SwiftUI
import SwiftData

struct FriendDetail: View {
	@Bindable var friend: Friend

	@Environment(\.dismiss) private var dismiss
	@Environment(\.modelContext) private var context

    var body: some View {
		Form {
			TextField("Name", text: $friend.name)
				.autocorrectionDisabled()
		}
		.navigationTitle("Friend")
		.navigationBarTitleDisplayMode(.inline)
		.toolbar{
			ToolbarItem(placement: .confirmationAction) {
				Button("Save") {
					dismiss()
				}
			}
			ToolbarItem(placement: .cancellationAction) {
				Button("Cancel") {
					context.delete(friend)
					dismiss()

				}
			}
		}
    }
}

#Preview {
	NavigationStack{
		FriendDetail(friend: SampleData.shared.friend)
	}
}
