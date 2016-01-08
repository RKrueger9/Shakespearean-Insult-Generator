//
//  Insult.swift
//  Shakespearean Insult Generator
//
//  Created by RKrueger on 12/3/15.
//  Copyright © 2015 RKrueger. All rights reserved.
//

import UIKit

class Insult : NSObject
{
    var firstInsult = ["artless" , "bawdy", "beslubbering" , "bootless" , "churlish" , "cockered" , "clouted" , "craven" , "currish" , "dankish" , "dissembling" , "droning" , "errant" , "fawning" , "fobbing" , "froward" , "frothy" , "gleeking" , "goatish" , "gorbellied" , "impertinent" , "infectious", "jarring" , "loggerheaded" , "lumpish" , "mammering" , "mangled"]
  var secondInsult = ["base-court" , "bat-fowling" , "beef-witted" , "beetle - headed" , "boil-brained" , "clapper-clawed" , "clay-brained" , "common-kissing" , "crook-pated" , "dismal-dreaming" , "dizzy-eyed" , "doghearted" , "dread-bolted" , "earth-vexing" , "elf-skinned" , "fat-kidneyed" , "fen-sucked" , "flap-mouthed" , "fly-bitten" , "folly-fallen" , "fool-born" , "full-gorged" , "guts-gripping" , "half-faced" , "hasty-witted" , "hedge-born" , "hell-hated"];
    var thirdInsult = ["apple-john" , "baggage" , "barnacle" , "bladder" , "boar-pig" , "bugbear" , "bum-bailey" , "canker-blossom" , "clack-dish" , "clotpole" , "coxbomb" , "codpiece" , "death-token" , "dewberry" , "flap-dragon" , "flax-wench" , "flirt-gill" , "foot-licker" , "fustilarian" , "giglet" , "gudgeon" , "haggard" , "harpy" , "hedge-pig" , "horn-beast" , "hugger-mugger" , "jointhead"];
    var finalInsult : [String] = [];
    var pictureArray = ["shakespeare-ironic" , "shakespeare lift" , "shakespeare-love story"]
    
    func findInsult() -> String  // uses RNG to pick the insult from each array, then returns it
    {
        let randomFirst = Int(arc4random_uniform(UInt32(firstInsult.count)));
        let randomSecond = Int(arc4random_uniform(UInt32(secondInsult.count)));
        let randomThird = Int(arc4random_uniform(UInt32(thirdInsult.count)));
        return "Thou \(firstInsult[randomFirst]) \(secondInsult[randomSecond]) \(thirdInsult[randomThird])"

    }
    
    func findPicture() -> Int
    {
        let randomPicture = Int(arc4random_uniform(UInt32(pictureArray.count)));
        return randomPicture;
    }
    
}
