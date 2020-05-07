//
//  MoviesListView.swift
//  day3Movie
//
//  Created by ash mutairi on 5/7/20.
//  Copyright © 2020 Ashwaq. All rights reserved.
//

import SwiftUI

struct MoviesListView: View {
    var body: some View {

    
        NavigationView{
            
            //loop تعرض كل الافلام اللي حطيناهم ب فايل Movies
            List(movies){ movie in
                NavigationLink(destination: MovieDetailsView(movie: movie))
                {
                    MovieRow(movie: movie)
                }
            }.navigationBarTitle("Animes")
        }.accentColor(.white)
        
        
    }
}


struct MovieRow: View {
    
    var movie: Movie
    
    var body: some View{
        
        HStack{
            Image(movie.name)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            Text(movie.name)
                .font(.title)
                .bold()
        }.padding(.horizontal)
         .padding(.vertical, 20)
        
        
    }
}


struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
