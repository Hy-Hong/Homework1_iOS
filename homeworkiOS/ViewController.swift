//
//  ViewController.swift
//  homeworkiOS
//
//  Created by Hy Horng on 9/9/20.
//  Copyright © 2020 Hy Horng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let studentName = [
        ("Leanne Graham"),
        ("Ervin Howell"),
        ("Clementine Bauch"),
        ("Patricia Lebsack"),
        ("Chelsey Dietrich"),
        ("Pharsa")
    ]
    
    let studentDescription = [
        ("Romaguera-Crona Multi-layered client-server neural-net Gwenborough"),
        ("Deckow-Crist Proactive didactic contingency Wisokyborgh"),
        ("Romaguera-Jacobson Face to face bifurcated interface McKenziehaven"),
        ("Robel-Corkery Multi-tiered zero tolerance productivity South Elvis"),
        ("Keebler LLC User-centric fualt-tolerant sulotion"),
        ("Robel-Corkery Multi-tiered zero tolerance productivity South Elvis")
    ]
    
    let studentImage = [
        UIImage(named: "photo0"),
        UIImage(named: "photo1"),
        UIImage(named: "photo2"),
        UIImage(named: "photo3"),
        UIImage(named: "photo4"),
        UIImage(named: "photo5")
    ]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CustomTableViewCell
        
        cell.customImageViewCell.image = studentImage[indexPath.row]
        
        cell.customImageViewCell.layer.cornerRadius = (cell.customImageViewCell.frame.size.height) / 2
        cell.customImageViewCell.clipsToBounds = true
        
        cell.customTitleLabel.text = studentName[indexPath.row]
        
        cell.customTextLabel.text = studentDescription[indexPath.row]
        cell.customTextLabel.textColor = .gray
        
        return cell
    }

}

