//
//  BreadthSearch.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 13/07/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import UIKit

class BreadthSearch: NSObject {
    
    static var fringe = [Node]()
    
    static func search(problem: Problem) -> [Node]{
        
        var result = [Node]()
        
        if fringe.isEmpty{
            fringe.append(Node.init(state: problem.initialStatus))
        }
        
        let node = fringe.removeFirst()
        
        if problem.goalTest(node: node){
            //print(node.state)
            result = problem.getPath(node: node)
        }else{
            fringe.append(contentsOf: problem.successorRole(node: node))
            
            for no in fringe{
                print("\(no.state), ", separator: ", ", terminator: "")
            }
            
            print()
            print()
            result = BreadthSearch.search(problem: problem)
        }
        
        return result
    }
    
}
