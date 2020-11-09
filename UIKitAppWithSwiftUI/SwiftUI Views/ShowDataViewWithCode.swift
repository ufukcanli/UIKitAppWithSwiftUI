//
//  ShowDataViewWithCode.swift
//  UIKitAppWithSwiftUI
//
//  Created by Ufuk Canlı on 9.11.2020.
//

import SwiftUI

struct ShowDataViewWithCode: View {
    var dataPassedIn: String?
    
    var body: some View {
        VStack {
            Text("Here is the data passed in:")
            Text(dataPassedIn ?? "No data passed in")
                .fontWeight(.bold)
        }
        .navigationTitle("Show Data With Code")
    }
}

struct ShowDataViewWithCode_Previews: PreviewProvider {
    static var previews: some View {
        ShowDataViewWithCode()
    }
}
