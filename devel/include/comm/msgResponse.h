// Generated by gencpp from file comm/msgResponse.msg
// DO NOT EDIT!


#ifndef COMM_MESSAGE_MSGRESPONSE_H
#define COMM_MESSAGE_MSGRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace comm
{
template <class ContainerAllocator>
struct msgResponse_
{
  typedef msgResponse_<ContainerAllocator> Type;

  msgResponse_()
    : status(0)  {
    }
  msgResponse_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int64_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::comm::msgResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::comm::msgResponse_<ContainerAllocator> const> ConstPtr;

}; // struct msgResponse_

typedef ::comm::msgResponse_<std::allocator<void> > msgResponse;

typedef boost::shared_ptr< ::comm::msgResponse > msgResponsePtr;
typedef boost::shared_ptr< ::comm::msgResponse const> msgResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::comm::msgResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::comm::msgResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::comm::msgResponse_<ContainerAllocator1> & lhs, const ::comm::msgResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::comm::msgResponse_<ContainerAllocator1> & lhs, const ::comm::msgResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::comm::msgResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::comm::msgResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::comm::msgResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::comm::msgResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::comm::msgResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::comm::msgResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::comm::msgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4107476a6271fc2684d94be17d33f854";
  }

  static const char* value(const ::comm::msgResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4107476a6271fc26ULL;
  static const uint64_t static_value2 = 0x84d94be17d33f854ULL;
};

template<class ContainerAllocator>
struct DataType< ::comm::msgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "comm/msgResponse";
  }

  static const char* value(const ::comm::msgResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::comm::msgResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 status\n"
;
  }

  static const char* value(const ::comm::msgResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::comm::msgResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msgResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::comm::msgResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::comm::msgResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int64_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMM_MESSAGE_MSGRESPONSE_H