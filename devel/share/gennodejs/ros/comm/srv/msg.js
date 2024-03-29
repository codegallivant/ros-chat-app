// Auto-generated. Do not edit!

// (in-package comm.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class msgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msgtext = null;
    }
    else {
      if (initObj.hasOwnProperty('msgtext')) {
        this.msgtext = initObj.msgtext
      }
      else {
        this.msgtext = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgRequest
    // Serialize message field [msgtext]
    bufferOffset = _serializer.string(obj.msgtext, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgRequest
    let len;
    let data = new msgRequest(null);
    // Deserialize message field [msgtext]
    data.msgtext = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msgtext);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'comm/msgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf820a8e464d1831c7daa93d2905b133';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msgtext
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgRequest(null);
    if (msg.msgtext !== undefined) {
      resolved.msgtext = msg.msgtext;
    }
    else {
      resolved.msgtext = ''
    }

    return resolved;
    }
};

class msgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int64(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgResponse
    let len;
    let data = new msgResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'comm/msgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4107476a6271fc2684d94be17d33f854';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: msgRequest,
  Response: msgResponse,
  md5sum() { return '92dbf11d0f5c2f55765d5af241617435'; },
  datatype() { return 'comm/msg'; }
};
