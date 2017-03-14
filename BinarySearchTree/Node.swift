

import Foundation

class Node {
    
    var left: Node?
    var right: Node?
    var data: Int
    
    init(value: Int) {
        
        self.data = value
    }
    
    func insert(value: Int) {
        
        if value <= self.data {
            
            if self.left == nil {
                
                left = Node(value: value)
            } else {
                
                left?.insert(value: value)
            }
        } else {
            
            if self.right == nil {
                
                right = Node(value: value)
            } else {
                
                right?.insert(value: value)
            }
        }
    }
    
    func contains(value: Int) -> Bool {
        
        if value == self.data {
            
            return true
        } else if value < self.data {
            
            if self.left == nil {
                
                return false
            } else {
                
                return (left?.contains(value: value))!
            }
        } else {
            
            if self.right == nil {
                
                return true
            } else {
                
                return (right?.contains(value: value))!
            }
        }
    }
    
    func printTree() {
        
        if self.left != nil {
            
            self.left?.printTree()
        }
        print(self.data)
        
        if self.right != nil {
            
            self.right?.printTree()
        }
    }
}
