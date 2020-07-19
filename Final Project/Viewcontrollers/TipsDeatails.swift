//
//  File.swift
//  Final Project
//
//  Created by ❦𝔸❦ 𝕄 on 7/17/20.
//  Copyright © 2020 ❦𝔸❦ 𝕄. All rights reserved.
//

import Foundation


struct TipsStruct {
    var name1 : String
    var title : String
    var url : String
   
    func video() -> String{
        return "\(name1).mp4"
    }
    
}

var tipsandtricks = [ TipsStruct(name1: "Episode 1", title: "Introduction to Debating", url: "https://www.youtube.com/watch?v=o5mgoAYEwAU"),
                      TipsStruct(name1: "Episode 2", title: "Argument Building", url: "https://www.youtube.com/watch?v=1zZ4YEuThRw"),
                      TipsStruct(name1: "Episode 3", title: "Rebutal", url: "https://www.youtube.com/watch?v=l6_6i-OJ_e4"),
                      TipsStruct(name1: "Episode 4", title: "Debate POI", url: "https://www.youtube.com/watch?v=PUf_gGLNnDc"),
                      TipsStruct(name1: "Episode 5", title: "How to use Rhetoric", url: "https://www.youtube.com/watch?v=3klMM9BkW5o"),
                      TipsStruct(name1: "Episode 6", title: "How to draft Articles", url: "https://www.youtube.com/watch?v=YIG2RCb_Zv0"),
                      TipsStruct(name1: "Episode 7", title: "Notetaking", url: "https://www.youtube.com/watch?v=0rIANDXXu-k"),
                      TipsStruct(name1: "Episode 8", title: "Logical Fallacies", url: "https://www.youtube.com/watch?v=n_P5GMbj2j4"),
TipsStruct(name1: "Episode 9", title: "HOW TO PERSUADE ANYONE - THE SOCRATIC METHOD", url: "https://www.youtube.com/watch?v=tw45yU6yh-E"),
TipsStruct(name1: "Episode 10", title: "10 Best Tips To Win In A Debate Competition", url: "https://www.youtube.com/watch?v=uCn29hZLp2U")]

