//
//  DeepSearch.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 30/08/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import UIKit

class DeepSearch: NSObject {
    static var fringe = [Node]()
    static var visited = [String]()
    
    static func search(problem: Problem) -> [Node]{
        
        var result = [Node]()
        
        if fringe.isEmpty{
            fringe.append(Node.init(state: problem.initialStatus))
        }
        
        let node = fringe.removeLast()
        if problem.goalTest(node: node){
            result = problem.getPath(node: node)
        }else{
            if visited.contains(node.state){
                result = DeepSearch.search(problem: problem)
            }else{
                visited.append(node.state)
                fringe.append(contentsOf: problem.successorRole(node: node))
                for no in fringe{
                    print("\(no.state), ", separator: ", ", terminator: "")
                }
                
                print()
                print()
                result = DeepSearch.search(problem: problem)
            }
        }
        
        return result
    }
}
