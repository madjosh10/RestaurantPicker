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
    @IBOutlet weak var pickerSpoke: UILabel!
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
        showRestaurantsLabel.text = restaurants.joined(separator: ", ")
        
    }
    
    @IBAction func addRestaurantPressed(_ sender: Any) {
        guard let restaurantName = addRestaurantTextField.text else {return}
        if addRestaurantTextField.text != "" {
            restaurants.append(restaurantName)
            updateRestaurantLabel()
            addRestaurantTextField.text = ""
            resturantStackView.isHidden = false
            
        } else {
            resturantStackView.isHidden = false
            showRestaurantsLabel.text = "Cannot have an Empty Text Field"
        }
        
        if restaurants.count > 1 {
            showPickedResStackView.isHidden = false
            showRestPicked.isHidden = true
            pickerSpoke.isHidden = true
            
        }
        
    } // end of addRestaurantPressed()
    
    @IBAction func randomRestaurantPressed(_ sender: Any) {
        showRestPicked.text = restaurants.randomElement()
        showRestPicked.isHidden = false
        pickerSpoke.isHidden = false
        
    }// end randomRestaurantPressed()

} // end of ViewController
