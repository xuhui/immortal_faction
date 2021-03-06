### Generated by rprotoc. DO NOT EDIT!
### <proto file: LoginGPB.proto>
# import "ErrorGPB.proto";
# 
# //SignUp
# message SignUpRequest
# {
#     required string mac_address = 1;
#     required string device_type = 2;
# }
# 
# message SignUpResponse
# {
#     optional ErrorGPB error = 1;
#     required string username = 2;
# }
# 
# message PasswordRequest
# {
#     required string username = 1;
#     required string password = 2;
# }
# 
# message PasswordResponse
# {
#     optional ErrorGPB error = 1;
#     required string token = 2;
# }
# 
# //login
# message LoginRequest
# {
# 	required string username = 1;
# 	required string password = 2;
# }
# 
# message LoginResponse
# {
#     optional ErrorGPB error = 1;
#     required string token = 2;
# }
# 
# 

require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

require 'pb/ErrorGPB.pb'
class SignUpRequest < ::Protobuf::Message
  defined_in __FILE__
  required :string, :mac_address, 1
  required :string, :device_type, 2
end
class SignUpResponse < ::Protobuf::Message
  defined_in __FILE__
  optional :ErrorGPB, :error, 1
  required :string, :username, 2
end
class PasswordRequest < ::Protobuf::Message
  defined_in __FILE__
  required :string, :username, 1
  required :string, :password, 2
end
class PasswordResponse < ::Protobuf::Message
  defined_in __FILE__
  optional :ErrorGPB, :error, 1
  required :string, :token, 2
end
class LoginRequest < ::Protobuf::Message
  defined_in __FILE__
  required :string, :username, 1
  required :string, :password, 2
end
class LoginResponse < ::Protobuf::Message
  defined_in __FILE__
  optional :ErrorGPB, :error, 1
  required :string, :token, 2
end