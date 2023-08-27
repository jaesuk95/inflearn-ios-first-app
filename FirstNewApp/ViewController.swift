//
//  ViewController.swift
//  FirstNewApp
//
//  Created by Jaesuk Lee on 2023/08/27.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    // slider (type : UISlider)
    @IBOutlet weak var slider: UISlider!
    
    // google search
    weak var timer: Timer?
    
    var number: Int = 0
    
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
        number = seconds
    }
    

    
    // start button
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈때마다 무언가를 실행
        timer?.invalidate() // just in case you had existing 'Timer' , 'invalidte' it before we lose our reference to it
        
        // withTimeInterval: 1.0 <- interval time (예 1초 뒤에 repeat 실행)
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] _ in
            // 반복 하고 싶은 코드
            
            print(number)
            
            if number > 0 {
                number -= 1
                
                // slider 줄여야 되고
                slider.value = Float(number) / Float(60)
                
                // 레이블도 줄여야 한다
                mainLabel.text = "\(number) 초"
                
            } else {
                
                // 0초가 되면 소리까지
//                number = 0
//                mainLabel.text = "선택하세요"
                
                // timer 끝
                stopTimer()
                
                // 소리를 나게 해야된다
                AudioServicesPlayAlertSound(SystemSoundID(1322))
                
                configureUI()
            }
            
        }
        
        
    }

    func stopTimer () {
        timer?.invalidate()
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
        
        number = 0
        
        timer?.invalidate()
    }
}

