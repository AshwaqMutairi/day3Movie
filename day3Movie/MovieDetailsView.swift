//
//  MovieDetailsView.swift
//  day3Movie
//
//  Created by ash mutairi on 5/7/20.
//  Copyright © 2020 Ashwaq. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    var movie: Movie
    var body: some View {
        
        ZStack {
            
            Image(movie.name)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 15)
                .scaleEffect(1.2)
            Color.black.edgesIgnoringSafeArea(.all).opacity(0.4)
            VStack{
                Image(movie.name).resizable().scaledToFit().frame(width: 250).clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 5))
                    .shadow(radius: 20)
                    
                Text(movie.name)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .shadow(radius: 20)

                Spacer()
                

                ScrollView(.horizontal){
                    HStack{
                        ForEach(movie.characters, id: \.self)
                        { (character: String) in
                            Text(character).font(.title)
                                .bold().foregroundColor(.white)
                                .padding(.horizontal, 5)
                        }//end foreach
                        
                    }//end hstack
                }.offset(x: 200)
                    .edgesIgnoringSafeArea(.all)
                
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(movie.characters, id: \.self)
                        { (character: String) in
                            Image(character).resizable().scaledToFit().frame(width: 200)
                        }//end foreach
                        Spacer()
                    }//end hstack
                }.edgesIgnoringSafeArea(.all)
                

                
                Spacer()

            }//end vstack
        }//end zstack
        
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(movies) { movie in
            MovieDetailsView(movie: movie)
                .previewDisplayName(movie.name)
        }
    }
}
