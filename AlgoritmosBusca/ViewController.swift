//
//  ViewController.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 13/07/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ProblemManager.loadStates(nameProblem: "cidades")
        let problem = Problem(initialStatus: "Arad", goal: ["Bucharest"])
        let result = UniformCostSearch.search(problem: problem)
        for node in result{
            print(node.desc)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

