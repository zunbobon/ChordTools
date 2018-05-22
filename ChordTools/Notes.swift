//
//  Notes.swift
//  Chordworks
//
//  Created by KatsuhikoTamura on 2016/11/25.
//  Copyright © 2016年 9bit.co. All rights reserved.
//

import Foundation

////baseになる全noteの配列////
var NotesArray = [Note]();
/////////////////////////


///音名配列
let eNameSharpArray = ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"];
let eNameFlatArray = ["C","D♭","D","E♭","E","F","G♭","G","A♭","A","B♭","B"];
let iNameSharpArray = ["ド","ド#","レ","レ#","ミ","ファ","ファ#","ソ","ソ#","ラ","ラ","シ"];
let iNameFlatArray = ["ド","ラ♭","レ","ミ♭","ミ","ファ","ソ♭","ソ","ラ♭","ラ","シ♭","シ"];
let jNameSharpArray = ["ハ","嬰ハ","二","変ホ","ホ","へ","嬰へ","ト","変イ","イ","変ロ","ロ"];
let jNameFlatArray = ["ハ","嬰ハ","二","変ホ","ホ","へ","嬰へ","ト","変イ","イ","変ロ","ロ"];

//let noteNameArray = [("C","ド","ハ"),("C#","ド#","嬰ハ")]


//12音用struct
struct BasicNote{
    var eNameSharp:String
    var eNameFlat:String
    var iNameSharp:String //italian name ドレミ
    var iNameFlat:String //italian name ドレミ
    var jNameSharp:String //和名
    var jNameFlat:String //和名
    
    init(num:Int){
        eNameSharp = eNameSharpArray[num]
        eNameFlat = eNameFlatArray[num]
        iNameSharp = iNameSharpArray[num]
        iNameFlat = eNameFlatArray[num]
        jNameSharp = jNameSharpArray[num]
        jNameFlat = jNameFlatArray[num]
    }
}

var base12NoteArray:[BasicNote] = []



//各音struct
struct Note {
    let basicNote:BasicNote
    let noteNumber:Int
    let c:Int
    let yc:Int //yamaha
    //let keyNum:Int
    //let freq:Double
    
    init(noteNum:Int){
        noteNumber = noteNum;
        switch(noteNumber){
            
        case 0...11:
            c = -1
        case 12...23:
            c = 0
        case 24...35:
            c = 1
        case 36...47:
            c = 2
        case 48...59:
            c = 3
        case 60...71:
            c = 4
        case 72...83:
            c = 5
        case 84...95:
            c = 6
        case 96...107:
            c = 7
        case 108...119:
            c = 8
        case 120...127:
            c = 9
        default:
            c = 0
        }
        yc = c + 1;
        let n = noteNumber % 12;
        basicNote = base12NoteArray[n]
    }// init
}


//音程テーブル　半音の個数に対応
let intervalNameArray = ["完全1度","短2度","長2度","短3度","長3度","完全4度","増4度:減5度",
                         "完全5度","増5度:短6度","長6度","短7度","長7度","完全8"]

//音階
let scale = (major: [0,2,4,5,7,9,11] ,
             minior1: [0,2,3,5,7,8,10],
             minior2: [0,2,3,5,7,8,11],
             minior3: [0,2,3,5,7,9,11]
)









