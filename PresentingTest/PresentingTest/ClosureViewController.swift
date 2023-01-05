//
//  ClosureViewController.swift
//  PresentingTest
//
//  Created by 최은주 on 2023/01/05.
//

import UIKit

class ClosureViewController: UIViewController {
    
    // 클로저 정의
    var dataClosure: ((_ data: String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.dataClosure?("Closure")
    }
}
