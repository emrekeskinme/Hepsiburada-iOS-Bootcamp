//
//  genericBaseView.swift
//  HW2_EmreKeskin
//
//  Created by Emre Keskin on 1.10.2021.
//

import UIKit

public class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public init(frame: CGRect = .zero, data: T?) {
        self.data = data
        super.init(frame: frame)
        loadDataToView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func loadDataToView() {
        
    }
    
    func setData(data: T?) {
        self.data = data
        loadDataToView()
    }
    
    func returnData() -> T? {
        return data
    }
    
}
