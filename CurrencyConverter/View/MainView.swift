//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Fatih Kilit on 3.10.2021.
//

import SwiftUI

struct MainView: View {
    
    @State private var isPresent: Bool = false
    
    @State var cadText: String = ""
    @State var jpyText: String = ""
    @State var gbpText: String = ""
    @State var tryText: String = ""
    @State var usdText: String = ""

    
    var body: some View {
        ZStack
        {
            Color("cuteBlue")
                .ignoresSafeArea()
            
            VStack
            {
                CurrencyHeaderView()
                
                CurrenciesView(cadText: $cadText, jpyText: $jpyText, gbpText: $gbpText, tryText: $tryText, usdText: $usdText)
                
                Button {
                    // Do some url stuff.
                    
                    NetworkViewModal(formattedCad: $cadText, formattedJpy: $jpyText, formattedGbp: $gbpText, formattedUsd: $usdText, formattedTry: $tryText)
                        .getRates()
                } label: {
                    Text("GET RATES")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .background(Color.pink)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
