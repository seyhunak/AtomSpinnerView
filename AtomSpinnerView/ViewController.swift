//
//  ViewController.swift
//  AtomSpinnerView
//
//  Created by Seyhun Akyurek on 20/07/15.
//  Copyright (c) 2015 seyhunak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var atomSpinnerView: AtomSpinnerView!
    @IBOutlet weak var startSpinner: UIButton!
    
    @IBAction func startSpinner(sender: UIButton) {
       visible = !visible
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateSpinner()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var visible: Bool = false {
        didSet {
          updateSpinner()
        }
    }
    
    func updateSpinner() {
     
      if(visible) {
        dismiss()
        
      } else {
        show()
      }
        
    }
    
    func isVisible() -> Bool {
        return self.atomSpinnerView.alpha == 1
    }
    
    func show() {
        atomSpinnerView.startAllAnimations(self)

        self.startSpinner.setTitle("Stop Spinner!", forState: UIControlState.Normal)
        self.atomSpinnerView.hidden = false
    }

    func dismiss() {
        if(isVisible() == true) {
            self.atomSpinnerView.hidden = true
            self.startSpinner.setTitle("Start Spinner!", forState: UIControlState.Normal)

        }
    }
    
}

