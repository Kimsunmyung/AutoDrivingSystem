#!/usr/bin/env python3

class gps_parse_test:
    def __init__(self):
        self.get_lati = 0.0
        self.get_longti = 0.0
        self.get_kmh = 0.0
        self.get_time = ""
    
    def parse_frames(self, raw_data):
        self.get_lati = ?
        self.get_longti = ?
        self.get_time = ?
        self.get_kmh = ?

    def parse_lati_longti(self, value, dir):
        return 0.0
    
    def parse_now_time(self, data):
        return "00:00:00"
    
    def parse_kmh(self, data):
        return 0.0

if __name__ == '__main__':
    gps_raw_data = list()
    gps_raw_data.append("\n$GNGGA,123137.00,3558.13769,N,12706.74150,E,1,12,0.82,42.4,M,19.7,M,,*77")
    gps_raw_data.append("\n$GNGSA,A,3,02,13,05,07,30,29,15,20,,,,,1.61,0.82,1.39*17")
    gps_raw_data.append("\n$GNGSA,A,3,86,72,87,71,70,85,,,,,,,1.61,0.82,1.39*13")
    gps_raw_data.append("\n$GPGSV,3,1,10,02,71,112,32,05,58,307,40,06,31,121,,07,17,063,41*72")
    gps_raw_data.append("\n$GNGLL,3558.13769,N,12706.74150,E,123137.00,A,A*76")
    gps_raw_data.append("\n$GNRMC,124234.00,A,3558.13916,N,12706.74063,E,0.058,,080521,,,A*6C")
    
    parse_test = gps_parse_test()
    for exe_raw in gps_raw_data: parse_test.parse_frames(exe_raw)
    
    print("----------- GPS DATA PARSE, CONVERT -------------")
    print("Latitude: %f"%(parse_test.get_lati))
    print("Longtitude: %f"%(parse_test.get_longti))
    print("Time: %s"%(parse_test.get_time))
    print("Speed(km/h): %f"%(parse_test.get_kmh))
    print("----------- GPS DATA PARSE, CONVERT -------------")

    