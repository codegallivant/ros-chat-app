#include <ros/ros.h>
#include <comm/msg.h>
#include <boost/thread/thread.hpp>

void send()
{
    ros::NodeHandlePtr node = boost::make_shared<ros::NodeHandle>();
    ros::ServiceClient client = node->serviceClient<comm::msg>("print_message_to_1");
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
    ros::init(argc, argv, "node2");
    boost::thread thread_b(send);
    ros::NodeHandlePtr node = boost::make_shared<ros::NodeHandle>();
    ros::ServiceServer service = node->advertiseService("print_message_to_2", print_msg);
    ros::spin();
    thread_b.join();
    return 0;
}
