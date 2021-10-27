//
//  ViewController.swift
//  BeastList
//
//  Created by mrwa alsubhi on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myviewTask: UITableView!
    @IBOutlet weak var textfiled: UITextField!
    
    var tasek = ["mrwa","yara","sara","leen","mona","rawan","shahad","waad","leena","ameera","mawda","dana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myviewTask.dataSource = self
        
    }
}

extension ViewController : UITableViewDataSource {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasek.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasek[indexPath.row]
        let randomAge = Int.random(in: 5...90)
        cell.detailTextLabel?.text = String(randomAge)
      
          return cell
    }
    
}
