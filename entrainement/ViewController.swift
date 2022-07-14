//
//  ViewController.swift
//  entrainement
//
//  Created by DAUBERCIES on 14/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var list = ["Le loup gourmand", "la baguette magique", "au comptoirs des délices", "Marie Blachère"]
    @IBOutlet var tableView: UITableView!

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Commerces", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = list[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    
}
