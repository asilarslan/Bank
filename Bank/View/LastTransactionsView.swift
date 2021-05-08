//
//  LastTransactionsView.swift
//  Bank
//
//  Created by Asil Arslan on 8.05.2021.
//

import SwiftUI

struct LastTransactionsView: View {
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
                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Image(systemName: "banknote")
                        Text("Bugün")
                        Spacer()
                        Text("-1000,00 TL")
                    }
                    Text("Giden Transfer - Birikim TL hesap açılışı")
                }
                .foregroundColor(.black)
                VStack(alignment: .leading, spacing: 5) {
                    HStack{
                        Image(systemName: "banknote")
                        Text("Bugün")
                        Spacer()
                        Text("+1000,00 TL")
                    }
                    Text("Gelen Transfer - Birikim TL hesabımdan")
                }
                .foregroundColor(.black)
                
            }
            .padding(5)
            
        }
        .background(Color("ColorWhite").cornerRadius(10))
    }
}

struct LastTransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        LastTransactionsView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("ColorBackground"))
    }
}
