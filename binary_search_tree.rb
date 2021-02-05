class BST
    attr_reader :node, :left, :right
    #initializing the  binary search tree
    def initialize(data)
        @node = data
        @left = nil
        @right = nil
    end

    #getting the binary search tree
    def data
        @node
    end

    #inserting data in the binary search tree
    def insert(data)
        if @node.nil?
            @node = BST.new(data)
        elsif data <= @node
            @left.nil? ? @left = BST.new(data) : @left.insert(data)
        else
            @right.nil? ? @right = BST.new(data) : @right.insert(data)
        end
    end

    # def inorder_traversal(bst_node, all_data)
    #     if bst_node.nil?
    #         return
    #     end
    #     inorder_traversal(bst_node.left, all_data)
    #     all_data << bst_node.data
    #     inorder_traversal(bst_node.right, all_data)
    # end

    def each(&block)
        if @node.nil? 
            return
        end
        @left.each(&block) if @left 
        yield node
        @right.each(&block) if @right
      end


end
