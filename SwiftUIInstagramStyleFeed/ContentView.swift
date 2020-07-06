//
//  ContentView.swift
//  SwiftUIInstagramStyleFeed
//
//  Created by Lucas Spusta on 7/5/20.
//
import Combine
import SwiftUI

struct ContentView: View {
  
    var body: some View {
        NavigationView {
            List {
                StoriesView()
                ForEach(0 ..< 30) {_ in
                    PostCell(description: "Test Description", likes: "1,559 Likes")
                }
              
        
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
                            Image("Avatar").resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70.0, height: 70.0)
                                .clipShape(Circle())
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
    var description : String
    var likes : String
    var body: some View {
        VStack(alignment: .leading) {
            // Header
            HStack {
                Image("Avatar").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30.0, height: 30.0)
                    .clipShape(Circle())
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
            
            //
            HStack(alignment: .center) {
                Image(systemName: "heart")
                Image(systemName: "bubble.right")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            
            // Likes
            Text(likes)
                .font(Font.system(size: 11.5))
                .padding(.top, 2)
            
    
            // description
            Text(description)
                            .lineLimit(4)
                            .font(Font.system(size: 14.5))
                .padding(.top, 5)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
