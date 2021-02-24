//
//  HomeScreen.swift
//  HunterX
//
//  Created by Sergio Daniel on 23/02/21.
//

import UIKit

class HomeScreen: UIViewController {
    
    @IBOutlet weak var navigationBar: XNavigationBar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        navigationBar?.title = "Hunter Xplore"
        navigationBar?.userDidTapRightActionButtonHandler = {
            [unowned self] () in
                self.performSegue(withIdentifier: MainSegue.homeToAdd.name,
                                  sender: self)
        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
