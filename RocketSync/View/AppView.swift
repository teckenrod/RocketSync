//
//  ContentView.swift
//  RocketSync
//
//  Created by Trey Eckenrod on 2/26/24.
//

import SwiftUI
import SwiftData

struct AppView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var posts: [Post]

    var body: some View {
        NavigationStack {
            List(posts) { post in
                NavigationLink(post.title, value: post)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "location.north")
                        Text("RocketSync")
                            .font(.title)
                            .fontWidth(.expanded)
                    }
                }
                
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Image(systemName: "aqi.medium")
                    Spacer()
                    Image(systemName: "location.north.line.fill")
                    Spacer()
                    Image(systemName: "person.fill")
                    Spacer()
                }
            }
        }
        .navigationDestination(for: Post.self) { post in
                PostDetailView(post: post)
        }
    }
}

#Preview {
    AppView()
        .modelContainer(for: Post.self, inMemory: true)
}
