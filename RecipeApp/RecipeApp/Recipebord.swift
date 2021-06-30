//
//  Recipebord.swift
//  RecipeApp
//
//  Created by DCS on 24/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Recipebord: UIViewController {
    
    
    
     var myTableView = UITableView()
    
    var recipeArray = ["Burgar", "Sandwich", "PaniPuri","Pizza","GarlicBred","Soup","RajCachori"]
    var recipeDesc = ["The best thing about preparing this quick Vegetable Burger at home is that you can add your own twist of flavours and ingredients to it. For instance, if you are fond of cheesy sauces, you can use a cheesy mayo and a cheese slice and let it melt. To make it even more delicious you can add any sauce or condiment of your choice. It also makes for a simple snack dish, whenever those untimely hunger pangs strike. If you are on your fat loss journey then, this can certainly be your companion, all you need to do is just tweak the recipe as per your preference and avoid fatty substances. Also prepare the patty in a microwave by just brushing some oil, this will bring down the calorie count like anything! Made with fresh veggies and a few spices, this snack recipe is apt for school lunch box, road trips and game nights. Kids will certainly love this easy recipe!So, try out this easy recipe and enjoy it with your loved ones.", "cup of tightly packed coriander leaves (cilantro) and 1 to 2 green chillies in fresh water for a few times. Drain all the water.Then in a small blender or a chutney grinder jar, add the coriander leaves, ½ teaspoon chaat masala powder and the green chilies (chopped) You can roughly chop the coriander leaves and green chillies if you prefer. Finally, season everything with a few pinches of salt as chaat masala already has salt in it", "Many people wonder how to make street style Atta & Sooji pani puri or gol gappa at home. If this has been on your mind, this easy Pani Puri recipe will change things. To make it simple for you, here is a pani puri recipe with photos and step-by-step instructions. A perfect balance of crisp and tang, this super easy pani puri recipe will become your favourite. Pani Puri or Gulgappa is perhaps the tastiest Indian street food that you can try it at home. They are the ultimate favourite across India and have many versions. But can you make street style gol gappe at home? Because eating them outside is actually quite risky. Firstly, we are not sure of the water used- whether it is filtered or not, then it has several uncooked and cold ingredients like boiled potatoes and peas which can quickly develop bacteria. Hence it is important to have Pani Puri or Golgappa from a trusted vendor. But it is the best idea is to make Pani Puri recipe at home. Making Pani Puri or Gol gappa is very simple if you have just the right recipe. Here is an easy, step-by-step Golgappa recipe to guide you through the making of this delicious street food!", "This recipe includes instructions for how to create a chewy crust that’s lightly crisp on the bottom using all-purpose flour or bread flour. It makes a dough that is far better (and cheaper!) than any store bought dough or restaurant pizza I have tried.Even the tomato sauce is made from scratch! It’s wonderfully simple and flavorful, and is the perfect base for layering on lots of cheese and your choice of toppings.","Crispy, toasty garlic bread gets sliced in half down its length, spread with butter and garlic, and then baked open-faced in the oven. Broil it at the end for extra crispiness.Soft garlic bread gets sliced like an accordion (slice as if cutting slices, but don't go all the way through), then slather the butter mixer between the slices. Wrap the bread up in foil, then bake. This will keep the bread soft while infusing garlicky-butter into each slice", "Bring on the heat! Seasonings like smoked paprika, canned chipotles in adobo sauce, and fresh and dried chiles fill these hearty soup recipes with bold flavor.", "Raj kachori recipe with step by step pics. Raj kachori is aptly called as the king of all kachoris or a king sized kachori simply because it is royal, rich and splendid dish. The raj kachori recipe I am sharing is A slightly simplified or easier version as I have not added any lentil or besan (gram flour) stuffing in the kachori. Instead I have added the besan (gram flour) in the dough."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recipes"
        setTableView()
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setTableView(){
        myTableView.frame = self.view.frame
        myTableView.backgroundColor = UIColor.clear
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.separatorColor = UIColor.clear
        myTableView.backgroundColor = UIColor.clear
        self.view.addSubview(myTableView)
        
        myTableView.register(RecipeCell.self, forCellReuseIdentifier: "Cell")
    }
    
}

extension Recipebord: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RecipeCell
        
       cell.userImage.image = UIImage(named: recipeArray[indexPath.row])
        cell.namelbl.text = recipeArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetalisVC()
         vc.desc = recipeDesc[indexPath.row]
            vc.image = UIImage(named: recipeArray[indexPath.row])!
            vc.lbl = recipeArray[indexPath.row]
           navigationController?.pushViewController(vc, animated: true)
    }
}

