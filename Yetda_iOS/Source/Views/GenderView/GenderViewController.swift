//
//  GenderViewController.swift
//  Yetda_iOS
//
//  Created by Leon Kong on 2020/01/27.
//  Copyright © 2020 Yetda. All rights reserved.
//

import UIKit
import SnapKit

class GenderViewController: BaseViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    var femaleButton = UIButton()
    var maleButton = UIButton()
    var femaleLabel = UILabel()
    var maleLabel = UILabel()
    
    var femaleCheckBox = UIView()
    var maleCheckBox = UIView()
    
    var horizontalStackView = UIStackView()
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           // Do any additional setup after loading the view.
           navigationController?.setNavigationBarHidden(false, animated: true)
       }
       
       // custom setup
       override func setup() {
           super.setup()
       }
       
       // MARK: - apply layout from extension
       override func setupUI() {
           super.setupUI()
        setButton()
        createCheckboxStackView()
           
       }
       
       override func setupButton(button: UIButton) {
           super.setupButton(button: nextButton)
           button.setTitle("다음", for: .normal)
       }

}
