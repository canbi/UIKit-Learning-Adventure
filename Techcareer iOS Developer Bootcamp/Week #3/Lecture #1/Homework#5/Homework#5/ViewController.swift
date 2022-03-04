//
//  ViewController.swift
//  Homework#5
//
//  Created by Can Bi on 4.03.2022.
//

import UIKit

class ViewController: UIViewController {
    enum MathOperators {
        case initialAdd
        case add
    }
    
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var previousResult: UILabel!
    @IBOutlet var textButtons: [UIButton]!
    
    private var mathOperators = "+"
    private var mathOperatorsMapped = [
        "+" : MathOperators.add
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func deleteButton(_ sender: UIButton) {
        result.text = "0"
        previousResult.text = ""
    }
    
    @IBAction func textButtonTapped(_ sender: UIButton) {
        let tag = sender.tag
        
        if result.text!.contains("=") {
            previousResult.text = result.text!
            result.text = ""
        }
        
        updateLabel(tappedButton: tag)
    }
    
    @IBAction func buttonCalculate(_ sender: UIButton) {
        guard mathOperators.contains(where: result.text!.contains) else {
            return
        }
        
        guard !mathOperators.contains(result.text!.last!) else {
            return
        }
        
        guard !result.text!.contains("=") else {
            return
        }
        
        let delims = CharacterSet(charactersIn: mathOperators)
        let components = result.text!.components(separatedByIncluding: delims)
        let calcResult = processComponents(components: components)
        
        result.text! += " = \(calcResult)"
    }
    
    func updateLabel(tappedButton: Int){
        if result.text! == "0" {
            result.text = ""
        }
        
        if tappedButton == 10 {
            guard result.text!.count > 0 else {
                return
            }
            guard !result.text!.hasSuffix("+") else {
                return
            }
            
            result.text! += "+"
        }
        else{
            result.text! += String(tappedButton)
        }
    }
    
    func processComponents(components: [String]) -> Int {
        var result: Int = 0
        
        var currentOperator: MathOperators? = .initialAdd
        
        for element in components {
            if mathOperators.contains(element) {
                currentOperator = mathOperatorsMapped[element]
            }
            
            switch currentOperator {
            case .initialAdd:
                result += Int(element) ?? 0
            case .add:
                result += Int(element) ?? 0
            case .none:
                result += 0
            }
        }
        
        return result
    }
    
    
}

extension StringProtocol {
    func components(separatedByIncluding delims: CharacterSet) -> [String] {
        var components: [String] = []
        var component = ""

        for character in self {
            if String(character).rangeOfCharacter(from: delims) != nil {
                if !component.isEmpty {
                    components.append(component)
                }
                components.append(String(character))
                component = ""
            } else {
                component += [character]
            }
        }
        if !component.isEmpty {
            components.append(component)
        }

        return components
    }
}
