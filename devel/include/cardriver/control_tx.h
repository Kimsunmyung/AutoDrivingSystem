// Generated by gencpp from file cardriver/control_tx.msg
// DO NOT EDIT!


#ifndef CARDRIVER_MESSAGE_CONTROL_TX_H
#define CARDRIVER_MESSAGE_CONTROL_TX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cardriver
{
template <class ContainerAllocator>
struct control_tx_
{
  typedef control_tx_<ContainerAllocator> Type;

  control_tx_()
    : aimode(0)
    , drive_vector(0)
    , drive_throttle(0)
    , steer_degree(0)
    , steer_raw(0)
    , signal(0)
    , lamp(0)
    , horn(0)
    , embed_custom_a(0)
    , embed_custom_b(0)  {
    }
  control_tx_(const ContainerAllocator& _alloc)
    : aimode(0)
    , drive_vector(0)
    , drive_throttle(0)
    , steer_degree(0)
    , steer_raw(0)
    , signal(0)
    , lamp(0)
    , horn(0)
    , embed_custom_a(0)
    , embed_custom_b(0)  {
  (void)_alloc;
    }



   typedef int32_t _aimode_type;
  _aimode_type aimode;

   typedef int32_t _drive_vector_type;
  _drive_vector_type drive_vector;

   typedef int32_t _drive_throttle_type;
  _drive_throttle_type drive_throttle;

   typedef int32_t _steer_degree_type;
  _steer_degree_type steer_degree;

   typedef int32_t _steer_raw_type;
  _steer_raw_type steer_raw;

   typedef int32_t _signal_type;
  _signal_type signal;

   typedef int32_t _lamp_type;
  _lamp_type lamp;

   typedef int32_t _horn_type;
  _horn_type horn;

   typedef int32_t _embed_custom_a_type;
  _embed_custom_a_type embed_custom_a;

   typedef int32_t _embed_custom_b_type;
  _embed_custom_b_type embed_custom_b;





  typedef boost::shared_ptr< ::cardriver::control_tx_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cardriver::control_tx_<ContainerAllocator> const> ConstPtr;

}; // struct control_tx_

typedef ::cardriver::control_tx_<std::allocator<void> > control_tx;

typedef boost::shared_ptr< ::cardriver::control_tx > control_txPtr;
typedef boost::shared_ptr< ::cardriver::control_tx const> control_txConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cardriver::control_tx_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cardriver::control_tx_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cardriver::control_tx_<ContainerAllocator1> & lhs, const ::cardriver::control_tx_<ContainerAllocator2> & rhs)
{
  return lhs.aimode == rhs.aimode &&
    lhs.drive_vector == rhs.drive_vector &&
    lhs.drive_throttle == rhs.drive_throttle &&
    lhs.steer_degree == rhs.steer_degree &&
    lhs.steer_raw == rhs.steer_raw &&
    lhs.signal == rhs.signal &&
    lhs.lamp == rhs.lamp &&
    lhs.horn == rhs.horn &&
    lhs.embed_custom_a == rhs.embed_custom_a &&
    lhs.embed_custom_b == rhs.embed_custom_b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cardriver::control_tx_<ContainerAllocator1> & lhs, const ::cardriver::control_tx_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cardriver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cardriver::control_tx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cardriver::control_tx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cardriver::control_tx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cardriver::control_tx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cardriver::control_tx_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cardriver::control_tx_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cardriver::control_tx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7ba485599b2b943484c8d738d06c7fb7";
  }

  static const char* value(const ::cardriver::control_tx_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7ba485599b2b9434ULL;
  static const uint64_t static_value2 = 0x84c8d738d06c7fb7ULL;
};

template<class ContainerAllocator>
struct DataType< ::cardriver::control_tx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cardriver/control_tx";
  }

  static const char* value(const ::cardriver::control_tx_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cardriver::control_tx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 aimode\n"
"int32 drive_vector\n"
"int32 drive_throttle\n"
"int32 steer_degree\n"
"int32 steer_raw\n"
"int32 signal\n"
"int32 lamp\n"
"int32 horn\n"
"int32 embed_custom_a\n"
"int32 embed_custom_b\n"
;
  }

  static const char* value(const ::cardriver::control_tx_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cardriver::control_tx_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.aimode);
      stream.next(m.drive_vector);
      stream.next(m.drive_throttle);
      stream.next(m.steer_degree);
      stream.next(m.steer_raw);
      stream.next(m.signal);
      stream.next(m.lamp);
      stream.next(m.horn);
      stream.next(m.embed_custom_a);
      stream.next(m.embed_custom_b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct control_tx_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cardriver::control_tx_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cardriver::control_tx_<ContainerAllocator>& v)
  {
    s << indent << "aimode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.aimode);
    s << indent << "drive_vector: ";
    Printer<int32_t>::stream(s, indent + "  ", v.drive_vector);
    s << indent << "drive_throttle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.drive_throttle);
    s << indent << "steer_degree: ";
    Printer<int32_t>::stream(s, indent + "  ", v.steer_degree);
    s << indent << "steer_raw: ";
    Printer<int32_t>::stream(s, indent + "  ", v.steer_raw);
    s << indent << "signal: ";
    Printer<int32_t>::stream(s, indent + "  ", v.signal);
    s << indent << "lamp: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lamp);
    s << indent << "horn: ";
    Printer<int32_t>::stream(s, indent + "  ", v.horn);
    s << indent << "embed_custom_a: ";
    Printer<int32_t>::stream(s, indent + "  ", v.embed_custom_a);
    s << indent << "embed_custom_b: ";
    Printer<int32_t>::stream(s, indent + "  ", v.embed_custom_b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARDRIVER_MESSAGE_CONTROL_TX_H