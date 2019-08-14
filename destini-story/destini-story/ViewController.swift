//
//  ViewController.swift
//  destini-story
//
//  Created by Loredana Todoran on 09/08/2019.
//  Copyright © 2019 Loredana Todoran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let story1 : String = "Story 1: Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat and soulless eyes opens the passenger door for you and says: \"Need a ride, boy?\"."
    let answer1a : String =  "I'll hop in. Thanks for the help!"
    let answer1b : String = "Well, I don't have many options. Better ask him if he's a murderer."
    let story2 : String = " Story 2: He nods slowly, unphased by the question."
    let answer2a : String = "At least he's honest. I'll climb in."
    let answer2b : String = "Wait, I know how to change a tire."
    let story3 : String = "Story 3:......fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a : String =  "I love Elton John! Hand him the cassette tape."
    let answer3b : String = "It’s him or me. Take the knife and stab him."
    let story4 : String = " Story 4: What? Such a cop out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 : String = " Story 5: As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 : String = " Story 6: You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\" "
    var storyindex : Int = 1
    @IBOutlet weak var textStoryLabel: UILabel!
    
    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textStoryLabel.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 && storyindex == 1{
        textStoryLabel.text = story3
        topButton.setTitle(answer3a, for: .normal)
        bottomButton.setTitle(answer3b, for: .normal)
            storyindex = 3
        }
        else if sender.tag == 2 && storyindex == 1 {
        textStoryLabel.text = story2
        topButton.setTitle(answer2a, for: .normal)
        bottomButton.setTitle(answer2b, for: .normal)
            storyindex = 2
        }
        else if sender.tag == 1 && storyindex == 3 {
            textStoryLabel.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyindex = 6
        }
        else if sender.tag == 1 && storyindex == 2 {
           textStoryLabel.text = story3
           topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyindex = 3
        }
        else if sender.tag == 1 && storyindex == 3 {
            textStoryLabel.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyindex = 6
        }
        else if sender.tag == 2 && storyindex == 3 {
             textStoryLabel.text = story5
            bottomButton.isHidden = true
            topButton.isHidden = true
            storyindex = 5
        }
        else if sender.tag == 2 && storyindex == 2 {
            textStoryLabel.text = story4
            bottomButton.isHidden = true
            topButton.isHidden = true
            storyindex = 4
        }
    }
    @IBAction func restartButton(_ sender: Any) {
        restart()
    }
    func restart() {
        textStoryLabel.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        storyindex = 1
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
}

