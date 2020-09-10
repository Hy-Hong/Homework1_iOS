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
        ("Romaguera-Crona Multi-layered client-server neural-net GwenboroughRomaguera-Crona Multi-layered client-server neural-net GwenboroughRomaguera-Crona Multi-layered client-server neural-net GwenboroughRomaguera-Crona Multi-layered client-server neural-net Gwenborough"),
        ("Deckow-Crist Proactive didactic contingency Wisokyborghdidactic contingency Wisokyborgh"),
        ("Romaguera-Jacobson Face to face bifurcated interface McKenziehavendidactic contingency Wisokyborghdidactic contingency Wisokyborghdidactic contingency Wisokyborghdidactic contingency Wisokyborghdidactic contingency Wisokyborghdidactic contingency Wisokyborgh"),
        ("Robel-Corkery Multi-tiered zero tolerance "),
        ("Keebler LLC User-centric fualt-tolerant sulotion"),
        ("Robel-Corkery Multi-tiered zero tolerance productivity South Elvisdidactic contingency Wisokyborgh")
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
        tableView.rowHeight = UITableView.automaticDimension
        
        title = "K-Pop Stars"
        navigationController?.navigationBar.tintColor = .black
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
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
        cell.customTitleLabel.text = studentName[indexPath.row]
        cell.customTextLabel.text = studentDescription[indexPath.row]
        return cell
    }

}

