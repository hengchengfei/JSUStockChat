//
//  JSUStateModel.swift
//  JSUStockChartDemo
//
//  Created by 苏小超 on 16/7/8.
//  Copyright © 2016年 com.jason.su. All rights reserved.
//

import Foundation

import ObjectMapper

public class JSUNameModel:Mappable{
    public var en :String?
    public var szh:String?
    
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        en <- map["en"]
        szh <- map["szh"]
    }
}

public class JSUStateModel: Mappable {
    public var code:String?
    public var tick :String?
    public var name :JSUNameModel?
    public var price:Double?
    public var chg:Double?
    public var ratio:Double?
    public var min:Double?
    public var max:Double?
    public var open:Double?
    public var close:Double?
    public var state :String?
    public var scode:Int?
    public var lsdt : String?
    public var tun:Double?
    public var dt:Double?
    public var volume:Double?
    
    public init(){
    }
    
    required public init?(_ map: Map) {
    }
    
    public func mapping(map: Map) {
        code <- map["code"]
        tick <- map["tick"]
        name <- map["name"]
        price <- map["price"]
        chg <- map["chg"]
        ratio <- map["ratio"]
        min <- map["min"]
        max <- map["max"]
        open <- map["open"]
        close <- map["close"]
        state <- map["state"]
        
        scode <- map["scode"]
        lsdt <- map["lsdt"]
        tun <- map["tun"]
        dt <- map["dt"]
        volume <- map["volume"]
    }
}