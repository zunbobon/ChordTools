//
//  Chords.swift
//  ChordTools
//
//  Created by KatsuhikoTamura on 2018/05/21.
//  Copyright © 2018年 9bit.co. All rights reserved.
//

import Foundation


class ChordBase {
    let name:String
    let jName:String //和
    let kName:String //カナ
    let symbol:String //記号
    let symbol2:String //記号
    let intvl:Array<Int> //ベース音からのinterval半音数
    let count:Int
    
    init(name:String,jName:String,kName:String,symbol:String,symbol2:String,intvl:Array<Int>){
        
        self.name = name
        self.jName = jName
        self.kName = kName
        self.symbol = symbol
        self.symbol2 = symbol2
        self.intvl = intvl
        self.count = intvl.count
    }
}

//各コード
class Chord {
    let name:String
    let name2:String
    let name3:String
    //let notes:Array<BasicNote>
    
    
    init(notename:String,cdname:String,sym1:String,sym2:String, intvl:Array<Int>){
        self.name = notename + cdname
        self.name2 = notename + cdname
        self.name3 = notename + cdname
        
        //TODO: funcで実構成noteの配列作る
        //self.notes= intvl
        
    }
    
    /* 転回形 */
    func inversion(n:Int) -> [BasicNote] {
        let invertedNotes:[BasicNote] = []
        return invertedNotes
    }
}

/////////////////////////////////////////////////////////

let major = ChordBase(name:"major",
                  jName:"長三和音",
                  kName:"メジャー",
                  symbol:"",
                  symbol2:"maj",
                  intvl:[0,4,7]
)

let minor = ChordBase(name:"minor",
                  jName:"短三和音",
                  kName:"マイナー",
                  symbol:"m",
                  symbol2:"min",
                  intvl:[0,3,7]
)

let diminish = ChordBase(name:"diminish",
                     jName:"減三和音",
                     kName:"ディミニッシュ",
                     symbol:"m-5",
                     symbol2:"dim",
                     intvl:[0,3,6]
)

let augment = ChordBase(name:"augment",
                    jName:"増三和音",
                    kName:"オーギュメント",
                    symbol:"+5",
                    symbol2:"aug",
                    intvl:[0,4,8]
)
let sus4 = ChordBase(name:"sus4",
                 jName:"サスフォー",
                 kName:"サスフォー",
                 symbol:"sus4",
                 symbol2:"sus4",
                 intvl:[0,5,7]
)


let chordArray = [major,minor,diminish,augment,sus4]


func makeChordMap(){
    
    for note in base12NoteArray {
        for chord in chordArray {
            makeChord(basicNote:note,chordBase:chord)
        }
    }
}

func makeChord(basicNote:BasicNote, chordBase:ChordBase){
    
   return Chord(notename:basicNote.eNameFlat,cdname:String,sym1:String,sym2:String, intvl:Array<Int>)
    
    
}

