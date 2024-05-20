//
//  ViewController.swift
//  feelingApp
//
//  Created by 심소영 on 5/19/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var labelList: [UILabel]!
    
    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var likeButton: UIButton!
    
    @IBOutlet var happyLabel: UILabel!
    @IBOutlet var loveLabel: UILabel!
    @IBOutlet var likeLabel: UILabel!
    
    @IBOutlet var upsetButton: UIButton!
    @IBOutlet var boredButton: UIButton!
    @IBOutlet var sleepyButton: UIButton!
    
    @IBOutlet var upsetLabel: UILabel!
    @IBOutlet var boredLabel: UILabel!
    @IBOutlet var sleepyLabel: UILabel!
    
    @IBOutlet var panicButton: UIButton!
    @IBOutlet var gloomyButton: UIButton!
    @IBOutlet var sadButton: UIButton!
 
    @IBOutlet var panicLabel: UILabel!
    @IBOutlet var gloomyLabel: UILabel!
    @IBOutlet var sadLabel: UILabel!
    
    @IBOutlet var backgroundView: UIImageView!
    
    var count = [0,0,0,0,0,0,0,0,0]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        
        buttonSet(happyButton, imageName: "slime1")
        buttonSet(loveButton, imageName: "slime2")
        buttonSet(likeButton, imageName: "slime3")
        buttonSet(upsetButton, imageName: "slime4")
        buttonSet(boredButton, imageName: "slime5")
        buttonSet(sleepyButton, imageName: "slime6")
        buttonSet(panicButton, imageName: "slime7")
        buttonSet(gloomyButton, imageName: "slime8")
        buttonSet(sadButton, imageName: "slime9")
     
        labelSet(happyLabel, labelName: "행복해")
        labelSet(loveLabel, labelName: "사랑해")
        labelSet(likeLabel, labelName: "좋아해")
        labelSet(upsetLabel, labelName: "속상해")
        labelSet(boredLabel, labelName: "심심해")
        labelSet(sleepyLabel, labelName: "지루해")
        labelSet(panicLabel, labelName: "당황해")
        labelSet(gloomyLabel, labelName: "진지해")
        labelSet(sadLabel, labelName: "우울해")

    }
    
    @IBAction func buttonTapped(_ sender: UIButton, labelText name: String) {
        count[sender.tag] = count[sender.tag] + 1
        labelList[sender.tag].text = "\(labelList[sender.tag].text ?? "") \(count[sender.tag])"
    }
    
    func buttonSet(_ sender: UIButton,imageName name: String){
        sender.setTitle( "\(name)", for: .normal)
        sender.contentMode = .scaleAspectFit
    }
    
    func labelSet(_ sender: UILabel, labelName name: String){
        sender.textAlignment = .center
        sender.text = "\(name) \(count[sender.tag])"
        sender.numberOfLines = 1
        sender.font = UIFont.systemFont(ofSize: 15, weight: .bold)
    }
}

