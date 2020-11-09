//
//  SettingsView.swift
//  UIKitAppWithSwiftUI
//
//  Created by Ufuk Canlı on 9.11.2020.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Settings")
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

class SettingsViewHostingController: UIHostingController<SettingsView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(rootView: SettingsView())
    }
}
