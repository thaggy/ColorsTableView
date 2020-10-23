//
//  ColorViewController.swift
//  Color
//
//  Created by Hagedorn on 10/2/20.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var colors = [Color(name: "red",uiColor: UIColor.red),
                  Color(name: "orange", uiColor: UIColor.orange),
                  Color(name: "yellow",uiColor: UIColor.yellow),
                  Color(name: "green",uiColor: UIColor.green),
                  Color(name: "blue", uiColor: UIColor.blue),
                  Color(name:"purple", uiColor: UIColor.purple),
                  Color(name:"brown",uiColor: UIColor.brown)]
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    override func viewDidLoad() {
        self.title = "Colors"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row].name
        cell.backgroundColor = colors[indexPath.row].uiColor
        //Other method of returning selection style back to normal after selecting
        //Using the other method only because I like seeing it switch to grey after I click on it
        //cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
           let row = colorsTableView.indexPathForSelectedRow?.row  {
            destination.colors = colors[row]
        }
    }
}
