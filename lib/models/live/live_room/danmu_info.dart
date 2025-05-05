class LiveDanmakuInfo {
  String message;
  int ttl, code;
  DanmakuInfoData data;
  LiveDanmakuInfo(
      {required this.code,
      required this.message,
      required this.ttl,
      required this.data});

  @override
  String toString() {
    return 'LiveDanmakuInfo{code: $code, message: $message, ttl: $ttl, data: $data}';
  }

  factory LiveDanmakuInfo.fromJson(dynamic json) {
    List<HostInfo> hostList = [];
    for (var host in json['data']['host_list']) {
      hostList.add(HostInfo(
          host: host['host'],
          port: host['port'],
          wssPort: host['wss_port'],
          wsPort: host['ws_port']));
    }
    return LiveDanmakuInfo(
        code: json['code'],
        message: json['message'],
        ttl: json['ttl'],
        data: DanmakuInfoData(
            group: json['data']['group'],
            businessId: json['data']['business_id'],
            ttl: json['data']['ttl'] ?? 0,
            refreshRate: json['data']['refresh_rate'],
            maxDelay: json['data']['max_delay'],
            token: json['data']['token'],
            hostList: hostList));
  }
}

class DanmakuInfoData {
  String group;
  int businessId, ttl, refreshRate, maxDelay;
  String token;
  List<HostInfo> hostList;
  DanmakuInfoData(
      {required this.group,
      required this.businessId,
      required this.ttl,
      required this.refreshRate,
      required this.maxDelay,
      required this.token,
      required this.hostList});

  @override
  String toString() {
    return 'DanmakuInfoData{group: $group, businessId: $businessId, ttl: $ttl, refreshRate: $refreshRate, maxDelay: $maxDelay, token: $token, hostList: $hostList}';
  }
}

class HostInfo {
  String host;
  int port, wssPort, wsPort;
  HostInfo(
      {required this.host,
      required this.port,
      required this.wssPort,
      required this.wsPort});

  @override
  String toString() {
    return 'HostInfo{host: $host, port: $port, wssPort: $wssPort, wsPort: $wsPort}';
  }
}
