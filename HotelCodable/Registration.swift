//
//  Registration.swift
//  HotelCodable
//
//  Created by Aryavansh on 13/01/26.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var email: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var wifi: Bool
    var roomType: RoomType
    
}
