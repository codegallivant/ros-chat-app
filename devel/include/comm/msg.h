// Generated by gencpp from file comm/msg.msg
// DO NOT EDIT!


#ifndef COMM_MESSAGE_MSG_H
#define COMM_MESSAGE_MSG_H

#include <ros/service_traits.h>


#include <comm/msgRequest.h>
#include <comm/msgResponse.h>


namespace comm
{

struct msg
{

typedef msgRequest Request;
typedef msgResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct msg
} // namespace comm


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::comm::msg > {
  static const char* value()
  {
    return "92dbf11d0f5c2f55765d5af241617435";
  }

  static const char* value(const ::comm::msg&) { return value(); }
};

template<>
struct DataType< ::comm::msg > {
  static const char* value()
  {
    return "comm/msg";
  }

  static const char* value(const ::comm::msg&) { return value(); }
};


// service_traits::MD5Sum< ::comm::msgRequest> should match
// service_traits::MD5Sum< ::comm::msg >
template<>
struct MD5Sum< ::comm::msgRequest>
{
  static const char* value()
  {
    return MD5Sum< ::comm::msg >::value();
  }
  static const char* value(const ::comm::msgRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::comm::msgRequest> should match
// service_traits::DataType< ::comm::msg >
template<>
struct DataType< ::comm::msgRequest>
{
  static const char* value()
  {
    return DataType< ::comm::msg >::value();
  }
  static const char* value(const ::comm::msgRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::comm::msgResponse> should match
// service_traits::MD5Sum< ::comm::msg >
template<>
struct MD5Sum< ::comm::msgResponse>
{
  static const char* value()
  {
    return MD5Sum< ::comm::msg >::value();
  }
  static const char* value(const ::comm::msgResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::comm::msgResponse> should match
// service_traits::DataType< ::comm::msg >
template<>
struct DataType< ::comm::msgResponse>
{
  static const char* value()
  {
    return DataType< ::comm::msg >::value();
  }
  static const char* value(const ::comm::msgResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COMM_MESSAGE_MSG_H
