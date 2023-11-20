//
//  FoodListView.swift
//  CKJY Final
//
//  Created by Celine Quek on 18/11/23.
//

import SwiftUI

struct FoodListView: View {
    
    @State private var ingredients = [
        Ingredient(name: "Agar-agar", points: "1", healthyRating: .neutral),
        Ingredient(name: "Alcohol", healthyRating: .neutral),
        Ingredient(name: "Apple cider", healthyRating: .neutral),
        Ingredient(name: "Almond butter", healthyRating: .healthy),
        Ingredient(name: "Bacon", healthyRating: .unhealthy),
        Ingredient(name: "Barley malt syrup", healthyRating: .neutral),
        Ingredient(name: "Beef fat", healthyRating: .unhealthy),
        Ingredient(name: "BHA (butylated hydroxyanisole", healthyRating: .unhealthy),
        Ingredient(name: "BHT (butylated hydroxytoluene", healthyRating: .unhealthy),
        Ingredient(name: "Brown sugar", healthyRating: .unhealthy),
        Ingredient(name: "Butter", healthyRating: .unhealthy),
        Ingredient(name: "Caraway seeds", healthyRating: .healthy),
        Ingredient(name: "Carrageenan", healthyRating: .neutral),
        Ingredient(name: "Cheese", healthyRating: .neutral),
        Ingredient(name: "Cheese spreads", healthyRating: .unhealthy),
        Ingredient(name: "Chicken", healthyRating: .neutral),
        Ingredient(name: "Chia seeds", healthyRating: .healthy),
        Ingredient(name: "Chives", healthyRating: .healthy),
        Ingredient(name: "Cilantro", healthyRating: .healthy),
        Ingredient(name: "Cinnamon", healthyRating: .healthy),
        Ingredient(name: "Clarified butter", healthyRating: .healthy),
        Ingredient(name: "Coconut flour", healthyRating: .healthy),
        Ingredient(name: "Coconut milk", healthyRating: .healthy),
        Ingredient(name: "Coconut nectar", healthyRating: .healthy),
        Ingredient(name: "Coconut oil", healthyRating: .healthy),
        Ingredient(name: "Coconut sugar", healthyRating: .neutral),
        Ingredient(name: "Coconut water", healthyRating: .healthy),
        Ingredient(name: "Coffee", healthyRating: .neutral),
        Ingredient(name: "Corn oil", healthyRating: .unhealthy),
        Ingredient(name: "Cornmeal", healthyRating: .healthy),
        Ingredient(name: "Cottage cheese", healthyRating: .healthy),
        Ingredient(name: "Cranberries", healthyRating: .healthy),
        Ingredient(name: "Dark chocolate", healthyRating: .healthy),
        Ingredient(name: "Date sugar", healthyRating: .neutral),
        Ingredient(name: "Dijon mustard", healthyRating: .healthy),
        Ingredient(name: "Dragon fruit", healthyRating: .healthy),
        Ingredient(name: "Edamame beans", healthyRating: .healthy),
        Ingredient(name: "Egg whites", healthyRating: .healthy),
        Ingredient(name: "Egg yolks", healthyRating: .healthy),
        Ingredient(name: "Eggs", healthyRating: .healthy),
        Ingredient(name: "Elderberries", healthyRating: .healthy),
        Ingredient(name: "Fennel", healthyRating: .healthy),
        Ingredient(name: "Fennel seeds", healthyRating: .healthy),
        Ingredient(name: "Figs", healthyRating: .healthy),
        Ingredient(name: "Fish sauce", healthyRating: .neutral),
        Ingredient(name: "Flaxseeds", healthyRating: .healthy),
        Ingredient(name: "Fruits", healthyRating: .healthy),
        Ingredient(name: "Garlic", healthyRating: .healthy),
        Ingredient(name: "Gelatin", healthyRating: .neutral),
        Ingredient(name: "Ginger", healthyRating: .healthy),
        Ingredient(name: "Ginger tea", healthyRating: .healthy),
        Ingredient(name: "Goat cheese", healthyRating: .healthy),
        Ingredient(name: "Gooseberries", healthyRating: .healthy),
        Ingredient(name: "Gouda cheese", healthyRating: .healthy),
        Ingredient(name: "Greek dressing", healthyRating: .healthy),
        Ingredient(name: "Greek yogurt", healthyRating: .healthy),
        Ingredient(name: "Green banana flour", healthyRating: .neutral),
        Ingredient(name: "Green tea", healthyRating: .healthy),
        Ingredient(name: "Guacamole", healthyRating: .healthy),
        Ingredient(name: "Guar gum", healthyRating: .neutral),
        Ingredient(name: "Grits", healthyRating: .healthy),
        Ingredient(name: "Ground beef", healthyRating: .healthy),
        Ingredient(name: "Gruyere cheese", healthyRating: .healthy),
        Ingredient(name: "Hazelnut flour", healthyRating: .neutral),
        Ingredient(name: "Hazulnut oil", healthyRating: .healthy),
        Ingredient(name: "Hemp seeds", healthyRating: .healthy),
        Ingredient(name: "Hemp milk", healthyRating: .healthy),
        Ingredient(name: "Herbs", healthyRating: .healthy),
        Ingredient(name: "Spices", healthyRating: .healthy),
        Ingredient(name: "Hibiscus tea", healthyRating: .healthy),
        Ingredient(name: "Corn syrup", healthyRating: .unhealthy),
        Ingredient(name: "High-fructose corn syrup", healthyRating: .unhealthy),
        Ingredient(name: "Honey", healthyRating: .neutral),
        Ingredient(name: "Hot dogs", healthyRating: .unhealthy),
        Ingredient(name: "Hummus", healthyRating: .healthy),
        Ingredient(name: "Iced tea", healthyRating: .healthy),
        Ingredient(name: "Infused water", healthyRating: .healthy),
        Ingredient(name: "Ketchup", healthyRating: .neutral),
        Ingredient(name: "Kombucha", healthyRating: .healthy),
        Ingredient(name: "Lard", healthyRating: .unhealthy),
        Ingredient(name: "Leek", healthyRating: .healthy),
        Ingredient(name: "Lentil flour", healthyRating: .healthy),
        Ingredient(name: "Lentil soup", healthyRating: .healthy),
        Ingredient(name: "Lettuce", healthyRating: .healthy),
        Ingredient(name: "Lecithin", healthyRating: .neutral),
        Ingredient(name: "Lime juice", healthyRating: .healthy),
        Ingredient(name: "Lingonberry", healthyRating: .healthy),
        Ingredient(name: "Lychee", healthyRating: .healthy),
        Ingredient(name: "Macadamia nuts", healthyRating: .healthy),
        Ingredient(name: "Macadamia nut oil", healthyRating: .healthy),
        Ingredient(name: "Malt extract", healthyRating: .healthy),
        Ingredient(name: "Maltitol", healthyRating: .neutral),
        Ingredient(name: "Maltodextrin", healthyRating: .neutral),
        Ingredient(name: "Maple extract", healthyRating: .healthy),
        Ingredient(name: "Maple nectar", healthyRating: .healthy),
        Ingredient(name: "Maple sugar", healthyRating: .neutral),
        Ingredient(name: "Maple syrup", healthyRating: .neutral),
        Ingredient(name: "Marinara sauce", healthyRating: .healthy),
        Ingredient(name: "Mayonnaise", healthyRating: .neutral),
        Ingredient(name: "Miso", healthyRating: .healthy),
        Ingredient(name: "Mocha", healthyRating: .healthy),
        Ingredient(name: "Molasses", healthyRating: .neutral),
        Ingredient(name: "Mustard", healthyRating: .healthy),
        Ingredient(name: "Nut butter", healthyRating: .healthy),
        Ingredient(name: "Peanut butter", healthyRating: .healthy),
        Ingredient(name: "Almond butter", healthyRating: .healthy),
        Ingredient(name: "Nutmeg", healthyRating: .healthy),
        Ingredient(name: "Nutritional yeast", healthyRating: .healthy),
        Ingredient(name: "Olive oil", healthyRating: .healthy),
        Ingredient(name: "Olives", healthyRating: .healthy),
        Ingredient(name: "Orange blossam water", healthyRating: .healthy),
        Ingredient(name: "Orange", healthyRating: .healthy),
        Ingredient(name: "Oregano", healthyRating: .healthy),
        Ingredient(name: "Papaya", healthyRating: .healthy),
        Ingredient(name: "Paprika", healthyRating: .healthy),
        Ingredient(name: "Parmesan cheese", healthyRating: .healthy),
        Ingredient(name: "Parsley", healthyRating: .healthy),
        Ingredient(name: "Hydrogented oils", healthyRating: .unhealthy),
        Ingredient(name: "Passion fruit", healthyRating: .healthy),
        Ingredient(name: "Peanut oil", healthyRating: .unhealthy),
        Ingredient(name: "Peanut butter", healthyRating: .healthy),
        Ingredient(name: "Peanuts", healthyRating: .healthy),
        Ingredient(name: "Pecan oil", healthyRating: .unhealthy),
        Ingredient(name: "Pecans", healthyRating: .healthy),
        Ingredient(name: "Pepper", healthyRating: .healthy),
        Ingredient(name: "Peppermint tea", healthyRating: .healthy),
        Ingredient(name: "Pickles", healthyRating: .healthy),
        Ingredient(name: "Pine nut oil", healthyRating: .healthy),
        Ingredient(name: "Pine nuts", healthyRating: .healthy),
        Ingredient(name: "Pineapple guava", healthyRating: .healthy),
        Ingredient(name: "Pineapple juice", healthyRating: .healthy),
        Ingredient(name: "Pistachio oil", healthyRating: .healthy),
        Ingredient(name: "Pistachios", healthyRating: .healthy),
        Ingredient(name: "Pomegranate", healthyRating: .healthy),
        Ingredient(name: "Poppy seeds", healthyRating: .healthy),
        Ingredient(name: "Pork", healthyRating: .healthy),
        Ingredient(name: "Portobello mushroom", healthyRating: .healthy),
        Ingredient(name: "Powdered sugar", healthyRating: .unhealthy),
        Ingredient(name: "Poultry", healthyRating: .healthy),
        Ingredient(name: "Processed cheese", healthyRating: .unhealthy),
        Ingredient(name: "Processes food", healthyRating: .unhealthy),
        Ingredient(name: "Protein shake", healthyRating: .healthy),
        Ingredient(name: "Prunes", healthyRating: .healthy),
        Ingredient(name: "Pumpkin", healthyRating: .healthy),
        Ingredient(name: "Pumpkin seeds", healthyRating: .healthy),
        Ingredient(name: "Quark", healthyRating: .healthy),
        Ingredient(name: "Quinoa", healthyRating: .healthy),
        Ingredient(name: "Quinoa flour", healthyRating: .healthy),
        Ingredient(name: "Quinoa pilaf", healthyRating: .healthy),
        Ingredient(name: "Raisins", healthyRating: .healthy),
        Ingredient(name: "Raspberry", healthyRating: .healthy),
        Ingredient(name: "Red currents", healthyRating: .healthy),
        Ingredient(name: "Red palm oil", healthyRating: .healthy),
        Ingredient(name: "Red wine", healthyRating: .neutral),
        
        
    ]
    
    var body: some View {
        NavigationStack {
            List($ingredients) { $ingredient in
                HStack {
                    Image(systemName: ingredient.isEaten ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            ingredient.isEaten.toggle()
                        }
                    VStack {
                        Text(ingredient.name)
                            .strikethrough(ingredient.isEaten)
                        if !ingredient.points.isEmpty {
                            HStack {
                                Text(ingredient.points)
                                Image(systemName: "leaf.fill")
                            }
                            .font(.footnote)
                            .foregroundColor(.gray)
                            .strikethrough(ingredient.isEaten)
                        }
                    }
                }
            }
            .navigationTitle("My Food List")
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}

