//
//  FirstViewController.swift
//  An ESPecially Good App
//
//  Created by Student on 2/29/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class GuessViewController: UIViewController {

    @IBOutlet weak var resultLBL:UILabel!
    
    @IBOutlet weak var scoreLBL:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title="Guess the Answer"
        // Do any additional setup after loading the view.
    }

    
    @IBAction
    func tappedCircle(){
        if  Predictions.shared.check(prediction: .circle){
            resultLBL.text = "😍"
        }
        else {
             resultLBL.text = "😭"
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.resultLBL.text = "?"
        }
        Predictions.shared.generateQuestion()
        scoreLBL.text = "\(Predictions.shared.numCorrect())/\(Predictions.shared.numAttempted())"
    }
    @IBAction
    func tappedTriangle(){
        if  Predictions.shared.check(prediction: .triangle){
            resultLBL.text = "😍"
        }
        else {
             resultLBL.text = "😭"
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.resultLBL.text = "?"
        }
        Predictions.shared.generateQuestion()
        scoreLBL.text = "\(Predictions.shared.numCorrect())/\(Predictions.shared.numAttempted())"
        
    }
    @IBAction
    func tappedStar(){
        if  Predictions.shared.check(prediction: .star){
            resultLBL.text = "😍"
        }
        else {
             resultLBL.text = "😭"
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.resultLBL.text = "?"
        }
        Predictions.shared.generateQuestion()
        scoreLBL.text = "\(Predictions.shared.numCorrect())/\(Predictions.shared.numAttempted())"
        
    }

    
    
}

