//
//  CreditCardView.swift
//  Bank
//
//  Created by Asil Arslan on 8.05.2021.
//

import SwiftUI

struct CreditCardView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack {
                Text("Kredi Kartı")
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorPrimary"))
                Spacer()
                Circle().foregroundColor(Color("ColorBackground"))
                    .frame(width: 40, height: 40, alignment: .center)
                    .overlay(Image(systemName: "chevron.right")
                                .foregroundColor(Color("ColorPrimary")))
                .offset(x: 18, y: -12)
            }
            .padding(.horizontal, 5)
            
            Color("ColorBackground").frame(height: 4)
            
            VStack(spacing: 10){
                HStack{
                    Text("Son eksreden kalan borç")
                    Spacer()
                    Text("0,00 TL")
                }
                .foregroundColor(.black)
                HStack{
                    Text("Son ödeme tarihi")
                    Spacer()
                    Text("05/02/2021")
                }
                .foregroundColor(.black)
                HStack(spacing:5){
                    Text("Güncel dönem borcu")
                    Circle()
                    .frame(width: 20, height: 20, alignment: .center).foregroundColor(.gray)
                        .overlay(Text("?")
                                    .foregroundColor(.white))
                    
                    Spacer()
                    Text("406,98 TL")
                }
                .foregroundColor(.black)
                HStack{
                    Text("Kullanılabilir limit")
                    Spacer()
                    Text("23.863,27 TL")
                }
                .foregroundColor(.black)
                
            }
            .padding(5)
            
        }
        .background(Color("ColorWhite").cornerRadius(10))
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("ColorBackground"))
    }
}
