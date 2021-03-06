//
//  ViewController.swift
//  UIKitAppWithSwiftUI
//
//  Created by Ufuk Canlı on 9.11.2020.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toShowDataView" {
            if let hostingController = segue.destination as? ShowDataViewHostingController {
                hostingController.rootView = ShowDataView(dataTextField: dataTextField)
            }
        }
    }

    @IBAction func openSwiftUIViewWithCode(_ sender: UIButton) {
        let profileView = UIHostingController(rootView: ProfileView())
        navigationController?.pushViewController(profileView, animated: true)
    }
    
    @IBAction func passDataWithCode(_ sender: UIButton) {
        let view = ShowDataViewWithCode(dataPassedIn: dataTextField?.text ?? "")
        let dataView = UIHostingController(rootView: view)
        navigationController?.pushViewController(dataView, animated: true)
    }
    
    @IBAction func enterNameButton(_ sender: UIButton) {
        let view = SendDataBackToUIViewController { [weak self] name in
            guard let self = self else { return }
            self.nameLabel.text = name
        }
        let nameView = UIHostingController(rootView: view)
        navigationController?.pushViewController(nameView, animated: true)
    }
    
}

