//
//  NumberViewController.swift
//  SecondWeekApp
//
//  Created by 김정호 on 12/30/24.
//

import UIKit

class NumberViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewBackground()
        
        
        // UserDefaults에 저장된 데이터 가져오기
        let result = UserDefaults.standard.string(forKey: "number")
        
        numberTextField.text = result
        
        print(NSHomeDirectory())
        
        dateLabel.text = getToday()
    }
    
    func randomInt() -> Int {
        // Swift 5.1: Implicit returns -> 한 줄만 있으면 return 생략도 가능
        Int.random(in: 1...100)
    }
    
    // Swift Attributes
    @discardableResult
    func getToday() -> String {
        let format = DateFormatter()
        format.dateFormat = "yy년 MM월 dd일"
        let today = format.string(from: Date())
        
        return today
    }
    
    @IBAction func textFieldTextChanged(_ sender: UITextField) {
        if let text = sender.text, let convertInt = Int(text) {
            resultLabel.text = String(convertInt)
        } else {
            resultLabel.text = "숫자가 아닙니다"
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        // 텍스트 필드에 적었던 내용을 영구적으로 저장
        UserDefaults.standard.set(numberTextField.text, forKey: "number")
        print(UserDefaults.standard.string(forKey: "number"))
        
        // 사용자에게 성공적으로 저장이 되었다는 알림을 주기
        // Alert
        // 1. 타이틀 + 메세지
        let alert = UIAlertController(title: "저장되었습니다", message: "숫자가 성공적으로 저장되었어요", preferredStyle: .alert)
        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .cancel)
        let test1 = UIAlertAction(title: "테스트1", style: .default)
        let test2 = UIAlertAction(title: "테스트2", style: .default)
        let test3 = UIAlertAction(title: "테스트3", style: .default)

        // 3. 본문에 버튼 추가
        alert.addAction(ok)
        alert.addAction(test3)
        alert.addAction(test1)
        alert.addAction(test2)
        // 4. 화면에 띄우기
        present(alert, animated: true)
    }
}
