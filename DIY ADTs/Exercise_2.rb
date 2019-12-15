class Queue 
    attr_reader :arr
    def initialze 
        arr = []
    end

    def enqueue(el)
        arr.push(el)
        el
    end

    def dequeue
        arr.shift
    end

    def peek
        arr.first
    end


end