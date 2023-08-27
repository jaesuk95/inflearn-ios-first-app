//
//  ViewController.swift
//  FirstNewApp
//
//  Created by Jaesuk Lee on 2023/08/27.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    // slider (type : UISlider)
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureUI()
        
    }
    
    // slide
    @IBAction func sliderChanged(_ sender: UISlider) {
        // slider 의 value 값을 가지고 메인레이블의 텍스트를 셋팅
        
        let seconds = Int(slider.value * 60) // 0.0 ~ 1.0
//        print(seconds)
        mainLabel.text = "\(seconds) 초"
    }
    
    // start button
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈때마다 무언가를 실행
        
    }
    
    // reset button
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 초기화
        configureUI()
        
        // slider 의 가운데 설정
//        slider.setValue(0.5, animated: true)
        
//        from stackOverFlow
//        let roundedValue = round(slider.value / step) * step
//        print(roundedValue)
//        slider.value = roundedValue
        
    }
    
    
    
    
    
    
    
    func configureUI() {
        mainLabel.text = "선택하세요"
        
        // slider 의 중간 설정
        slider.setValue(0.5, animated: true)
    }
}

