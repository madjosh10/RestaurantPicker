//
//  ViewController.swift
//  RestaurantPick
//
//  Created by Joshua Madrigal on 9/21/18.
//  Copyright © 2018 Joshua Madrigal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Labels and StackViews
    
    @IBOutlet weak var resturantLabel: UILabel!
    @IBOutlet weak var showRestaurantsLabel: UILabel!
    @IBOutlet weak var resturantStackView: UIStackView!
    
    @IBOutlet weak var showRestPicked: UILabel!
    @IBOutlet weak var showPickedResStackView: UIStackView!
    
    @IBOutlet weak var addRestaurantTextField: UITextField!
    @IBOutlet weak var addARestaurant: UIButton!
    @IBOutlet weak var addRestaurantStackView: UIStackView!
    
    var restaurants: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resturantStackView.isHidden = true
        showPickedResStackView.isHidden = true
        
    
    }
    
    func updateRestaurantLabel() {
        resturantLabel.text = restaurants.joined(separator: ", ")
        
    }
    
    @IBAction func addRestaurantPressed(_ sender: Any) {
        guard let restaurantName = addRestaurantTextField.text else {return}
        
        
    }
    
    

}


