### Generated by rprotoc. DO NOT EDIT!
### <proto file: MainDataGPB.proto>
# import "ErrorGPB.proto";
# 
# message MainGataGPB
# {
# 	required string city_name = 1; //城市名称
# 	required int32 city_lv = 2; //总级别	
# 	
# 	// 钱
# 	required int32 gold = 3; //金钱
# 	required int32 copper = 4; //铜钱
# 	required int32 chunyuandan = 5; //纯元丹			
# 
# 	// 建筑物级别
# 	required int32 building1_lv = 6; //圣殿
# 	required int32 building2_lv = 7; //英雄祭坛
# 	required int32 building3_lv = 8; //弟子殿
# 	required int32 building4_lv = 9; //机甲坊
# 	required int32 building5_lv = 10; //精炼坊
# 	required int32 building6_lv = 11; //仓库
# 	required int32 building7_lv = 12; //武碑
# 	required int32 building8_lv = 13; //传送阵
# 	
# 	// 英雄
# 	optional int32 hero1_lv = 14; //英雄1
# 	optional string hero1_name = 15; //英雄1名字
# 	optional int32 hero2_lv = 16; //英雄2
# 	optional int32 hero3_lv = 17; //英雄3
# 	
# 	// 神兽
# 	required bool animal1 = 18; //青龙
# 	required bool animal2 = 19; //白虎
# 	required bool animal3 = 20; //麒麟
# 	required bool animal4 = 21; //凤凰
# 	required bool animal5 = 22; //龙龟
# 	
# }
# 
# //getMainData
# message GetMainDataRequest
# {
# 	required string username = 1;
# 	required string password = 2;
# }
# 
# message GetMainDataResponse
# {
#     optional ErrorGPB error = 1;
# 	required MainGataGPB data = 2;
# }
# 
# //putMainData
# message PutMainDataRequest
# {
# 	required string username = 1;
# 	required MainGataGPB data = 2;
# }
# 
# message PutMainDataResponse
# {
#     optional ErrorGPB error = 1;
# }
# 
# 
# 

require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

require 'pb/ErrorGPB.pb'
class MainGataGPB < ::Protobuf::Message
  defined_in __FILE__
  required :string, :city_name, 1
  required :int32, :city_lv, 2
  required :int32, :gold, 3
  required :int32, :copper, 4
  required :int32, :chunyuandan, 5
  required :int32, :building1_lv, 6
  required :int32, :building2_lv, 7
  required :int32, :building3_lv, 8
  required :int32, :building4_lv, 9
  required :int32, :building5_lv, 10
  required :int32, :building6_lv, 11
  required :int32, :building7_lv, 12
  required :int32, :building8_lv, 13
  optional :int32, :hero1_lv, 14
  optional :string, :hero1_name, 15
  optional :int32, :hero2_lv, 16
  optional :int32, :hero3_lv, 17
  required :bool, :animal1, 18
  required :bool, :animal2, 19
  required :bool, :animal3, 20
  required :bool, :animal4, 21
  required :bool, :animal5, 22
end
class GetMainDataRequest < ::Protobuf::Message
  defined_in __FILE__
  required :string, :username, 1
  required :string, :password, 2
end
class GetMainDataResponse < ::Protobuf::Message
  defined_in __FILE__
  optional :ErrorGPB, :error, 1
  required :MainGataGPB, :data, 2
end
class PutMainDataRequest < ::Protobuf::Message
  defined_in __FILE__
  required :string, :username, 1
  required :MainGataGPB, :data, 2
end
class PutMainDataResponse < ::Protobuf::Message
  defined_in __FILE__
  optional :ErrorGPB, :error, 1
end