//
//  ProblemGeneric.swift
//  AlgoritmosBusca
//
//  Created by Tiago Queiroz on 22/09/17.
//  Copyright © 2017 Tiago Queiroz. All rights reserved.
//

import Foundation

protocol ProblemGeneric {
    func goalTest(node: Node) -> Bool
    func successorRole(node: Node) -> [Node]
    func getPath(node: Node?) -> [Node]
}
