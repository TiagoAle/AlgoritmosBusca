//
//  ProblemManager.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 20/08/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import UIKit

class ProblemManager: NSObject {
    
    static func loadStates(nameProblem: String){
        if let file = Bundle.main.url(forResource: nameProblem, withExtension: "txt", subdirectory: "data") {
            do{
                let data = try String(contentsOf: file, encoding: .utf8)
                //print(data)
                splitString(str: data)
            }catch{
                print("Erro ler arquivo")
            }
        }
    }
    
    fileprivate static func splitString(str: String){
        let myStrings = str.components(separatedBy: .newlines)
        for i in 0..<myStrings.count{
            var words = myStrings[i].components(separatedBy: ",")
            let key = words.removeFirst()
            Problem.states[key] = words
        }
        //print(Problem.states)
    }
    
}
