
### AtomSpinnerView

AtomSpinnerView is Atom like animation built with Quartzcode and implemented Swift methods to create your own loading indicator.

![Demo](http://f.cl.ly/items/2K3J3J1a181D1h3X301C/Screen%20Recording%202015-07-20%20at%2006.32%20pm.gif)

#### Installation
Just drop project folder on your application's root.

    git clone git@github.com:seyhunak/AtomSpinnerView.git

### Usage

Create a outlet to get an instance of spinner.

    @IBOutlet weak var atomSpinnerView: AtomSpinnerView!
   
  To start animation, call
  
    atomSpinnerView.show()
 
 To stop animation, call
 
    atomSpinnerView.dismiss()
        
### Authors
Seyhun Akyürek
seyhunak [at] gmail.com

### Thanks
Ibrahim Güldaş 
(Did great job using Quartzcode)

### Suggestions / Bugfixes?
Please issue a pull request, code reviews or simply drop an email.