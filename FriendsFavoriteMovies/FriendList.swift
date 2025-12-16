//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/09.
//

import SwiftUI
import SwiftData

struct FriendList: View {
	@Query(sort: \Friend.name) private var friends: [Friend]
	@Environment(\.modelContext) private var context

	var body: some View {
		NavigationSplitView{
			List{
				ForEach(friends){ friend in
					NavigationLink(friend.name){
						FriendDetail(friend: friend)

					}
				}
				.onDelete(perform: deleteFriend(indexes:))
			}
			.navigationTitle("Friends")
			.toolbar {
				ToolbarItem {
					Button("Add friend", systemImage: "plus", action: addFriend)
				}
				ToolbarItem(placement: .topBarTrailing) {
					EditButton()
				}
			}
		} detail: {
			Text("Select a friend")
				.navigationTitle("Friend")
				.navigationBarTitleDisplayMode(.inline)
		}
	}

	private func addFriend() {
		context.insert(Friend(name: "New friend"))
	}
	private func deleteFriend(indexes: IndexSet) {
		for index in indexes {
			context.delete(friends[index])
		}
	}
}

#Preview {
	FriendList()
		.modelContainer(SampleData.shared.modelContainer)
}
