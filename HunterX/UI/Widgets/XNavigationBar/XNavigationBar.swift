//
//  XNavigationBar.swift
//  HunterX
//
//  Created by Sergio Daniel on 20/02/21.
//

import UIKit

final class XNavigationBar : UIView {
    
    private static let NIB_NAME = "XNavigationBar"
    
    var userDidTapRightActionButtonHandler: Closure?
    var title: String? {
        didSet {
            guard let title = self.title else {
                return
            }
            
            titleLabel.text = title
        }
    }
    var rightActionIcon: UIImage? {
        get { return rightActionButton.image(for: .normal) }
        set { rightActionButton.setImage(newValue, for: .normal) }
    }
    
    @IBOutlet private var view: UIView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var rightActionButton: UIButton!
    
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
    
    @IBAction private func userDidTapRightActionButton() {
        print("Reached")
        userDidTapRightActionButtonHandler?()
    }
    
}
