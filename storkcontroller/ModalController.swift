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
        self.view.addSubview(self.navBar)
    }
    @objc func hide(){
        
        self.dismiss(animated: true, completion: nil)
    }
}
