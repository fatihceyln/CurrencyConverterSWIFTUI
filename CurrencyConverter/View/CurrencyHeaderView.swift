//
//  CurrencyHeader.swift
//  CurrencyConverter
//
//  Created by Fatih Kilit on 5.10.2021.
//

import SwiftUI

struct CurrencyHeaderView: View {
    var body: some View {
        Text("Currency Converter")
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .background(Color.orange)
            .cornerRadius(20)
    }
}

struct CurrencyHeader_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyHeaderView()
    }
}
