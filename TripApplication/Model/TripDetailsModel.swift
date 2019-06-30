//
//  TripDetailsModel.swift
//  TripApplication
//
//  Created by kashee on 30/06/19.
//  Copyright © 2019 kashee. All rights reserved.
//

import Foundation


struct TripDetails : Decodable {
    
    let message : String?
    let payload : Payload?
    
    
}


struct Payload : Decodable {
    
    let roundTripInfo : RoundTripInfo!
    let tenders : [Tender]!
    
}

struct Tender : Decodable {
    
    let carrierTenderStatus : Int!
    let driverTenderStatus : Int!
    let roundTripStatus : Int!
    let tenderRequestId : String!
    let trips : [Trip]!
    
}


struct Trip : Decodable {
    
//    let acceptanceRequiredBy : AnyObject!
//    let carrierCode : AnyObject!
    let carrierTenderStatus : Int!
    let customerCode : String!
    let customerName : String!
    let driverTenderStatus : Int!
    let materialW : Int!
    let materialWUnit : String!
    let sl4RoundTripId : Int!
    let sl4TripId : Int!
    let srcTripId : String!
    let stopsInfo : [StopsInfo]!
    let tenderRequestId : String!
    let totalDist : Float!
    let totalDistUnit : String!
//    let totalDrivingTime : AnyObject!
    let totalDrivingTimeUnit : String!
//    let totalPackages : AnyObject!
//    let totalPieces : AnyObject!
//    let totalVol : AnyObject!
//    let totalVolUnit : AnyObject!
    let totalW : Int!
    let totalWUnit : String!
//    let trailerNumber : AnyObject!
//    let trailerType : AnyObject!
    let tripCreationDate : String!
    let tripEndDate : String!
    let tripSeq : Int!
    let tripStartDate : String!
    let tripStatus : String!
    let truckNumber : String!
    let truckType : String!
    
    
    
}


struct StopsInfo : Decodable {
    
    let actualArrDateTime : String!
    let address : Addres!
    let appointmentRequired : Bool!
    let carrierTenderStatus : Int!
//    let distFromLastStop : AnyObject!
    let distFromLastStopUnit : String!
    let dockCode : String!
    let driverTenderStatus : Int!
//    let dropVol : AnyObject!
//    let dropVolUnit : AnyObject!
//    let dropW : AnyObject!
//    let dropWUnit : AnyObject!
    let geoFenceStatusUpdate : Bool!
    let isAppointmentTimeUpdated : Bool!
//    let loadHours : AnyObject!
    let locationId : String!
    let locationName : String!
    let locationType : String!
//    let pickW : AnyObject!
//    let pickWUnit : AnyObject!
//    let pickedVol : AnyObject!
//    let pickedVolUnit : AnyObject!
    let plannedArrDateTime : String!
    let podCaptureTime : String!
//    let podContactName : AnyObject!
//    let podContactNo : AnyObject!
//    let podStatusCode : AnyObject!
    let roundTripStatus : Int!
    let seqNumber : Int!
    let sl4StopId : Int!
    let sl4TripId : Int!
    let srcStopId : String!
    let srcTripId : String!
    let stopStatus : Int!
    let stopType : String!
//    let unloadHours : AnyObject!
    
    
}

struct Addres : Decodable {
    
//    let bldg : AnyObject!
    let city : String!
    let countryCode : String!
    let latitude : String!
    let longitude : String!
//    let postalCode : AnyObject!
//    let scrName : AnyObject!
    let sl4AddressId : Int!
    let state : String!
//    let street : AnyObject!

    
}


struct RoundTripInfo : Decodable {
    
//    let carrierCode : AnyObject!
    let customerCode : String!
    let customerName : String!
    let endDate : String!
    let roundTripStatus : Int!
    let sl4RoundTripId : Int!
    let srcRoundTripId : String!
    let startDate : String!
    let totalDist : Float!
    let totalDistUnit : String!
    let totalDrivingTime : Int!
    let totalDrivingTimeUnit : String!
    let totalPayable : Int!
    let totalPayableUnit : String!
    let totalReceivable : Int!
    let totalReceivableUnit : String!
    let totalW : Int!
    let totalWUnit : String!
    let truckNumber : String!
    let truckType : String!
    
    
}




