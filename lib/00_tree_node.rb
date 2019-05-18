
# This class represents a node in a tree
# The tree can have multiple children unlike binary tree (left, right)

class PolyTreeNode

    # constructor. Sets value of node
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    # returns parent of the node
    def parent
        @parent
    end

    # returns array of children of the node
    def children
        @children
    end

    # returns the value of the node
    def value
        @value
    end

    # removes node from old parents array of children
    # sets the node's new parent 
    # adds the node to the new parent's array of children
    def parent=(parent)
        @parent.children.delete(self) if @parent != nil
        @parent = parent
        parent.children << self unless parent == nil
    end

    # adds this node to child_node @parent
    def add_child(child_node)
        child_node.parent=(self)
    end

    # sets nil to child_node @parent
    def remove_child(child_node)
        raise "Error: Not a child!" if !@children.include?(child_node)
        child_node.parent=(nil)

    end

    
end