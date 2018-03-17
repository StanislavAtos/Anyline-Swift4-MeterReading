//
//  MainViewController.swift
//  Anyline Swift Example
//
//  Created by YakovAlexey on 3/16/18.
//  Copyright © 2018 Anyline. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, ScanFinishDelegate {
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startScan(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "scanview") as! ScanViewController
        viewcontroller.delegate = self
        self.navigationController?.pushViewController(viewcontroller, animated: true)
    }
    
    func scanFinishWith(image: UIImage, result: String) {
        resultImage.image = image
        resultLabel.text = result
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}

protocol ScanFinishDelegate {
    func scanFinishWith(image: UIImage, result: String)
}

