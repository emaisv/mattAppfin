//
//  waterTrackerViewController.swift
//  mattApp
//
//  Created by Alina Gangji on 7/22/21.
//

import UIKit

class waterTrackerViewController: UIViewController {

    
    @IBOutlet weak var waterTrackerTitle: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var numberslider: UISlider!
    @IBOutlet weak var sentence: UILabel!
    
    @IBOutlet weak var TrackertoHomePg: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let sliderValue = numberslider.value * 10
        
        number.text = String("Cups: \(Int(sliderValue))")
        
        if (sliderValue == 0) {
            sentence.text = String("You need to drink water NOW!")
        }
        
        else if (sliderValue == 1) {
            sentence.text = String("Only one cup have some more water tomorrow")
        }
        
        else if (sliderValue == 2){
            sentence.text = String("Only 2 cups! have some more water tomorrow")
        }
        
        else if (sliderValue == 3) {
            sentence.text = String("Only 3 cups! have some more water tomorrow")
        }
        
        else if (sliderValue == 4) {
            sentence.text = String("Only 4 cups! have some more water tomorrow")
        }
        
        else if (sliderValue == 5) {
            sentence.text = String("5 Cups! Not Bad!")
        }
        
        else if (sliderValue == 6) {
            sentence.text = String("6 Cups! Not Bad!")
        }
        
        else if (sliderValue == 7) {
            sentence.text = String("7 Cups! Not Bad!")
        }
        
        else if (sliderValue == 8) {
            sentence.text = String("8 Cups! Not Bad!")
        }
        
        else if (sliderValue == 9) {
            sentence.text = String("9 Cups! Good Job Staying Hydrated!")
        }
        
        else if (sliderValue == 10) {
            sentence.text = String("Wow you are really thirsty")
        } 

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
