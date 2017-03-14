
import UIKit

class ViewController: UIViewController {

    var binaryTree: Node!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.binaryTree = Node(value: 10)
        self.binaryTree.insert(value: 15)
        self.binaryTree.insert(value: 8)
        self.binaryTree.printTree()
        self.binaryTree.insert(value: 9)
        self.binaryTree.printTree()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
