#include <ros/ros.h>
#include <comm/msg.h>
#include <boost/thread/thread.hpp>

void send()
{
    ros::NodeHandlePtr node = boost::make_shared<ros::NodeHandle>();
    ros::ServiceClient client = node->serviceClient<comm::msg>("print_message_to_2");
    ros::Rate rate(10);
    while (ros::ok())
    {
        comm::msg service_message;
        std::string ss;
        ROS_INFO("Enter message: ");
        std::cin.clear();
        getline(std::cin, ss);
        // ROS_INFO("Input registered");
        service_message.request.msgtext = ss;
        if(client.call(service_message)) {
            ROS_INFO("Message sent.");   
        } else {
            ROS_INFO("Message was not sent.");
        }   
        // ROS_INFO("Going to sleep");
        rate.sleep();
        // ROS_INFO("Slept");
    }
}

bool print_msg(comm::msg::Request &req, comm::msg::Response &res) {
    ROS_INFO("Received: %s", req.msgtext.c_str());
    ROS_INFO("Enter message: ");
    return true;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "node1");
    boost::thread thread_b(send);
    ros::NodeHandlePtr node = boost::make_shared<ros::NodeHandle>();
    ros::ServiceServer service = node->advertiseService("print_message_to_1", print_msg);
    ros::spin();
    thread_b.join();
    return 0;
}


// #include <iostream>
// // #include <chrono>
// // #include <thread>
// #include "ros/ros.h"
// // #include "string.h"
// #include "comm/msg.h"


// bool print_msg(comm::msg::Request &req, comm::msg::Response &res) {
//     ROS_INFO("Received: %s", req.msgtext.c_str());
//     res.status = 1;
//     return true;
// }

// int main(int argc, char **argv) {
//     ros::init(argc, argv, "node1");
//     ros::NodeHandle nh;
//     ros::ServiceServer service = nh.advertiseService("print_message_to_2", print_msg);
    
//     // std::this_thread::sleep_for(std::chrono::milliseconds(20000));

//     ros::ServiceClient client = nh.serviceClient<comm::msg>("print_message_to_1");
    
//     ros::Rate rate(10);

//     while(ros::ok()) {
//         comm::msg srv;
//         std::string ss;
//         ROS_INFO("Enter message: ");
//         std::cin.clear();
//         getline(std::cin, ss);
//         ROS_INFO("Input registered");
//         srv.request.msgtext = ss;
//         if(client.call(srv.request, srv.response)) {
//             ROS_INFO("Message sent.");   
//         } else {
//             ROS_INFO("Message was not sent.");
//         }
//         ROS_INFO("Going to spin");
//         ros::spinOnce();
//         ROS_INFO("Spun");
//         rate.sleep();
//         ROS_INFO("Slept");
//     }
//     return 0;
// }


// // #include "ros/ros.h"
// // #include "std_msgs/String.h"
// // #include <sstream>

// // void chatterCallback(const std_msgs::String::ConstPtr& msg)
// // {
// //   ROS_INFO("I heard: [%s]", msg->data.c_str());
// //   std_msgs::String msg;

// //     std::stringstream ss;
// //     getline(std::cin, ss);
// //     msg.data = ss.str();

// //     ROS_INFO("%s", msg.data.c_str());

// //     chatter_pub.publish(msg);
// //     ros::spinOnce();
 

// // }
// // int main(int argc, char **argv)
// // {
// //    ros::init(argc, argv, "listener");
 
// //   ros::NodeHandle n;
 
// //   ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
// //     ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);

 
// //   /**
// //    * ros::spin() will enter a loop, pumping callbacks.  With this version, all
// //     * callbacks will be called from within this thread (the main one).  ros::spin()
// //   * will exit when Ctrl-C is pressed, or the node is shutdown by the master.    */
// //    ros::spin(); 
// //    return 0;
// // }
 