//
//  roundView.swift
//  homework21
//
//  Created by Igor Naronovich on 30.06.2021.
//

import UIKit

@IBDesignable class roundView: UIView {
    
    var customView: UIView!
    var name: String = "roundView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func getFromXib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: name, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    func setCustomView() {

        customView = getFromXib()
        customView.frame = bounds
        customView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        customView.layer.cornerRadius = frame.size.width / 2
        customView.backgroundColor = .blue
        
        addSubview(customView)
    }
    
    
    
}

