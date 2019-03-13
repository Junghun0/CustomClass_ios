//
//  CSButton.swift
//  CustomClass_ios
//
//  Created by 박정훈 on 13/03/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import UIKit

class CSButton: UIButton {

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
