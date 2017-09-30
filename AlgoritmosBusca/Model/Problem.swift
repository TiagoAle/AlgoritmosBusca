//
//  Problem.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 13/07/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import UIKit

class Problem: ProblemGeneric {

    static var states = [String : [String]]()
    var initialStatus: String = ""
    var goal = [String]()
    
    init(initialStatus: String, goal: [String]){
        self.initialStatus = initialStatus
        self.goal = goal
    }
    
    func goalTest(node: Node) -> Bool{
        if self.goal.contains(node.state){
            return true
        }else{
            //print(node.state)
            return false
        }
    }
    
    func successorRole(node: Node) -> [Node] {
        var sucessors = [Node]()
        for no in Problem.states[node.state]!{
            let aux = no.components(separatedBy: "-")
            print(aux)
            //sucessors.append(Node(state: aux[0], father: node, deep: node.deep + 1))
            if aux.count == 1{
                sucessors.append(Node(state: aux[0], father: node, deep: node.deep + 1, cost: 1))
            }else{
                sucessors.append(Node(state: aux[0], father: node, deep: node.deep + 1, cost: Double(aux[1])!))
            }
        }
        return sucessors
    }
    
    func getPath(node: Node?) -> [Node]{
        var nodes = [Node]()
        if node != nil {
            nodes = getPath(node: node!.father)
            nodes.append(node!)
        }else{
            
        }
        return nodes
    }
    
}
