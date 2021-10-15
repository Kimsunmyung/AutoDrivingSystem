// Generated by gencpp from file morai_msgs/FTGdata.msg
// DO NOT EDIT!


#ifndef MORAI_MSGS_MESSAGE_FTGDATA_H
#define MORAI_MSGS_MESSAGE_FTGDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace morai_msgs
{
template <class ContainerAllocator>
struct FTGdata_
{
  typedef FTGdata_<ContainerAllocator> Type;

  FTGdata_()
    : header()
    , do_ca(false)
    , ca_const_alpha(0.0)
    , ca_const_beta(0.0)
    , ca_distance(0.0)
    , phi_gap(0.0)  {
    }
  FTGdata_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , do_ca(false)
    , ca_const_alpha(0.0)
    , ca_const_beta(0.0)
    , ca_distance(0.0)
    , phi_gap(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _do_ca_type;
  _do_ca_type do_ca;

   typedef float _ca_const_alpha_type;
  _ca_const_alpha_type ca_const_alpha;

   typedef float _ca_const_beta_type;
  _ca_const_beta_type ca_const_beta;

   typedef float _ca_distance_type;
  _ca_distance_type ca_distance;

   typedef float _phi_gap_type;
  _phi_gap_type phi_gap;





  typedef boost::shared_ptr< ::morai_msgs::FTGdata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::morai_msgs::FTGdata_<ContainerAllocator> const> ConstPtr;

}; // struct FTGdata_

typedef ::morai_msgs::FTGdata_<std::allocator<void> > FTGdata;

typedef boost::shared_ptr< ::morai_msgs::FTGdata > FTGdataPtr;
typedef boost::shared_ptr< ::morai_msgs::FTGdata const> FTGdataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::morai_msgs::FTGdata_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::morai_msgs::FTGdata_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::morai_msgs::FTGdata_<ContainerAllocator1> & lhs, const ::morai_msgs::FTGdata_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.do_ca == rhs.do_ca &&
    lhs.ca_const_alpha == rhs.ca_const_alpha &&
    lhs.ca_const_beta == rhs.ca_const_beta &&
    lhs.ca_distance == rhs.ca_distance &&
    lhs.phi_gap == rhs.phi_gap;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::morai_msgs::FTGdata_<ContainerAllocator1> & lhs, const ::morai_msgs::FTGdata_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace morai_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::morai_msgs::FTGdata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::morai_msgs::FTGdata_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::morai_msgs::FTGdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::morai_msgs::FTGdata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::morai_msgs::FTGdata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::morai_msgs::FTGdata_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::morai_msgs::FTGdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "832e1533a2882488fefe13ba032e8348";
  }

  static const char* value(const ::morai_msgs::FTGdata_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x832e1533a2882488ULL;
  static const uint64_t static_value2 = 0xfefe13ba032e8348ULL;
};

template<class ContainerAllocator>
struct DataType< ::morai_msgs::FTGdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "morai_msgs/FTGdata";
  }

  static const char* value(const ::morai_msgs::FTGdata_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::morai_msgs::FTGdata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# frame and time stamp\n"
"Header header\n"
"\n"
"# should we do collision avoidance\n"
"bool do_ca\n"
"\n"
"float32 ca_const_alpha\n"
"float32 ca_const_beta\n"
"float32 ca_distance\n"
"\n"
"float32 phi_gap\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::morai_msgs::FTGdata_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::morai_msgs::FTGdata_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.do_ca);
      stream.next(m.ca_const_alpha);
      stream.next(m.ca_const_beta);
      stream.next(m.ca_distance);
      stream.next(m.phi_gap);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FTGdata_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::morai_msgs::FTGdata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::morai_msgs::FTGdata_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "do_ca: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.do_ca);
    s << indent << "ca_const_alpha: ";
    Printer<float>::stream(s, indent + "  ", v.ca_const_alpha);
    s << indent << "ca_const_beta: ";
    Printer<float>::stream(s, indent + "  ", v.ca_const_beta);
    s << indent << "ca_distance: ";
    Printer<float>::stream(s, indent + "  ", v.ca_distance);
    s << indent << "phi_gap: ";
    Printer<float>::stream(s, indent + "  ", v.phi_gap);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MORAI_MSGS_MESSAGE_FTGDATA_H
