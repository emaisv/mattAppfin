//
//  nuttrition1VC.swift
//  mattApp
//
//  Created by Kesar Sampat on 7/22/21.
//

import UIKit

class nuttrition1VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fruitLabel.isHidden = true
        grainsLabel.isHidden = true
        vegLabel.isHidden = true
        proteinLabel.isHidden = true
        
        
    }
    
    //variables for food plate (labels)
    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet weak var grainsLabel: UILabel!
    @IBOutlet weak var vegLabel: UILabel!
    @IBOutlet weak var proteinLabel: UILabel!
    
    
    //functions for food plate
    @IBAction func fruitsBtn(_ sender: UIButton) {
        fruitLabel.isHidden = false
        grainsLabel.isHidden = true
        vegLabel.isHidden = true
        proteinLabel.isHidden = true
        
    }
    
    @IBAction func grainsBtn(_ sender: UIButton) {
        fruitLabel.isHidden = true
        grainsLabel.isHidden = false
        vegLabel.isHidden = true
        proteinLabel.isHidden = true
    }
    
    
    @IBAction func vegBtn(_ sender: UIButton) {
        fruitLabel.isHidden = true
        grainsLabel.isHidden = true
        vegLabel.isHidden = false
        proteinLabel.isHidden = true
    }
    
    
    @IBAction func proteinBtn(_ sender: UIButton) {
        fruitLabel.isHidden = true
        grainsLabel.isHidden = true
        vegLabel.isHidden = true
        proteinLabel.isHidden = false
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
