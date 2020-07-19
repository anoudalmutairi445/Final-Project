//
//  Details.swift
//  Final Project
//
//  Created by ❦𝔸❦ 𝕄 on 7/11/20.
//  Copyright © 2020 ❦𝔸❦ 𝕄. All rights reserved.
//

import Foundation
import UIKit

struct mainMenu{
    var categoryName: String
    
     func image() -> String {
             return categoryName
         }
}

var Maindetails = [
    mainMenu(categoryName: "Citations"),
    mainMenu(categoryName: "Research"),
    mainMenu(categoryName: "Sources"),
    mainMenu(categoryName: "Tips and Tricks")]



