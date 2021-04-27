//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Lopez Damian on 27/4/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var teams:[String]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        teams=["Atletico de Madrid", "Barcelona", "Deportivo de la Coruña", "Las Palmas", "Malaga", "Rayo Vallecano", "Sporting", "Real Sociedad", "Espanyol", "Mallorca", "Valladolid", "Eibar",  "Ponferradina", "Albacete"]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
   
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text  = teams[indexPath.row]
        cell.imageView!.image=UIImage(named: teams[indexPath.row])!
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       guard let detailTeamVc=storyboard?.instantiateViewController(identifier: "detailTeam") as? DetailTeamViewController else {
            return
        }
        
        //detailTeamVc.modalPresentationStyle = .fullScreen
        
        detailTeamVc.teamID=indexPath.row
        
        present(detailTeamVc, animated: true)
    }
    


}

