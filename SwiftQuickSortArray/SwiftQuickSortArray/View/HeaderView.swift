//
//  HeaderView.swift
//  SwiftQuickSortArray
//
//  Created by Angelos Staboulis on 26/3/22.
//

import UIKit

class HeaderView: UIView {
    
    func initialView(){
        backgroundColor = .blue
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initialView()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
