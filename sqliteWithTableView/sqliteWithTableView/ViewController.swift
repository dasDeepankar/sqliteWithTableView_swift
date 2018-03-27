//
//  ViewController.swift
//  sqliteSwift 1.0
//
//  Created by Deepankar on 3/24/18.
//  Copyright © 2018 DASLAB. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var conTFTableView: UITableView!
    
    var contactInfo:Dictionary = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "TFTableViewCell", bundle: nil)
        
        self.conTFTableView.register(nib, forCellReuseIdentifier: "cellCon")
        
    }

    
    @IBAction func donePress(_ sender: UIBarButtonItem)
    {
        
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
{
    return 10
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
{
  
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellCon") as! TFTableViewCell
    
    return cell
}
   
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }


}

