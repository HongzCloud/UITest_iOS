//
//  ViewController.swift
//  UITests
//
//  Created by 오킹 on 2023/01/31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedLoginButton(_ sender: Any) {
        
        // (id == a , pw == 1234) 이면 다음화면으로 이동
        if idTextField.text == "a" && pwTextField.text == "1234" {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
            present(vc, animated: true)
            
        } else {
            
            // 이외에는 ErrorAlert 띄움
            let alert = UIAlertController(title: "Error", message:"로그인 버튼을 눌렀어요.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            DispatchQueue.main.async {
                alert.view.accessibilityIdentifier = "ErrorAlert"
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}

