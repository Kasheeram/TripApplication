/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Trips : Codable {
	let sl4_round_trip_id : Int?
	let sl4_trip_id : Int?
	let src_trip_id : String?
	let tender_request_id : String?
	let customer_name : String?
	let customer_code : String?
	let carrier_code : String?
	let trip_start_date : String?
	let trip_end_date : String?
	let trip_creation_date : String?
	let trip_seq : Int?
	let trip_status : String?
	let acceptance_required_by : String?
	let driver_tender_status : Int?
	let carrier_tender_status : Int?
	let total_dist : Double?
	let total_dist_unit : String?
	let truck_type : String?
	let truck_number : String?
	let trailer_type : String?
	let trailer_number : String?
	let total_driving_time : String?
	let total_driving_time_unit : String?
	let total_w : Double?
	let total_w_unit : String?
	let material_w : Double?
	let material_w_unit : String?
	let total_pieces : String?
	let total_vol : String?
	let total_vol_unit : String?
	let total_Packages : String?
	let stops_info : [Stops_info]?

	enum CodingKeys: String, CodingKey {

		case sl4_round_trip_id = "sl4_round_trip_id"
		case sl4_trip_id = "sl4_trip_id"
		case src_trip_id = "src_trip_id"
		case tender_request_id = "tender_request_id"
		case customer_name = "customer_name"
		case customer_code = "customer_code"
		case carrier_code = "carrier_code"
		case trip_start_date = "trip_start_date"
		case trip_end_date = "trip_end_date"
		case trip_creation_date = "trip_creation_date"
		case trip_seq = "trip_seq"
		case trip_status = "trip_status"
		case acceptance_required_by = "acceptance_required_by"
		case driver_tender_status = "driver_tender_status"
		case carrier_tender_status = "carrier_tender_status"
		case total_dist = "total_dist"
		case total_dist_unit = "total_dist_unit"
		case truck_type = "truck_type"
		case truck_number = "truck_number"
		case trailer_type = "trailer_type"
		case trailer_number = "trailer_number"
		case total_driving_time = "total_driving_time"
		case total_driving_time_unit = "total_driving_time_unit"
		case total_w = "total_w"
		case total_w_unit = "total_w_unit"
		case material_w = "material_w"
		case material_w_unit = "material_w_unit"
		case total_pieces = "total_pieces"
		case total_vol = "total_vol"
		case total_vol_unit = "total_vol_unit"
		case total_Packages = "total_Packages"
		case stops_info = "stops_info"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		sl4_round_trip_id = try values.decodeIfPresent(Int.self, forKey: .sl4_round_trip_id)
		sl4_trip_id = try values.decodeIfPresent(Int.self, forKey: .sl4_trip_id)
		src_trip_id = try values.decodeIfPresent(String.self, forKey: .src_trip_id)
		tender_request_id = try values.decodeIfPresent(String.self, forKey: .tender_request_id)
		customer_name = try values.decodeIfPresent(String.self, forKey: .customer_name)
		customer_code = try values.decodeIfPresent(String.self, forKey: .customer_code)
		carrier_code = try values.decodeIfPresent(String.self, forKey: .carrier_code)
		trip_start_date = try values.decodeIfPresent(String.self, forKey: .trip_start_date)
		trip_end_date = try values.decodeIfPresent(String.self, forKey: .trip_end_date)
		trip_creation_date = try values.decodeIfPresent(String.self, forKey: .trip_creation_date)
		trip_seq = try values.decodeIfPresent(Int.self, forKey: .trip_seq)
		trip_status = try values.decodeIfPresent(String.self, forKey: .trip_status)
		acceptance_required_by = try values.decodeIfPresent(String.self, forKey: .acceptance_required_by)
		driver_tender_status = try values.decodeIfPresent(Int.self, forKey: .driver_tender_status)
		carrier_tender_status = try values.decodeIfPresent(Int.self, forKey: .carrier_tender_status)
		total_dist = try values.decodeIfPresent(Double.self, forKey: .total_dist)
		total_dist_unit = try values.decodeIfPresent(String.self, forKey: .total_dist_unit)
		truck_type = try values.decodeIfPresent(String.self, forKey: .truck_type)
		truck_number = try values.decodeIfPresent(String.self, forKey: .truck_number)
		trailer_type = try values.decodeIfPresent(String.self, forKey: .trailer_type)
		trailer_number = try values.decodeIfPresent(String.self, forKey: .trailer_number)
		total_driving_time = try values.decodeIfPresent(String.self, forKey: .total_driving_time)
		total_driving_time_unit = try values.decodeIfPresent(String.self, forKey: .total_driving_time_unit)
		total_w = try values.decodeIfPresent(Double.self, forKey: .total_w)
		total_w_unit = try values.decodeIfPresent(String.self, forKey: .total_w_unit)
		material_w = try values.decodeIfPresent(Double.self, forKey: .material_w)
		material_w_unit = try values.decodeIfPresent(String.self, forKey: .material_w_unit)
		total_pieces = try values.decodeIfPresent(String.self, forKey: .total_pieces)
		total_vol = try values.decodeIfPresent(String.self, forKey: .total_vol)
		total_vol_unit = try values.decodeIfPresent(String.self, forKey: .total_vol_unit)
		total_Packages = try values.decodeIfPresent(String.self, forKey: .total_Packages)
		stops_info = try values.decodeIfPresent([Stops_info].self, forKey: .stops_info)
	}

}