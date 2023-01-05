//
//  ViewController.swift
//  PresentingTest
//
//  Created by 최은주 on 2023/01/05.
//

import UIKit

class ViewController: UIViewController, DataSendable {
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func presentDelegateViewController() {
        guard let delegateViewController = self.storyboard?.instantiateViewController(withIdentifier: "DelegateViewController") as? DelegateViewController else { return }
        
        delegateViewController.modalPresentationStyle = .formSheet
        delegateViewController.delegate = self
        
        self.present(delegateViewController, animated: true, completion: nil)
    }
    
    func presentClosureViewController() {
        guard let closureViewController = self.storyboard?.instantiateViewController(withIdentifier: "ClosureViewController") as? ClosureViewController else { return }
        
        closureViewController.modalPresentationStyle = .formSheet
        
        closureViewController.dataClosure = { data in
            self.dataLabel.text = data
        }
        
        self.present(closureViewController, animated: true, completion: nil)
    }

    @IBAction func didSelectPresentClosure(_ sender: Any) {
        self.presentClosureViewController()
    }
    
    @IBAction func didSelectDelegate(_ sender: Any) {
        self.presentDelegateViewController()
    }
    
    func send(data: String) {
        self.dataLabel.text = data
    }
}

