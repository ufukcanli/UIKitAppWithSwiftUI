//
//  ViewController.swift
//  UIKitAppWithSwiftUI
//
//  Created by Ufuk Canlı on 9.11.2020.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openSwiftUIViewWithCode(_ sender: UIButton) {
        let profileView = UIHostingController(rootView: ProfileView())
        navigationController?.pushViewController(profileView, animated: true)
    }
    
}

