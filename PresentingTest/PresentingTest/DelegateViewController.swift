//
//  DelegateViewController.swift
//  PresentingTest
//
//  Created by 최은주 on 2023/01/05.
//

import UIKit

protocol DataSendable: AnyObject {
    func send(data: String)
}

class DelegateViewController: UIViewController {
    weak var delegate: DataSendable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.delegate?.send(data: "Delegate")
    }
}
