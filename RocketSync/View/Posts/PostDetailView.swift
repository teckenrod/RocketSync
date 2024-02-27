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
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(post.username)
                Spacer()
                Text(post.type)
            }
            
            if let imageData = post.photo, let uiImage = UIImage(data: imageData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
            } else {
                Image("rocket")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
            }
            
            Text(post.title)
            
            Divider()
            
            HStack {
                Spacer()
                Button(action: {
                    // Handle like action
                }) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Text("0")
                Spacer()
                Button(action: {
                    // Handle comment action
                }) {
                    Image(systemName: "bubble.left")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Text("0")
                Spacer()
            }
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    PostDetailView(post: Post(title: "Preview", type: "Design", username: "teckenrod"))
}
