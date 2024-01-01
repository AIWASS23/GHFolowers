//
//  FollowerView.swift
//  GHFolowers
//
//  Created by Marcelo De Araújo on 01/01/24.
//

import SwiftUI

struct FollowerView: View {

    var follower: Follower

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: follower.avatarUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Image("avatar-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .clipShape(Circle())

            Text(follower.login)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }

    }
}
