//
//  TipsandTricksViewController.swift
//  Final Project
//
//  Created by ❦𝔸❦ 𝕄 on 7/15/20.
//  Copyright © 2020 ❦𝔸❦ 𝕄. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import SafariServices

class TipsandTricksViewController: UIViewController, AVPlayerViewControllerDelegate {
    var playercontroller =  AVPlayerViewController()
    var Tipsdata : TipsStruct!
    @IBOutlet weak var Episodes: UILabel!
    @IBOutlet weak var name: UILabel!


    func settipsdetails(){
        self.Episodes.text = Tipsdata.name1
        self.name.text = Tipsdata.title
    }




        
    override func viewDidLoad() {
        super.viewDidLoad()
        settipsdetails()


        // Do any additional setup after loading the view.
    }
    
    @IBAction func playbutton(_ sender: Any) {
        showSafariVC(for: Tipsdata.url)
       
    }
       
       func showSafariVC(for url: String) {
           guard let url = URL(string: url) else {
               //Show an invalid URL error alert
               return
        }
           
           let safariVC = SFSafariViewController(url: url)
           present(safariVC, animated: true)
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

