import UIKit
import SPStorkController
import SparrowKit

class  ModalController: UIViewController{
    let navBar = SPFakeBarView.init(style: .stork)
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalPresentationCapturesStatusBarAppearance = true
        self.view.backgroundColor = UIColor.white
        
        self.navBar.leftButton.setTitle("ปิด", for: .normal)
        self.navBar.leftButton.addTarget(self, action: #selector(self.hide), for: .touchUpInside)
        
        let textView = UITextView(frame: CGRect(x: 20.0, y: 200.0, width: 270.0, height: 200.0))
        
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.black
        textView.backgroundColor = UIColor.white
        textView.text = "                           SPStorkController\n    as Apple Music & Mail App modal controller \n\n Modal controller like in Mail or Apple Music application. Similar animation and transition. I tried to recreate all the animations, corner radius and frames. Controller supports gestures and Navigation Bar and works with ScrollView."
        self.view.addSubview(textView)
        self.view.addSubview(self.navBar)
        
        
    }
    @objc func hide(){
        
        self.dismiss(animated: true, completion: nil)
    }
}
