//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Mikihisa Saito on 2025/12/10.
//

import SwiftUI

struct FriendDetail: View {
	@Bindable var friend: Friend
	
    var body: some View {
		Form {
			TextField("Name", text: $friend.name)
				.autocorrectionDisabled()
		}
    }
}

#Preview {
	FriendDetail(friend: SampleData.shared.friend)
}
