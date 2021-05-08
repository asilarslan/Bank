//
//  ContentView.swift
//  Bank
//
//  Created by Asil Arslan on 8.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            NavigationView()
            Spacer()
            ScrollView(.vertical, showsIndicators: false, content: {
                TopView()
                    .padding(.horizontal)
                    .padding(.vertical,5)
                
                AccountsView()
                    .padding(.horizontal)
                    .padding(.vertical,5)
                
                CreditCardView()
                    .padding(.horizontal)
                    .padding(.vertical,5)
                
                OffersView()
                    .padding(.horizontal)
                    .padding(.vertical,5)
                
                LastTransactionsView()
                    .padding(.horizontal)
                    .padding(.vertical,5)
            })
        }
        .background(Color("ColorBackground").ignoresSafeArea())
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
