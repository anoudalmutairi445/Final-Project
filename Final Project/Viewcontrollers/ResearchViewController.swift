//
//  ResearchViewController.swift
//  Final Project
//
//  Created by ❦𝔸❦ 𝕄 on 7/18/20.
//  Copyright © 2020 ❦𝔸❦ 𝕄. All rights reserved.
//

import UIKit

class ResearchViewController: UIViewController {
    var categorydata : mainMenu!
    var researchdata : Research!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var with1: UITextView!
    
    @IBOutlet weak var with2: UITextView!
    
    @IBOutlet weak var against1: UITextView!
    
    @IBOutlet weak var against2: UITextView!
    func setresearchdata(){
        self.nameLabel.text = researchdata.name
        self.with1.text = researchdata.With[0]
        self.with2.text = researchdata.With[1]
        self.against1.text = researchdata.Against[0]
        self.against2.text = researchdata.Against[1]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setresearchdata()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
