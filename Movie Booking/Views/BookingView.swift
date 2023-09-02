//
//  BookingView.swift
//  Movie Booking
//
//  Created by Alexander Parreira on 01/09/23.
//

import SwiftUI

struct BookingView: View {
    
    @State var gradient = [
    Color("backgroundColor2").opacity(0),
    Color("backgroundColor2"),
    Color("backgroundColor2"),
    Color("backgroundColor2"),
    ]
    
    var body: some View {
        ZStack{
            Image("booking")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity, alignment: .top)
            VStack{
                LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom)
                    .frame(height: 600)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            VStack (spacing: 0.0){
                HStack{
                    CircleButton(action: {}, image: "arrow.left")
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
        .background(Color("backgroundColor2"))
        .ignoresSafeArea()
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
