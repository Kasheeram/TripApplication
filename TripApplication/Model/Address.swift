/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Address : Decodable {
	let sl4_address_id : Int?
	let street : String?
	let city : String?
	let state : String?
	let country_code : String?
	let postal_code : String?
	let latitude : String?
	let longitude : String?
	let bldg : String?
	let scr_name : String?

//    enum CodingKeys: String, CodingKey {
//
//        case sl4_address_id = "sl4_address_id"
//        case street = "street"
//        case city = "city"
//        case state = "state"
//        case country_code = "country_code"
//        case postal_code = "postal_code"
//        case latitude = "latitude"
//        case longitude = "longitude"
//        case bldg = "bldg"
//        case scr_name = "scr_name"
//    }

//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        sl4_address_id = try values.decodeIfPresent(Int.self, forKey: .sl4_address_id)
//        street = try values.decodeIfPresent(String.self, forKey: .street)
//        city = try values.decodeIfPresent(String.self, forKey: .city)
//        state = try values.decodeIfPresent(String.self, forKey: .state)
//        country_code = try values.decodeIfPresent(String.self, forKey: .country_code)
//        postal_code = try values.decodeIfPresent(String.self, forKey: .postal_code)
//        latitude = try values.decodeIfPresent(String.self, forKey: .latitude)
//        longitude = try values.decodeIfPresent(String.self, forKey: .longitude)
//        bldg = try values.decodeIfPresent(String.self, forKey: .bldg)
//        scr_name = try values.decodeIfPresent(String.self, forKey: .scr_name)
//    }

}
