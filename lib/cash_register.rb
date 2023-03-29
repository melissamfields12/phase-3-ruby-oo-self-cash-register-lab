class CashRegister
    attr_accessor :total, :last_item
    attr_reader :discount, :items
   

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_item = 0
    end

    def add_item title, price, quantity = 1
        quantity.times do 
            self.items << title
    end
        self.last_item = price * quantity
        self.total += price * quantity
end

    def apply_discount
        if discount > 0
            @total -= @total * (@discount / 100.0)
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
    end
end

    def items
        @items
    end



    def void_last_transaction
        @total -= @last_item
    end

end

