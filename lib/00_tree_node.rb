
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

    def parent=(parent)
        @parent = parent
        parent.children << self unless parent == nil
    end
end