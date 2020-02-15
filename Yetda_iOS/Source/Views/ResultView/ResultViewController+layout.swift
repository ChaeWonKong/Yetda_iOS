//
//  ResultViewController+layout.swift
//  Yetda_iOS
//
//  Created by Leon Kong on 2020/02/16.
//  Copyright © 2020 Yetda. All rights reserved.
//

import UIKit
import SnapKit

extension ResultViewController {
    func setupUI() {
        setButtonUI()
        setContentView()
        setGuideText()
        setSubTextView()
    }
    
    func setButtonUI() {
        backButton.setNextButton(isEnable: true, title: "처음으로 돌아가기")
        self.view.addSubview(backButton)
        
        // setup self view contraints
        backButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.left.right.equalTo(self.view).inset(24)
            make.bottom.equalTo(self.view).inset(50)
            make.height.equalTo(44)
        }
    }
    
    func setContentView() {
        self.view.addSubview(contentView)
        
        contentView.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }
    
    func setGuideText() {
        self.contentView.addSubview(guideText)
        guideText.text = "쭈삐님을 위한 선물"
        
        guideText.snp.makeConstraints { (make) in
            make.top.equalTo(150)
            make.centerX.equalToSuperview()
        }
    }
    
    func setCardView() {
        cardView.setCardView()
        
        contentView.addSubview(cardView)
        
        cardView.snp.makeConstraints { (make) in
            make.top.equalTo(guideText.snp.bottom).inset(20)
            make.leading.equalToSuperview().offset(38)
            make.trailing.equalToSuperview().inset(38)
            make.width.equalTo(338)
            make.height.equalTo(460)
        }
    }
    
    func setSubTextView() {
        self.contentView.addSubview(subText)
        
        subText.snp.makeConstraints { (make) in
            
        }
    }
}
