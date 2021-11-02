//
//  ContentView.swift
//  Shared
//
//  Created by Bob Bulliard on 11/2/21.
//

import SwiftUI
struct ContentView: View {
@ObservedObject var fetcher = MovieFetcher()
   
   var body: some View {
       VStack {
           List(fetcher.movies) { movie in
               VStack (alignment: .leading) {
                   Text(movie.name)
                   Text(movie.released)
                       .font(.system(size: 11))
                       .foregroundColor(Color.gray)
               }
           }
       }
   }
}
