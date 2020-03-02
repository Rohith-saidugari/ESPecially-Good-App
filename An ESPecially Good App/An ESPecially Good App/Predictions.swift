//
//  Predictions.swift
//  An ESPecially Good App
//
//  Created by Student on 2/29/20.
//  Copyright © 2020 Student. All rights reserved.
//

import Foundation
enum Shape:Int{
    case circle, triangle, star
}

struct Question{
    
    public var actualShape:Shape
    public var predictedShape:Shape!
    public var isCorrect:Bool{
        return actualShape==predictedShape
    }
}

class Predictions{
    
    var questions:[Question] = []
    var currentQuestion:Question!
    // Singleton implementation
    private static var _shared:Predictions! // Only visible in this struct
    
    static var shared:Predictions {         // To access this anywhere, in the app just write Restaurants.shared
        if _shared == nil {
            _shared = Predictions()
        }
        return _shared
    }
    
   
    
    func generateQuestion(){
        currentQuestion = Question(actualShape: Shape(rawValue:Int.random(in: 0 ... 2))!,predictedShape:nil)
    }
    
    func check(prediction:Shape) -> Bool{
        currentQuestion.predictedShape = prediction
        questions.append(currentQuestion)
        return currentQuestion.isCorrect
    }
    
    func numAttempted() ->Int{
      return  questions.count
    }
    
    
    func numCorrect() ->Int{
        var numCorrect = 0
        for question in questions{
            if question.isCorrect == true{
                numCorrect = numCorrect+1
            }
        }
        return numCorrect
    }
    
    func clearResults(){
        questions.removeAll()
    }
    
    init(){
        generateQuestion()
    }
    
    func question(at:Int) ->Question!{
        return nil
    }
    

    
}
