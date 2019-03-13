//
//  CSButton.swift
//  CustomClass_ios
//
//  Created by 박정훈 on 13/03/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import UIKit

public enum CSButtonType{
    case rect
    case circle
}

class CSButton: UIButton {
    var style: CSButtonType = .rect{
        didSet{
            switch style{
            case .rect :
                self.backgroundColor = UIColor.black
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 0
            case .circle :
                self.backgroundColor = UIColor.red
                self.layer.borderColor = UIColor.blue.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 50
                self.setTitle("Circle Button", for: .normal)
                
            }
        }
    }
    @objc func counting(_ sender: UIButton){
        sender.tag = sender.tag + 1
        sender.setTitle("\(sender.tag)번째 클릭", for: .normal)
    }
    
    
    convenience init(type: CSButtonType){
        self.init()
        
        switch type{
        case .rect :
            self.backgroundColor = UIColor.black
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 0
        case .circle :
            self.backgroundColor = UIColor.red
            self.layer.borderColor = UIColor.blue.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 50
            self.setTitle("Circle Button", for: .normal)
            
        }
        self.addTarget(self, action: #selector(counting(_:)), for: .touchUpInside)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        //스토리보드 방식으로 버튼을 정의했을 때 적용됩니다.
        self.backgroundColor = UIColor.green //배경을 녹색으로
        self.layer.borderWidth = 2 //테두리 설정
        self.layer.borderColor = UIColor.black.cgColor //테두리 검은색
        self.setTitle("버튼", for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.gray //배경을 회색으로
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("코드로 생성된 버튼", for: .normal)
    }
    
    init(){
        //viewcontroller 에서 인자값없이 CSButton 객체 생성가능
        super.init(frame: CGRect.zero)
    }

}
