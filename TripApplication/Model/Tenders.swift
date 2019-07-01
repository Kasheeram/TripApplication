/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Tenders : Decodable {
	let tender_request_id : String?
	let trips : [Trips]?
	let round_trip_status : Int?
	let driver_tender_status : Int?
	let carrier_tender_status : Int?

//    enum CodingKeys: String, CodingKey {
//
//        case tender_request_id = "tender_request_id"
//        case trips = "trips"
//        case round_trip_status = "round_trip_status"
//        case driver_tender_status = "driver_tender_status"
//        case carrier_tender_status = "carrier_tender_status"
//    }

//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        tender_request_id = try values.decodeIfPresent(String.self, forKey: .tender_request_id)
//        trips = try values.decodeIfPresent([Trips].self, forKey: .trips)
//        round_trip_status = try values.decodeIfPresent(Int.self, forKey: .round_trip_status)
//        driver_tender_status = try values.decodeIfPresent(Int.self, forKey: .driver_tender_status)
//        carrier_tender_status = try values.decodeIfPresent(Int.self, forKey: .carrier_tender_status)
//    }

}
