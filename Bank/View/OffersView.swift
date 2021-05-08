//
//  OffersView.swift
//  Bank
//
//  Created by Asil Arslan on 8.05.2021.
//

import SwiftUI

struct OffersView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack {
                Text("Teklifler ve başvurular")
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorPrimary"))
                    .padding(.vertical, 10)
                Spacer()
            }
            .padding(.horizontal, 5)
            
            Color("ColorBackground").frame(height: 4)
            
            VStack(spacing: 10){
                HStack{
                    Text("İhtiyaç kredisi")
                    Spacer()
                    Text("Başvur")
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("ColorPrimary"))
                }
                .foregroundColor(.black)
                HStack{
                    Text("Kredi kartı yeni limit")
                    Spacer()
                    Text("10.000,00 TL")
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("ColorPrimary"))
                }
                .foregroundColor(.black)
                
            }
            .padding(5)
            
        }
        .background(Color("ColorWhite").cornerRadius(10))
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        OffersView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("ColorBackground"))
    }
}
