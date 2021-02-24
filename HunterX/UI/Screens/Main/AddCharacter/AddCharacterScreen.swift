//
//  AddCharacterScreeen.swift
//  HunterX
//
//  Created by Sergio Daniel on 23/02/21.
//

import UIKit

class AddCharacterScreen: UITableViewController {
    
    @IBOutlet weak var navigationBar: XNavigationBar?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        navigationBar?.title = "X-Register"
        navigationBar?.rightActionIcon = #imageLiteral(resourceName: "quit")
        navigationBar?.userDidTapRightActionButtonHandler = {
            [unowned self] () in
            self.dismiss(animated: true, completion: nil)
        }
    }

}
