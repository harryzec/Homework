class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    
    nodes = [starting_node]
    visited = Set.new()
    
    while !nodes.empty?
        current = nodes.shift
        unless visited.include?(current)
        if current.value == target_value
            return current.value
        else
            nodes += current.neighbors
        end
    end

    nil
end

p bfs(a, "b")
