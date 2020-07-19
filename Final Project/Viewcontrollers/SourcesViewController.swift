//
//  SourcesViewController.swift
//  Final Project
//
//  Created by ❦𝔸❦ 𝕄 on 7/16/20.
//  Copyright © 2020 ❦𝔸❦ 𝕄. All rights reserved.
//

import UIKit
import SafariServices


class SourcesViewController: UIViewController {
    var sourcedata : SourcesData!
    
    @IBOutlet weak var lName1: UILabel!
    @IBOutlet weak var lName2: UILabel!
    @IBOutlet weak var lName3: UILabel!
    @IBOutlet weak var lName4: UILabel!
    @IBOutlet weak var lName5: UILabel!
    @IBOutlet weak var lName6: UILabel!

    

    
    
        func setSourceDetails(){
        self.lName1.text = sourcedata.web[0]
            self.lName2.text = sourcedata.web[1]
            self.lName3.text = sourcedata.web[2]
            self.lName4.text = sourcedata.web[3]
            self.lName5.text = sourcedata.web[4]
            self.lName6.text = sourcedata.web[5]
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSourceDetails()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func link1(_ sender: Any) {
            showSafariVC(for: sourcedata.links[0])
           
        }
           
           func showSafariVC(for url: String) {
               guard let url = URL(string: url) else {
                   //Show an invalid URL error alert
                   return
            }
               
               let safariVC = SFSafariViewController(url: url)
               present(safariVC, animated: true)
    }

    
    @IBAction func link2(_ sender: Any) {
        showSafariVC(for: sourcedata.links[1])
           
        }
           
           func showSafariVC1(for url: String) {
               guard let url = URL(string: url) else {
                   //Show an invalid URL error alert
                   return
            }
               
               let safariVC = SFSafariViewController(url: url)
               present(safariVC, animated: true)

    }
    
    @IBAction func link3(_ sender: Any) {
        showSafariVC(for: sourcedata.links[2])
           
        }
           
           func showSafariVC2(for url: String) {
               guard let url = URL(string: url) else {
                   //Show an invalid URL error alert
                   return
            }
               
               let safariVC = SFSafariViewController(url: url)
               present(safariVC, animated: true)

    }
    
    @IBAction func link4(_ sender: Any) {
        showSafariVC(for: sourcedata.links[3])
           
        }
           
           func showSafariVC3(for url: String) {
               guard let url = URL(string: url) else {
                   //Show an invalid URL error alert
                   return
            }
               
               let safariVC = SFSafariViewController(url: url)
               present(safariVC, animated: true)

    }
    
    @IBAction func link5(_ sender: Any) {
        showSafariVC(for: sourcedata.links[4])
           
        }
           
           func showSafariVC4(for url: String) {
               guard let url = URL(string: url) else {
                   //Show an invalid URL error alert
                   return
            }
               
               let safariVC = SFSafariViewController(url: url)
               present(safariVC, animated: true)

    }
    
    @IBAction func link6(_ sender: Any) {
        showSafariVC(for: sourcedata.links[5])
           
        }
           
           func showSafariVC5(for url: String) {
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
