//
//  ViewController.swift
//  CountLettersinaWordSearch
//
//  Created by Daniel Washington Ignacio on 14/06/21.
//

/*
 Create a function that counts the number of times a particular letter shows up in the word search.

 Examples

 letterCounter([
   ["D", "E", "Y", "H", "A", "D"],
   ["C", "B", "Z", "Y", "J", "K"],
   ["D", "B", "C", "A", "M", "N"],
   ["F", "G", "G", "R", "S", "R"],
   ["V", "X", "H", "A", "S", "S"]
 ], "D") ➞ 3

 // "D" shows up 3 times: twice in the first row, once in the third row.

 letterCounter([
   ["D", "E", "Y", "H", "A", "D"],
   ["C", "B", "Z", "Y", "J", "K"],
   ["D", "B", "C", "A", "M", "N"],
   ["F", "G", "G", "R", "S", "R"],
   ["V", "X", "H", "A", "S", "S"]
 ], "H") ➞ 2
 Notes

 You will always be given an array with five sub-arrays.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.letterCounter([
            ["D", "E", "Y", "H", "A", "D"],
            ["C", "B", "Z", "Y", "J", "K"],
            ["D", "B", "C", "A", "M", "N"],
            ["F", "G", "G", "R", "S", "R"],
            ["V", "X", "H", "A", "S", "S"]
          ], "D"))
        
        
        print(self.letterCounter([
            ["D", "E", "Y", "H", "A", "D"],
            ["C", "B", "Z", "Y", "J", "K"],
            ["D", "B", "C", "A", "M", "N"],
            ["F", "G", "G", "R", "S", "R"],
            ["V", "X", "H", "A", "S", "S"]
          ], "H"))
    }

    func letterCounter(_ arr: [[Character]], _ letter: Character) -> Int {
        var count: Int = 0
        for n in arr {
            for m in n {
                if m == letter{
                    count = count + 1
                }
            }

        }
        return count
    }

}

