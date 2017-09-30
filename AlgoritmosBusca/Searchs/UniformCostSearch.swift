//
//  StarSearch.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 12/09/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import UIKit

class UniformCostSearch: NSObject {
    
    static var fringe = [Node]()
    
    static func search(problem: Problem) -> [Node]{
        
        var result = [Node]()
        
        if fringe.isEmpty{
            fringe.append(Node.init(state: problem.initialStatus))
        }
        
        fringe.sort(by: {$0.cost! < $1.cost!})
        
        let node = fringe.removeFirst()
        print(node.cost!)
        
        if problem.goalTest(node: node){
            result = problem.getPath(node: node)
        }else{
            fringe.append(contentsOf: problem.successorRole(node: node))
            
            for no in fringe{
                print("\(no.state), ", separator: ", ", terminator: "")
            }
            
            print()
            print()
            result = UniformCostSearch.search(problem: problem)
        }
        
        return result
    }
}
