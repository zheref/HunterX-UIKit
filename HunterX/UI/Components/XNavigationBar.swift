//
//  XNavigationBar.swift
//  HunterX
//
//  Created by Sergio Daniel on 20/02/21.
//

import UIKit

final class XNavigationBar : UIView {
    
    private static let NIB_NAME = "XNavigationBar"
    
    @IBOutlet private var view: UIView!
    
    override func awakeFromNib() {
            initWithNib()
        }
        
    private func initWithNib() {
        Bundle.main.loadNibNamed(XNavigationBar.NIB_NAME, owner: self, options: nil)
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate(
            [
                view.topAnchor.constraint(equalTo: topAnchor),
                view.leadingAnchor.constraint(equalTo: leadingAnchor),
                view.bottomAnchor.constraint(equalTo: bottomAnchor),
                view.trailingAnchor.constraint(equalTo: trailingAnchor),
            ]
        )
    }

    
}
