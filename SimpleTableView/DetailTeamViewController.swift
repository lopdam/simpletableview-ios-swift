//
//  DetailTeamViewController.swift
//  SimpleTableView
//
//  Created by Lopez Damian on 27/4/21.
//

import UIKit

class DetailTeamViewController: UIViewController {

    
    
    @IBOutlet weak var imageTeam: UIImageView!
    
    @IBOutlet weak var nameTeam: UILabel!
    
    var teamID:Int=Int()
    
    var teams:[String]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teams=["Atletico de Madrid", "Barcelona", "Deportivo de la Coruña", "Las Palmas", "Malaga", "Rayo Vallecano", "Sporting", "Real Sociedad", "Espanyol", "Mallorca", "Valladolid", "Eibar",  "Ponferradina", "Albacete"]
        
        setData()
        
    }
    
    
    func setData(){
        nameTeam.text=teams[teamID]
        imageTeam.image=UIImage(named: teams[teamID])!
        
    }
    

    
}
