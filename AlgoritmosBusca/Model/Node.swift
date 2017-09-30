//
//  Node.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 13/07/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import UIKit

class Node: NSObject {
    
    var state: String
    var father: Node?
    //var sucessors: [Node]?
    var action: Int?
    var cost: Double?
    var deep: Int
    var desc:String
    
    init(state: String) {
        self.state = state
        self.deep = 0
        self.cost = 0
        self.desc = "state: \(self.state), deep: \(self.deep)"
    }
    
    init(state: String, father: Node, deep: Int, cost: Double){
        self.state = state
        self.father = father
        self.deep = deep
        self.cost = cost + father.cost!
        self.desc = "state: \(self.state), deep: \(self.deep)"
    }
    
}
