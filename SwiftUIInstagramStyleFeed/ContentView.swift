//
//  ContentView.swift
//  SwiftUIInstagramStyleFeed
//
//  Created by Lucas Spusta on 7/5/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                StoriesView()
                PostCell()
                PostCell()
                PostCell()
            }.navigationBarTitle("Feed")
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "paperplane"))
            .padding(.leading, -20)
            .padding(.trailing, -20)
        }
    }
}

struct StoriesView: View {
    var body: some View {
        VStack {
            
            // Stories text + Watch all
            HStack {
                Text("Stories")
               Spacer()
               Text("Watch all")
            }
            
            // Stories Circles
            ScrollView([.horizontal], showsIndicators: false){
                HStack {
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image("")
                            Image("Add")
                        }
                        Text("Your Story")
                            .font(Font.system(size: 13.5))
                    }.padding(.trailing, 12)
                    
                    
                    VStack {
                        ZStack {
                            Image("Border")
                            Image("")
                        }
                        Text("Other User")
                            .font(Font.system(size: 13.5))
                    }.padding(.trailing, 12)
                    
                
                    
                    
                    
                }.padding(.leading, 16)
            }.padding(.leading, -20)
             .padding(.trailing, -20)

        }
    }
}

struct PostCell: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            // Header
            HStack {
//                Image("Avatar").frame(width: 25, height: 25)
                VStack(alignment: .leading){
                    Text("Lucas Spusta")
                        .font(Font.system(size: 13.5))
                    Text("Rome, Italy")
                        .font(Font.system(size: 11.5))
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            
            // Post
            Image("rome")
                .resizable()
                .scaledToFit()
                .padding(.leading, -20)
                .padding(.trailing, -20)
            
            // Barre horizontale
            HStack(alignment: .center) {
                Image(systemName: "heart")
                Image(systemName: "bubble.right")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            
            // Le nombre de Likes
            Text("Liked by Other User and 621 others")
                .font(Font.system(size: 13.5))
            
            // La description
            Text("Swift UI is Amazing! #SwiftUI")
                            .lineLimit(4)
                            .font(Font.system(size: 12.5))
                            .foregroundColor(.init(white: 0.2))
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
