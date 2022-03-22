//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    
    var story = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story.story[0].title
        
        optionOneButton.setTitle(story.story[0].choice1, for: .normal)
        optionTwoButton.setTitle(story.story[0].choice2, for: .normal)
        
        optionOneButton.tag = story.story[0].choice1Destination // = 2
        optionTwoButton.tag = story.story[0].choice2Destination // = 1
    }

    @IBAction func choiceClicked(_ sender: UIButton) {
        var storyIndex = sender.tag
        storyLabel.text = story.story[storyIndex].title
        
        optionOneButton.setTitle(story.story[storyIndex].choice1, for: .normal)
        print("Option 1 Choice: \(story.story[storyIndex].choice1)" )
        optionTwoButton.setTitle(story.story[storyIndex].choice2, for: .normal)
        print("Option 2 Choice: \(story.story[storyIndex].choice2)" )

        print("Current Tag: \(storyIndex)")
        optionOneButton.tag = story.story[storyIndex].choice1Destination
        print("Option 1 Button Tag = \(story.story[storyIndex].choice1Destination)")
        optionTwoButton.tag = story.story[storyIndex].choice2Destination
        print("Option 2 Button Tag = \(story.story[storyIndex].choice2Destination)")
    }
    
}

