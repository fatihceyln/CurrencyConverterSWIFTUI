//
//  CurrenciesView.swift
//  CurrencyConverter
//
//  Created by Fatih Kilit on 5.10.2021.
//

import SwiftUI

struct CurrenciesView: View {
    
    @Binding var cadText: String
    @Binding var jpyText: String
    @Binding var gbpText: String
    @Binding var tryText: String
    @Binding var usdText: String
    
    var body: some View {
        VStack
        {
            Text("CAD: \(cadText)")
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 20).bold())
                .background(Color.yellow)
                .cornerRadius(20)
            
            Text("JPY: \(jpyText)")
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 20).bold())
                .background(Color.yellow)
                .cornerRadius(20)
            
            Text("GBP: \(gbpText)")
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 20).bold())
                .background(Color.yellow)
                .cornerRadius(20)
            
            Text("TRY: \(tryText)")
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 20).bold())
                .background(Color.yellow)
                .cornerRadius(20)
            
            Text("USD: \(usdText)")
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 20).bold())
                .background(Color.yellow)
                .cornerRadius(20)
        }
    }
}
