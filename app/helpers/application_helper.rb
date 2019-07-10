module ApplicationHelper
    def display_cart
        if !cart.empty?
            cart.each do |p|
                p
            end
        end
    end
end
