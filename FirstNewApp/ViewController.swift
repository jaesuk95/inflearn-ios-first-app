//
//  ViewController.swift
//  FirstNewApp
//
//  Created by Jaesuk Lee on 2023/08/27.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureUI()
        
    }


    func configureUI() {
        mainLabel.text = "선택하세요"
    }
    
    // slide
    @IBAction func sliderChanged(_ sender: UISlider) {
        
    }
    
    // start button
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
    }
    
    // reset button
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
    }
    
}

