//
//  ViewController.swift
//  SecondWeekApp
//
//  Created by 김정호 on 12/30/24.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var recommendButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // recommendButton.titleLabel?.text
        print(resultLabel.isUserInteractionEnabled)
        
        
        recommendButton.isEnabled = false
        
        resultLabel.isUserInteractionEnabled = true
        
        if let url = URL(string: "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA4MjJfMjA1%2FMDAxNjkyNjk0OTE3ODE4.J4m31hFILCpl2T14HpxGg4eWTtV_AljwltrHDXdyil8g.RAuFoT6H-tJq345DseKFah-mqlomtmJM6W0LwUjLjDkg.PNG.jhlim1298z%2Fimage.png&type=a340") {
            imageView1.kf.setImage(with: url)
        } else {
            imageView1.image = UIImage(systemName: "star")
        }
        
        
        
    }
    
    // Did End On Exit
    // UITextField text, UILabel text: String?
    @IBAction func textFieldReturnKeyTapped(_ sender: UITextField) {
        let text = wordTextField.text!.uppercased()
        print(text)
        
        // 공백 whitespace
        if text.count == 0 || text == " " {
            resultLabel.text = "검색어를 작성해주세요"
        } else if text == "JMT" {
            resultLabel.text = "완전맛있음"
        } else {
            resultLabel.text = "\(text)로 입력했어요"
        }
    }
        
    @IBAction func labelTapped(_ sender: UITapGestureRecognizer) {
        print(#function)
    }
    
    func aboutOptional() {
        // String? <- 옵셔널 스트링 타입
        var nickname: String? = "고래밥"
        var age: Int? = 22
        
        nickname = nil
        
        // 1. 조건문을 통해 옵셔널 언래핑
        if nickname == nil {
            print("닉네임에 문제가 있어요")
        } else {
            print("\(nickname!)으로 설정합니다")
        }
        
        if nickname != nil {
            print("\(nickname!)으로 설정합니다")
        } else {
            print("닉네임에 문제가 있어요")
        }
        
        // -> 수많은 변수에 !를 붙여야 함 그래서 나온 게 옵셔널 바인딩
        
        // 2. 옵셔널 바인딩: if let / guard let
        if let nickname = nickname {
            print("\(nickname)으로 설정합니다")
        } else {
            print("닉네임에 문제가 있어요")
        }
        
        if let age {
            print(age)
        } else {
            print("나이가 nil입니다")
        }
        
        guard let age else {
            print("옵셔널 해제를 실패했어여 age가 nil임")
        }
        
        // 3. ??
        print(nickname ?? "손님")
        
        // 4. 옵셔널 체이닝
        wordTextField.text?.count
        
        if let text = wordTextField.text {
            print(text.count)
        }
    }
}
