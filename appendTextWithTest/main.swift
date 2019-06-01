//
//  main.swift
//  appendTextWithTest
//
//  Created by Magnus Kruschwitz on 01.06.19.
//  Copyright © 2019 Magnus Kruschwitz. All rights reserved.
//

import Foundation

enum Fehler: Error {
    case isEmpty
}

func addTestToString(input: String) throws -> String{
    if input.isEmpty{
        throw Fehler.isEmpty
    }
    return "Test\(input)"
}

do{
    let ergebnis = try addTestToString(input: "Case")
    print("Das Ergebnis lautet \(ergebnis)")
}
catch Fehler.isEmpty{
    print("Es wurde ein leerer String übergeben.")
}
