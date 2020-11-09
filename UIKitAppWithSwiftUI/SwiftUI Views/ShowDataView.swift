//
//  ShowDataView.swift
//  UIKitAppWithSwiftUI
//
//  Created by Ufuk Canlı on 9.11.2020.
//

import SwiftUI

struct ShowDataView: View {
    var dataTextField: UITextField?
    
    var body: some View {
        VStack {
            Text("Here is the data passed in:")
            Text(dataTextField?.text ?? "No data passed in")
                .fontWeight(.bold)
        }
    }
}

struct ShowDataView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDataView()
    }
}

class ShowDataViewHostingController: UIHostingController<ShowDataView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(rootView: ShowDataView())
    }
}
