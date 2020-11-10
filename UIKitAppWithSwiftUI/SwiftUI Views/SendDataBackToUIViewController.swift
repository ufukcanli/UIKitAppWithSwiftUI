//
//  SendDataBackToUIViewController.swift
//  UIKitAppWithSwiftUI
//
//  Created by Ufuk Canlı on 10.11.2020.
//

import SwiftUI

struct SendDataBackToUIViewController: View {
    var sendNameBack: ((String) -> ())?
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Text("Enter name:")
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                
            Button(action: {
                guard let sendNameBack = sendNameBack else { return }
                sendNameBack(name)
            }) {
                Text("Update me!")
            }
        }
    }
}

struct SendDataBackToUIViewController_Previews: PreviewProvider {
    static var previews: some View {
        SendDataBackToUIViewController()
    }
}
