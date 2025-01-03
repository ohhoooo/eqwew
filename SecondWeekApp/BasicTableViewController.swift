//
//  BasicTableViewController.swift
//  SecondWeekApp
//
//  Created by 김정호 on 1/2/25.
//

import UIKit

class BasicTableViewController: UITableViewController {
    
    var list = ["프로젝트", "쇼핑", "메인 업무", "새싹과제"]
//    {
//        didSet {
//            tableView.reloadData()
//        }
//    }
    
    // 원래는 Outlet을 다 연결해야 하지만, 지금은 애플이 미리 좀 해놔서 안해도 됨 ex. view 처럼
    // UITableViewController는 UIViewController를 상속받고 있기 때문에 viewDidLoad가 존재
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // var monster = Monster(speed: 10, power: 5) // 인스턴스
    }
    
    @IBAction func randomTextTapped(_ sender: UIBarButtonItem) {
        let random = ["장보기", "영화보기", "밥먹기", "숙면하기"]
        list.append(random.randomElement()!)
        tableView.insertRows(at: [IndexPath(row: list.count - 1, section: 0)], with: .automatic)
        // tableView.reloadData()
    }
    
    // 1. 셀의 갯수: numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return list.count
    }
    
    // 2. 셀 디자인 및 데이터 처리: cellForRowAt
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jeongCell")!
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.setPrimaryLabel(text: "test")
        
        cell.textLabel?.textColor = .black
        cell.textLabel?.font = .systemFont(ofSize: 30)
        
        cell.backgroundColor = (indexPath.row % 2 == 0) ? .lightGray : .white
        
        print(#function, indexPath)
        
        return cell
    }
    
    // 3. 셀의 높이: heightForRowAt
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function)
        return 80
    }
    
    // 셀을 클릭했을 때
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function, indexPath)
        list.remove(at: indexPath.row)
        tableView.deleteRows(at: [IndexPath(row: indexPath.row, section: indexPath.section)], with: .automatic)
        // tableView.reloadData()
    }
}
