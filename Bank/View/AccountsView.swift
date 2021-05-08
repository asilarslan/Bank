//
//  AccountsView.swift
//  Bank
//
//  Created by Asil Arslan on 8.05.2021.
//

import SwiftUI

struct AccountsView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack {
                Text("Hesaplar")
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
                    Text("Toplam")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("19.363,97 TL")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                HStack{
                    Text("Vadesiz TL")
                    Spacer()
                    Text("0,00 TL")
                }
                .foregroundColor(.black)
                HStack{
                    Text("Birikim TL")
                    Spacer()
                    Text("12.075,48 TL")
                }
                .foregroundColor(.black)
                
                HStack{
                    Spacer()
                    Circle().frame(width: 8, height: 8)
                        .foregroundColor(.black)
                    Circle().frame(width: 8, height: 8)
                        .foregroundColor(.gray.opacity(0.8))
                    Circle().frame(width: 8, height: 8)
                        .foregroundColor(.gray.opacity(0.8))
                    Circle().frame(width: 8, height: 8)
                        .foregroundColor(.gray.opacity(0.8))
                    
                    Spacer()
                }
            }
            .padding(5)
            
        }
        .background(Color("ColorWhite").cornerRadius(10))
    }
}

struct AccountsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountsView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("ColorBackground"))
    }
}
