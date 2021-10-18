# AutoDriveSystem


드론 / 자율주행차 4차산업혁명 인재양성
2021 혁신성장 청년인재 집중양성 교육

교육일정 : 2021.04.05 ~ 09.17



# 개요

- 자율주행차를 주행하기 위해서 기반이 될수 있는 지도를 만듭니다
- 제작된 지도의 경로를 기반으로 주행을 하던 도중 공사장을 감지하면 새로운 경로를 설계하고 회피한다
    - 처음으로 발견한 차량이 해당 경로로 주행을 하지 못하는 것을 알리고 다른 경로로 주행한다
    - 뒤에 오던 차량들은 앞에서 알림을 받은 정보로 새로운 다른 경로를 설계하여 주행한다



GPS & RTK

# 하드웨어 사양

## ublox C94-M8P-3

## Documents




# RTK 메시지 받기

## 0. 준비사항

1. tx2 보드에서 인터넷에 연결되어 있어야 함
2. 국토지리정보원에서 RTCM 메시지를 받을 수 있는 계정을 만들어야 함
3. RTCM 메시지를 받아야함
    
IP : 210.117.198.84

PORT : 2101

ID : mayakpari@naver.com

PW : gnss

Mointing Point : KUSN-RTCM31
    
    
    
> 공용 계정

ID : mayakpari

PW : 1q2w3e4r!



1. 작동코드

ros-agriculture/ublox_f9p
https://github.com/ros-agriculture/ublox_f9p

ros-agriculture/ntrip_ros
https://github.com/ros-agriculture/ntrip_ros

RTK 실행
roslaunch ublox_gps ublox_device.launch
