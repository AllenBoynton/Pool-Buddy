//
//  PoolProblems.swift
//  Pool Buddy
//
//  Created by Allen Boynton on 11/19/17.
//  Copyright © 2017 Allen Boynton. All rights reserved.
//

import Foundation

class Problems {
    fileprivate var _title: String!
    fileprivate var _image: String!
    fileprivate var _solution: String!
    
    var title: String {
        if _title == nil {
            _title = ""
        }
        return _title
    }
    
    var image: String {
        if _image == nil {
            _image = ""
        }
        return _image
    }
    
    var solution: String {
        if _solution == nil {
            _solution = ""
        }
        return _solution
    }
    
    init(title: String, image: String, solution: String) {
        self._title = title
        self._image = image
        self._solution = solution
    }
}

class PoolProblems {
    
    // Stored properties
    fileprivate var _gallery: String!
    fileprivate var _solutions: [Problems]
    
    var gallery: String {
        if _gallery == nil {
            _gallery = ""
        }
        return _gallery
    }
    
    var solutions: [Problems] {
        
        return _solutions
    }
    
    init(gallery: String, problem: [Problems]) {
        self._gallery = gallery
        self._solutions = problem
    }
    
    
    // Class arrays of same category for sections
    
    // Create categories of each item in Equipment menu
    class func poolGallery() -> [PoolProblems] {
        return [self.poolAlgae(), self.poolMetals(), self.poolOrganics() , self.poolDirt()]
    }
    
    
    // All rows within the Gallery category
    fileprivate class func poolAlgae() -> PoolProblems {
        
        var solutions = [Problems]()
        
        solutions.append(Problems(title: "Green Algae", image: "Green Algae", solution: "If your water is cloudy with a green color, you may be experiencing green algae.\n\n\u{2022} To combat green algae, you should perform the following steps:\n\n\u{2022} Check that your filter is operating properly\n\u{2022} Clean your filter with a filter cleaner\n\u{2022} If necessary, add the recommended algaecide for the type of algae you have to kill the algae\n\u{2022} Add flocculent to your pool to drop the small, non-filterable particles to the bottom for easy removal through vacuuming\n\u{2022} Be sure that you are using an algaecide as part of your weekly pool maintenance and keep your chlorine level at 1-3ppm.\n\u{2022} Check for metals in the water. Copper can cause the water to have a clear green look to it."))
        
        solutions.append(Problems(title: "Yellow Mustard Algae", image: "Mustard Yellow Algae", solution: "If you have the presence of yellow slime on your pool surface, you may have yellow or mustard algae.\n\n\u{2022} To eliminate yellow/mustard algae from your pool, you should:\n\n\u{2022} Check that the filter is working properly\n\u{2022} Clean your filter with filter cleaner if necessary\n\u{2022} Brush the affected areas\n\u{2022} Add a 7.4% copper-based algaecide – designed to control mustard algae\n\u{2022} If necessary, add flocculent to the water to drop the particles that are too small to be filtered to the bottom of the pool\n\u{2022} Vacuum the pool to remove debris"))
        
        solutions.append(Problems(title: "Black Algae", image: "Black Algae", solution: "If you can see black or dark green spots in your pool, you may be experiencing black algae.\n\n\u{2022} To eliminate black algae, complete the following steps:\n\n\u{2022} Check that your filter is operating properly\n\u{2022} Clean your filter with a filter cleaner\n\u{2022} Add a high concentrated algaecide such as a 7.4% copper-based algaecide\n\u{2022} Brush the algae spots with a stiff brush\n\u{2022} Repeat algaecide treatment if necessary\n\u{2022} Vacuum algae debris and particles from the bottom of the pool\n\u{2022} Be sure that you are shocking and adding algaecide weekly as part of your pool maintenance routine\n\u{2022} Have the water checked for metals. Black spots that look like algae can sometimes be a metal stain."))
        
        return PoolProblems(gallery: "Pools with Algae Problems", problem: solutions)
    }
    
    
    // All rows within the Gallery category
    fileprivate class func poolMetals() -> PoolProblems {
        
        var solutions = [Problems]()
        
        solutions.append(Problems(title: "Metal Rust Stains", image: "Metal Rust Stains", solution: "If you are experiencing rust or stains in your pool, there are a few possible causes:\n\n\u{2022} You may have excessive amounts of dissolved metals in your water\n\u{2022} You can use a stain control to prevent staining from iron, copper and manganese. You can prevent future stains by using a stain control at least once a month.\n\u{2022} Your pool water may be unbalanced\n\u{2022} Test your water to determine the pH and total alkalinity levels. Your TA level should be between 120-150 ppm. Add pH up or pH down to bring the pH level between 7.2 - 7.6. Be sure to test your pool every 2-3 days to ensure proper water balance"))
        
        solutions.append(Problems(title: "Copper Metal Stains", image: "Copper Metal Stains", solution: "If you are experiencing water that is green yet clear, you probably do not have an algae issue - but perhaps too much copper in the water.\n\nBy adding a stain control, you can reduce the buildup of metals in the water. You should test the water for pH and total alkalinity levels. Your pH level should be between 7.2 – 7.6, so add pH up or pH down as necessary."))
        
        solutions.append(Problems(title: "Iron Metal Stains", image: "Iron Metal Stains", solution: "If your water has a reddish or brown tint, you may have too much iron in the water.\n\nTo eliminate excess metals in your pool, you should add a stain control to reduce the buildup of metals in the water. This can both remove and prevent metallic stains from vinyl, fiberglass, plaster, gunite and concrete pool surfaces. A stain control should be part of your regular maintenance routine."))
        
        solutions.append(Problems(title: "Manganese Metal Stains", image: "Manganese Metal Stains", solution: "If your water has a reddish or brown to purple tint or stains, you may have too much manganese in the water.\n\nTo eliminate excess metals in your pool, you should add a stain control to reduce the buildup of metals in the water. This can both remove and prevent metallic stains from vinyl, fiberglass, plaster, gunite and concrete pool surfaces. A stain control should be part of your regular maintenance routine."))
        
        solutions.append(Problems(title: "Calcium Deposits", image: "Calcium Deposits", solution: "If you are noticing calcium/scale deposits in your pool, there could be a few reasons:\n\nYour pH or alkalinity levels are too high\nTest your pool water to determine the pH level and add pH up or pH down to bring the level to the range of 7.2 – 7.6.\n\nThe calcium content may be too high in your pool\nDilute your pool water with water of a lower calcium hardness. You can also add a stain\tcontrol to prevent calcium buildup in the filter plumbing and on pool surfaces."))
        
        return PoolProblems(gallery: "Pools with Metal Problems", problem: solutions)
    }
    
    
    // All rows within the Gallery category
    fileprivate class func poolOrganics() -> PoolProblems {
        
        var solutions = [Problems]()
        
        solutions.append(Problems(title: "Water Line Problems", image: "Oily Water Line", solution: "Scum, Stains and Scale can build-up easily at the waterline on swimming pools. Ugly to look at, and damaging to vinyl or plaster surfaces.\n\n\u{2022} If you’re like me, you’ll do almost anything to remove unsightly marks on a pool, and having worked on pools most of my life, I’ve had the chance to try many methods of removing pool stains.\n\n\u{2022} Waterline stains can be particularly vexing however, because of their location (high on the wall), orientation (vertical) and often advanced condition (stain severity).\n\n\u{2022} There are 3 types of swimming pool water-line problems – Scum, Stains(See Metal Stains) and Scale(See Calcium Deposits).\n\n\u{2022} Waterline oil build up stains are those that won’t scrub off easily, and may be below the tile line. For Vinyl Pools, a chlorine cleanser is too harsh and not recommended for cleaning oily scum lines. To clean the waterline on a vinyl pool liner, use a mild Tile & Vinyl Cleaner, and never use any household (kitchen/bath) cleaner, which would not be good for your pool water.\n\n\u{2022} In the 90’s Enzymes were introduced to the pool industry, as a way to control oily organics – not just for scum-line prevention, but as a way to improve overall water chemistry. Pool Enzymes consume oils and organics, actually digesting them, in the same way that enzymes are used to clean up ocean oil spills.\n\n\u{2022} Use Pool-Perfect-by-Natural-Chemistry if your pool has a Scum problem, from oily pollutants that fall from the skies, or introduced by swimmers – you could benefit from regular treatment with a Pool Enzyme product like Pool Perfect, or using a Scum Ball to soak up the oils. In addition, be sure to soak cartridges or filter sand with a pool filter cleaner once per year, or replace the filter media with new, if oily conditions have existed for several years, or for a single large oil contamination."))
        
        solutions.append(Problems(title: "Organic Stains", image: "Organic Stains", solution: "Stains are those that won’t scrub off easily, and may be below the tile line. Plaster pools that are winterized can often develop waterline stains from leaves and debris, environmental pollution or chemical imbalances, leaving blackish gray marks for the first foot below the water line.\n\nThe quickest way to clean tile and plaster of stains is to acid wash the top part of the pool wall. Lower the water level below the lowest waterline mark in the pool, and use a flower watering can to pour a blend of muriatic acid (or Acid Magic) and water over the stain, as you walk around the edge. A solution of 1 part Acid added to 4 parts water will usually do the trick, but heavier stains will require a stronger mix. Really heavy stains will also require a helper following behind with a sturdy brush on a pole, to scrub the area quickly before rinsing. Rinse the acid off quickly and thoroughly, after about 30-45 seconds, to remove all traces of acid from the walls and steps. Afterwards, check your pH and Alkalinity levels, which will both be lower from the muriatic acid used to clean the walls.\n\nFor Vinyl Pools, you can’t go around pouring acid over vinyl, and it’s not very effective anyway. The first thing to try is a Magic Eraser™, those little white sponges made by Mr. Clean™. They really work well on many vinyl stain types, above or below the water level – but you do need to put some elbow grease on them, and scrub at the vinyl stain.\n\nHowever, not everyone wants to drain a foot of water from their pool, and not everyone is even allowed to, in areas with water restrictions. Another options is an all-over pool chemical treatment, using Stain Free, an all natural stain remover made from ascorbic acid, so it’s gentle on vinyl and fiberglass pools. For the strongest stain remover for all pool types, see the A+ Stain Remover. Note that both products recommend the use of a sequestering agent in addition to the stain remover, to lock up any metals and minerals that can be causing the waterline stains, in addition to a very low Free Chlorine level."))
        
        solutions.append(Problems(title: "Organic Berry Stains", image: "Organic Berry Stains", solution: "To skip the harsh chemicals, consider the Stain Eraser. This product is made of a polymer with a built in mild abrasive to give your scrubbing an extra kick. It also comes with a tile grout scrubber to get in between those fine cracks. There are two different types of heads – one for a concrete pool and the other for a vinyl pool. Attaches to your pool pole to remove those hard to reach pool stains.\n\nIf your stain is all around the waterline of the pool because of material floating at the Pool First Aidtop, use an enzyme-based cleaner such as Natural Chemistry’s Pool First Aid. Enzyme-based cleaners help to break down organic compounds and oils by speeding up the chemical reactions that assist in making stains virtually disappear on their own. Follow up with a good brushing again to make sure you’ve got all the left behind debris and oil.\n\nOrganic pool stains are not so hard to remove, but over time, it will give your pool a dull light-brown appearance. It’s hard to notice because it happens so slowly. Eventually you may decide to drain and acid wash a plaster pool. This is not something that you can do often, as it involves a purposeful stripping of a thin layer of pool plaster. For some pool owners who want to restore the bright white surface – an acid washing can be a good solution, every five years or so."))
        
        return PoolProblems(gallery: "Pools with Organic Stains", problem: solutions)
    }
    
    
    // All rows within the Gallery category
    fileprivate class func poolDirt() -> PoolProblems {
        
        var solutions = [Problems]()
        
        solutions.append(Problems(title: "Surface Debris", image: "Surface Debris", solution: "Be sure the area around your pool is clean or else that debris will end up in your water. I recommending rinsing and brushing your pool deck once a week. It’s also wise to keep your filter area clean and free of debris so you have easy-access to your equipment without being grossed out by “slimy things.”\n\nRemember, a clean pool is a happy pool, and clean pools are more enticing to swim in. If you get into the habit of having a dirty pool, you can bet your sorry ass that no one will want to swim in it, or you’ll be force to do some last minute spot-vacuuming. This causes stress and will lead you to developing these bad habits. So let’s recap:\n\n\u{2022} Skim your water surface daily\n\u{2022} Brush your pool twice a week\n\u{2022} Vacuum your pool every other day (if needed)\n\u{2022} Brush and rinse the pool deck weekly\n\u{2022} Keep the filter area free of debris\n\nThat’s it! With proper cleaning, circulation, and chemistry you won’t have any issues and you’ll enjoy using your pool a lot more."))
        
        solutions.append(Problems(title: "Extremely Dirty", image: "Extremely Dirty", solution: "Hit Hard\n\nBegin your efforts when you have as much time as possible, preferably several hours in a row, to work on the pool. You will also need time to follow up at least twice a day for the next several days. The more concentrated time you can spend, the quicker the entire process will go. Set the pump timer/pool automation system to run the pump continuously, and leave it running 24/7 until the water is completely clear. Now you are ready to start killing the algae.\n\nThe general process is: Add enough chlorine to bring the pool up to shock level. Wait half an hour. Then test the FC level, and add enough chlorine to bring the FC back up to shock level. Repeat this cycle: test, add chlorine, wait, as many times as you have time for, or until the FC level remains nearly at shock level after a one hour wait.\n\nYou always test the FC level and only add as much chlorine as needed to bring it back up to shock level. PoolMath is very handy for this since you can enter your pool size, the test result in the Now column, and shock level in the Goal column, and it will tell you how much bleach to add. The first few times the FC level is likely to be either zero or quite low. Once the FC level is still a substantial fraction of shock level after half an hour, you can switch to waiting one hour between tests.\nDuring the first half hour wait, get a skimmer net and remove everything solid that you can from the pool. If the algae has only been growing for a couple of days that might not be very much, but if the pool has been closed for a while there may be lots of leaves and other debris in there. Be as thorough as you can, given that you probably won't be able to see what you are doing.\n\nOnce the green starts to fade you should brush the entire pool. It is important to brush everywhere while the FC level is high. That means ladders and steps as well as the entire pool surface. Algae can survive high chlorine levels if it has formed a biofilm on a surface. By brushing, you disrupt the biofilm and expose the algae to the chlorine. Continue brushing once a day until the algae is all dead.\n\nAfter several cycles, possibly quite a few cycles if the pool has had algae for a very long time, the FC level will be falling only slightly after an hour's wait. At that point, you can bring the pool back up to shock level one last time, and then move on to the follow up stage. If you are doing all this in the morning, and the CYA level is below 60, you should check the FC level one more time in the mid afternoon and bring it back up to shock level if needed.\n\nFollow Up\n\nTo make sure you got all of the algae, it is important to maintain the pool at shock level until testing shows that all the algae is gone. Continue testing the water at least twice a day (morning and evening) and bringing it back up to shock level if needed. Algae can be hiding in obscure places, like lighting niches or under a ladder or in the plumbing. Continued high FC levels will kill all of the algae eventually. It is also important to brush the entire pool once a day until the algae is completely gone.\n\nTo see if you got all of the algae, measure the FC level after sunset and then measure it again very early in the morning, this is called the Overnight Chlorine Loss Test (OCLT). If the FC remained stable (within 1.0ppm of the same reading) overnight, and the CC level is 0.5 or lower then all of the algae is gone.\n\nOnce most of the algae is dead, the water will turn milky or gray instead of green. It can still take the filter up to a week to clear the water from this point. A sand filter is the slowest to clear up the pool, while a DE filter can often do it in a couple of days.\n\nWhile that is happening, you should keep an eye on the filter pressure and backwash/clean the filter any time the pressure goes up by 20-25% over your clean pressure. DE filters will often need to be backwashed a couple of times a day for the first day or two. Sand and cartridge filters will usually last a couple of days between cleanings. If in doubt, clean/backwash the filter extra times rather than risk letting it get clogged up. If your filter pressure is rising quickly and you are not able to backwash as needed, switching to the Recirculate mode, if available, on your filter's multi-port valve can keep the water moving until you able to properly monitor your filter. Do not run through a solar panel system on Recirculate or you could clog the tubes. If you have a SWG, check that the cell also does not clog up with debris when running on Recirculate, remove the cell if possible.\n\nIf you have a sand filter and are not seeing daily improvement in the water clarity, it may be a good idea to inspect your sand and Deep Clean your Sand Filter to ensure it is operating correctly. You can also Add DE to a Sand Filter to help it more quickly clear up the pool.\n\nIf you are in a huge hurry, and have a sand or DE filter, it is possible to do a floc treatment to clean up the dead algae after the FC level holds steady overnight. Flock treatments can often clean up the water overnight, but TFP does not recommend them. They are an additional effort and expense, they don't always work completely, and they increase the risk that the algae will come back.\n\nGetting algae is a pain but sometimes unavoidable. Every pool and every situation is a little different. If there is something I didn't cover, or you have questions, or things don't go exactly the way I described, feel free to start a new topic in the Algae - Prevention and Treatment section and get advice tailored to your specific situation. If you are properly prepared, hit hard, and follow up thoroughly, you can have the pool cleaned up in under a week and be back to enjoying your sparkling oasis!"))
        
        solutions.append(Problems(title: "Cloudy Water", image: "Cloudy Water", solution: "If you are experiencing cloudy or dull water, there could be several causes:\n\nYour filter may be unable to remove small particles\nYou can use a water clarifier. When used on a regular basis, it can \tprevent small particle accumulation.\n\nYour filter may need to be cleaned\nClean your filter at least twice a season with a filter cleaner to remove \tscale, dirt, oils and grease for maximum efficiency. Be sure to \tkeep your filter running 6-8 hours a day and backwash regularly, if \tapplicable.\n\nYour chlorine level may be low\nShock the pool to quickly raise the chlorine level. To prevent your \tchlorine level from getting too low (less than 1ppm), use shock as \tpart of your weekly maintenance schedule.\n\nYour pH level and/or alkalinity may be too high\nTest pH and total alkalinity levels every few days balance as needed. \tThis level should be between 7.2-7.6.\n\nYou may have a high concentration of dissolved metals in the water\nYou can use a stain control to prevent and remove metallic stains from\tvinyl, fiberglass, plaster, gunite and concrete pool surfaces. When\tused on a regular basis, a stain guard can prevent the buildup of\tdissolved metals that can cause staining."))
        
        return PoolProblems(gallery: "Pools with Dirty Water", problem: solutions)
    }
}
