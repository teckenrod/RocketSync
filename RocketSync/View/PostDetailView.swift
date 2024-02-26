//
//  PostDetailView.swift
//  RocketSync
//
//  Created by Trey Eckenrod on 2/26/24.
//

import SwiftUI

struct PostDetailView: View {
    var post: Post
    
    var body: some View {
        Text(post.title)
    }
}

#Preview {
    PostDetailView(post: Post(timestamp: .now, title: "Preview"))
}
