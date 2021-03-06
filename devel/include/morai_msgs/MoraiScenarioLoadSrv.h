// Generated by gencpp from file morai_msgs/MoraiScenarioLoadSrv.msg
// DO NOT EDIT!


#ifndef MORAI_MSGS_MESSAGE_MORAISCENARIOLOADSRV_H
#define MORAI_MSGS_MESSAGE_MORAISCENARIOLOADSRV_H

#include <ros/service_traits.h>


#include <morai_msgs/MoraiScenarioLoadSrvRequest.h>
#include <morai_msgs/MoraiScenarioLoadSrvResponse.h>


namespace morai_msgs
{

struct MoraiScenarioLoadSrv
{

typedef MoraiScenarioLoadSrvRequest Request;
typedef MoraiScenarioLoadSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoraiScenarioLoadSrv
} // namespace morai_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::morai_msgs::MoraiScenarioLoadSrv > {
  static const char* value()
  {
    return "25b7997ab4e17f67a86b3d83c84ac51d";
  }

  static const char* value(const ::morai_msgs::MoraiScenarioLoadSrv&) { return value(); }
};

template<>
struct DataType< ::morai_msgs::MoraiScenarioLoadSrv > {
  static const char* value()
  {
    return "morai_msgs/MoraiScenarioLoadSrv";
  }

  static const char* value(const ::morai_msgs::MoraiScenarioLoadSrv&) { return value(); }
};


// service_traits::MD5Sum< ::morai_msgs::MoraiScenarioLoadSrvRequest> should match
// service_traits::MD5Sum< ::morai_msgs::MoraiScenarioLoadSrv >
template<>
struct MD5Sum< ::morai_msgs::MoraiScenarioLoadSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::morai_msgs::MoraiScenarioLoadSrv >::value();
  }
  static const char* value(const ::morai_msgs::MoraiScenarioLoadSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::morai_msgs::MoraiScenarioLoadSrvRequest> should match
// service_traits::DataType< ::morai_msgs::MoraiScenarioLoadSrv >
template<>
struct DataType< ::morai_msgs::MoraiScenarioLoadSrvRequest>
{
  static const char* value()
  {
    return DataType< ::morai_msgs::MoraiScenarioLoadSrv >::value();
  }
  static const char* value(const ::morai_msgs::MoraiScenarioLoadSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::morai_msgs::MoraiScenarioLoadSrvResponse> should match
// service_traits::MD5Sum< ::morai_msgs::MoraiScenarioLoadSrv >
template<>
struct MD5Sum< ::morai_msgs::MoraiScenarioLoadSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::morai_msgs::MoraiScenarioLoadSrv >::value();
  }
  static const char* value(const ::morai_msgs::MoraiScenarioLoadSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::morai_msgs::MoraiScenarioLoadSrvResponse> should match
// service_traits::DataType< ::morai_msgs::MoraiScenarioLoadSrv >
template<>
struct DataType< ::morai_msgs::MoraiScenarioLoadSrvResponse>
{
  static const char* value()
  {
    return DataType< ::morai_msgs::MoraiScenarioLoadSrv >::value();
  }
  static const char* value(const ::morai_msgs::MoraiScenarioLoadSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MORAI_MSGS_MESSAGE_MORAISCENARIOLOADSRV_H
