//
//  BaseView.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import UIKit

public class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorFields()
        setupViews()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorFields()
        setupViews()
    }
    
    func addMajorFields() {}
    func setupViews() {}
    
}
