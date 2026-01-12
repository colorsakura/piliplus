/// 基础服务接口
abstract class IBaseService {
  /// 初始化服务
  Future<void> initialize();

  /// 销毁服务
  Future<void> dispose();
}