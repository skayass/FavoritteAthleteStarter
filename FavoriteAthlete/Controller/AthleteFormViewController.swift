//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Administrator on 11/6/21.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    // create athlete var of type Athlete?
    var athlete: Athlete?
        
    // create IBOutlets for name, age, team, leauge
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var leagueTextField: UITextField!
    @IBOutlet var teamTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    
    // create updateView()
    func updateView() {
        if let aathlete = athlete {
            nameTextField.text = aathlete.name
            ageTextField.text = aathlete.age
            leagueTextField.text = aathlete.league
            teamTextField.text = aathlete.team
        }
      }

    // add IBAction for the save Button (connect button to action)
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
                
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: "AthleteList", sender: self)
                
    }
    

}
