/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Round_trip_info : Decodable {
	let sl4_round_trip_id : Int?
	let total_dist : Double?
	let total_dist_unit : String?
	let total_driving_time : Double?
	let total_driving_time_unit : String?
	let total_w : Double?
	let total_w_unit : String?
	let start_date : String?
	let end_date : String?
	let customer_name : String?
	let customer_code : String?
	let truck_type : String?
	let truck_number : String?
	let carrier_code : String?
	let src_round_trip_id : String?
	let round_trip_status : Int?
	let total_payable : Int?
	let total_payable_unit : String?
	let total_receivable : Int?
	let total_receivable_unit : String?

//    enum CodingKeys: String, CodingKey {
//
//        case sl4_round_trip_id = "sl4_round_trip_id"
//        case total_dist = "total_dist"
//        case total_dist_unit = "total_dist_unit"
//        case total_driving_time = "total_driving_time"
//        case total_driving_time_unit = "total_driving_time_unit"
//        case total_w = "total_w"
//        case total_w_unit = "total_w_unit"
//        case start_date = "start_date"
//        case end_date = "end_date"
//        case customer_name = "customer_name"
//        case customer_code = "customer_code"
//        case truck_type = "truck_type"
//        case truck_number = "truck_number"
//        case carrier_code = "carrier_code"
//        case src_round_trip_id = "src_round_trip_id"
//        case round_trip_status = "round_trip_status"
//        case total_payable = "total_payable"
//        case total_payable_unit = "total_payable_unit"
//        case total_receivable = "total_receivable"
//        case total_receivable_unit = "total_receivable_unit"
//    }

//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        sl4_round_trip_id = try values.decodeIfPresent(Int.self, forKey: .sl4_round_trip_id)
//        total_dist = try values.decodeIfPresent(Double.self, forKey: .total_dist)
//        total_dist_unit = try values.decodeIfPresent(String.self, forKey: .total_dist_unit)
//        total_driving_time = try values.decodeIfPresent(Double.self, forKey: .total_driving_time)
//        total_driving_time_unit = try values.decodeIfPresent(String.self, forKey: .total_driving_time_unit)
//        total_w = try values.decodeIfPresent(Double.self, forKey: .total_w)
//        total_w_unit = try values.decodeIfPresent(String.self, forKey: .total_w_unit)
//        start_date = try values.decodeIfPresent(String.self, forKey: .start_date)
//        end_date = try values.decodeIfPresent(String.self, forKey: .end_date)
//        customer_name = try values.decodeIfPresent(String.self, forKey: .customer_name)
//        customer_code = try values.decodeIfPresent(String.self, forKey: .customer_code)
//        truck_type = try values.decodeIfPresent(String.self, forKey: .truck_type)
//        truck_number = try values.decodeIfPresent(String.self, forKey: .truck_number)
//        carrier_code = try values.decodeIfPresent(String.self, forKey: .carrier_code)
//        src_round_trip_id = try values.decodeIfPresent(String.self, forKey: .src_round_trip_id)
//        round_trip_status = try values.decodeIfPresent(Int.self, forKey: .round_trip_status)
//        total_payable = try values.decodeIfPresent(Int.self, forKey: .total_payable)
//        total_payable_unit = try values.decodeIfPresent(String.self, forKey: .total_payable_unit)
//        total_receivable = try values.decodeIfPresent(Int.self, forKey: .total_receivable)
//        total_receivable_unit = try values.decodeIfPresent(String.self, forKey: .total_receivable_unit)
//    }

}
