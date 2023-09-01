//
//  ScrollSection.swift
//  Movie Booking
//
//  Created by Alexander Parreira on 01/09/23.
//

import SwiftUI

struct ScrollSection: View {
    @State var title = "Now Playing"
    @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]

    
    var body: some View {
        VStack(alignment: .leading){
               
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20.0){
                    ForEach(posters.indices, id: \.self){ index in
                        Image(posters[index])
                            .resizable()
                            .frame(width: 100, height: 130)
                            .cornerRadius(20)
                        
                    }
                }
                .offset(x: 20)
                .padding(.trailing, 40)
            }
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection()
    }
}