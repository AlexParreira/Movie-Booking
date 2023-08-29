//
//  TicketView.swift
//  Movie Booking
//
//  Created by Alexander Parreira on 29/08/23.
//

import SwiftUI

struct TicketView: View {
    
    @State var animate = false
    
    var body: some View {
        ZStack{
            
            Circle()
                .foregroundColor(Color("greenCircle"))
                .frame(width:300)
                .blur(radius: animate ? 30 :  100)
                .offset(x: animate ? -50 : -130, y: animate ? -30: -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()){
                        animate.toggle()
                    }
                }
            Circle()
                .foregroundColor(Color("pinkCircle"))
                .frame(width:300)
                .blur(radius: animate ? 30 :  100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
            
            VStack(spacing: 30){
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("Once you buy a movie ticket simply scan the barcode to acces to your movies.")
                    .frame(maxWidth: 248)
                    .font(.body)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(gradient: Gradient(colors:[ Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
