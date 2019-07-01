/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Stops_info : Decodable {
	let sl4_stop_id : Int?
	let src_stop_id : String?
	let sl4_trip_id : Int?
	let seq_number : Int?
	let stop_type : String?
	let location_name : String?
	let location_id : String?
	let dock_code : String?
	let appointment_required : Bool?
	let actual_arr_date_time : String?
	let planned_arr_date_time : String?
	let dist_from_last_stop : String?
	let dist_from_last_stop_unit : String?
	let pod_status_code : String?
	let pod_capture_time : String?
	let stop_status : Int?
	let is_appointment_time_updated : Bool?
	let pod_contact_name : String?
	let pod_contact_no : String?
	let geo_fence_status_update : Bool?
	let load_hours : String?
	let unload_hours : String?
	let pick_w : String?
	let pick_w_unit : String?
	let drop_w : String?
	let drop_w_unit : String?
	let picked_vol : String?
	let picked_vol_unit : String?
	let drop_vol : String?
	let drop_vol_unit : String?
	let location_type : String?
	let address : Address?
	let src_trip_id : String?
	let driver_tender_status : Int?
	let carrier_tender_status : Int?
	let round_trip_status : Int?

//    enum CodingKeys: String, CodingKey {
//
//        case sl4_stop_id = "sl4_stop_id"
//        case src_stop_id = "src_stop_id"
//        case sl4_trip_id = "sl4_trip_id"
//        case seq_number = "seq_number"
//        case stop_type = "stop_type"
//        case location_name = "location_name"
//        case location_id = "location_id"
//        case dock_code = "dock_code"
//        case appointment_required = "appointment_required"
//        case actual_arr_date_time = "actual_arr_date_time"
//        case planned_arr_date_time = "planned_arr_date_time"
//        case dist_from_last_stop = "dist_from_last_stop"
//        case dist_from_last_stop_unit = "dist_from_last_stop_unit"
//        case pod_status_code = "pod_status_code"
//        case pod_capture_time = "pod_capture_time"
//        case stop_status = "stop_status"
//        case is_appointment_time_updated = "is_appointment_time_updated"
//        case pod_contact_name = "pod_contact_name"
//        case pod_contact_no = "pod_contact_no"
//        case geo_fence_status_update = "geo_fence_status_update"
//        case load_hours = "load_hours"
//        case unload_hours = "unload_hours"
//        case pick_w = "pick_w"
//        case pick_w_unit = "pick_w_unit"
//        case drop_w = "drop_w"
//        case drop_w_unit = "drop_w_unit"
//        case picked_vol = "picked_vol"
//        case picked_vol_unit = "picked_vol_unit"
//        case drop_vol = "drop_vol"
//        case drop_vol_unit = "drop_vol_unit"
//        case location_type = "location_type"
//        case address = "address"
//        case src_trip_id = "src_trip_id"
//        case driver_tender_status = "driver_tender_status"
//        case carrier_tender_status = "carrier_tender_status"
//        case round_trip_status = "round_trip_status"
//    }

//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        sl4_stop_id = try values.decodeIfPresent(Int.self, forKey: .sl4_stop_id)
//        src_stop_id = try values.decodeIfPresent(String.self, forKey: .src_stop_id)
//        sl4_trip_id = try values.decodeIfPresent(Int.self, forKey: .sl4_trip_id)
//        seq_number = try values.decodeIfPresent(Int.self, forKey: .seq_number)
//        stop_type = try values.decodeIfPresent(String.self, forKey: .stop_type)
//        location_name = try values.decodeIfPresent(String.self, forKey: .location_name)
//        location_id = try values.decodeIfPresent(String.self, forKey: .location_id)
//        dock_code = try values.decodeIfPresent(String.self, forKey: .dock_code)
//        appointment_required = try values.decodeIfPresent(Bool.self, forKey: .appointment_required)
//        actual_arr_date_time = try values.decodeIfPresent(String.self, forKey: .actual_arr_date_time)
//        planned_arr_date_time = try values.decodeIfPresent(String.self, forKey: .planned_arr_date_time)
//        dist_from_last_stop = try values.decodeIfPresent(String.self, forKey: .dist_from_last_stop)
//        dist_from_last_stop_unit = try values.decodeIfPresent(String.self, forKey: .dist_from_last_stop_unit)
//        pod_status_code = try values.decodeIfPresent(String.self, forKey: .pod_status_code)
//        pod_capture_time = try values.decodeIfPresent(String.self, forKey: .pod_capture_time)
//        stop_status = try values.decodeIfPresent(Int.self, forKey: .stop_status)
//        is_appointment_time_updated = try values.decodeIfPresent(Bool.self, forKey: .is_appointment_time_updated)
//        pod_contact_name = try values.decodeIfPresent(String.self, forKey: .pod_contact_name)
//        pod_contact_no = try values.decodeIfPresent(String.self, forKey: .pod_contact_no)
//        geo_fence_status_update = try values.decodeIfPresent(Bool.self, forKey: .geo_fence_status_update)
//        load_hours = try values.decodeIfPresent(String.self, forKey: .load_hours)
//        unload_hours = try values.decodeIfPresent(String.self, forKey: .unload_hours)
//        pick_w = try values.decodeIfPresent(String.self, forKey: .pick_w)
//        pick_w_unit = try values.decodeIfPresent(String.self, forKey: .pick_w_unit)
//        drop_w = try values.decodeIfPresent(String.self, forKey: .drop_w)
//        drop_w_unit = try values.decodeIfPresent(String.self, forKey: .drop_w_unit)
//        picked_vol = try values.decodeIfPresent(String.self, forKey: .picked_vol)
//        picked_vol_unit = try values.decodeIfPresent(String.self, forKey: .picked_vol_unit)
//        drop_vol = try values.decodeIfPresent(String.self, forKey: .drop_vol)
//        drop_vol_unit = try values.decodeIfPresent(String.self, forKey: .drop_vol_unit)
//        location_type = try values.decodeIfPresent(String.self, forKey: .location_type)
//        address = try values.decodeIfPresent(Address.self, forKey: .address)
//        src_trip_id = try values.decodeIfPresent(String.self, forKey: .src_trip_id)
//        driver_tender_status = try values.decodeIfPresent(Int.self, forKey: .driver_tender_status)
//        carrier_tender_status = try values.decodeIfPresent(Int.self, forKey: .carrier_tender_status)
//        round_trip_status = try values.decodeIfPresent(Int.self, forKey: .round_trip_status)
//    }

}
