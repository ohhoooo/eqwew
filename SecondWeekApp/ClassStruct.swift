//
//  ClassStruct.swift
//  SecondWeekApp
//
//  Created by 김정호 on 1/2/25.
//

import Foundation

// 1. 가지고 있는 프로퍼티를 모두 초기화
// 2. 가지고 있는 프로퍼티를 옵셔널로 선언
class Monster {
    var clothes: String?
    let speed: Int
    let power: Int
    let experience = 100
    
    init(clothes: String? = nil, speed: Int, power: Int) {
        self.clothes = clothes
        self.speed = speed
        self.power = power
    }
    
//    func initializer(clothes: String, speed: Int, power: Int) {
//        self.clothes = clothes
//        self.speed = speed
//        self.power = power
//    }
}

class BossMonster: Monster {
    
}

class SuperMonster: BossMonster {
    
}

struct MonsterStruct {
    var clothes: String?
    let speed: Int
    let power: Int
    let experience = 100
    
    // init이 없더라도 기본적으로 제공해줌!! => 멤버와이즈 초기화 구문
}
