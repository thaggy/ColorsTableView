//
//  ColorDetailViewController.swift
//  Color
//
//  Created by Hagedorn on 10/16/20.
//

import UIKit

class ColorDetailViewController: UIViewController {
    var colors : Color?
    
    @IBOutlet weak var colorNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        colorNameLabel.text = colors?.name
        self.view.backgroundColor = colors?.uiColor
        self.title = colors?.name
        // Do any additional setup after loading the view.
    }
    

}
