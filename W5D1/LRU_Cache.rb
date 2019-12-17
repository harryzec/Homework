class LRUCache
    def initialize(size)
        @size = size 
        @cache = []
    end

    def count
      @cache.length
    end

    def add(ele)
      if @cache.include?(ele)
        @cache.delete(ele)
        @cache << ele
      elsif count >= @size
        @chache.shift
        @cache << ele
      else 
        @cache << ele
      end
    end

    def show
      @cache
    end

    private
    # helper methods go here!

  end