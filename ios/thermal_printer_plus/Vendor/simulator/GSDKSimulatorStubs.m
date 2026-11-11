#import "BLEConnecter.h"
#import "EthernetConnecter.h"

@implementation Connecter

- (void)connect {
}

- (void)connect:(void (^)(ConnectState))connectState {
    if (connectState) {
        connectState(CONNECT_STATE_FAILT);
    }
}

- (void)close {
}

- (void)write:(NSData *)data receCallBack:(void (^)(NSData *))callBack {
    if (callBack) {
        callBack(nil);
    }
}

- (void)write:(NSData *)data {
}

- (void)read:(void (^)(NSData *))data {
}

@end

@implementation BLEConnecter

- (void)configureTransparentServiceUUID:(NSString *)serviceUUID txUUID:(NSString *)txUUID rxUUID:(NSString *)rxUUID {
}

- (void)scanForPeripheralsWithServices:(NSArray<CBUUID *> *)serviceUUIDs options:(NSDictionary<NSString *, id> *)options discover:(void (^)(CBPeripheral *_Nullable, NSDictionary<NSString *, id> *_Nullable, NSNumber *_Nullable))discover {
}

- (void)stopScan {
}

- (void)didUpdateState:(void (^)(NSInteger))state {
    if (state) {
        state(CBManagerStatePoweredOn);
    }
}

- (void)connectPeripheral:(CBPeripheral *)peripheral options:(NSDictionary<NSString *, id> *)options timeout:(NSUInteger)timeout connectBlack:(void (^)(ConnectState))connectState {
    if (connectState) {
        connectState(CONNECT_STATE_FAILT);
    }
}

- (void)connectPeripheral:(CBPeripheral *)peripheral options:(NSDictionary<NSString *, id> *)options {
}

- (void)closePeripheral:(CBPeripheral *)peripheral {
}

- (void)write:(NSData *)data progress:(void (^)(NSUInteger, NSUInteger))progress receCallBack:(void (^)(NSData *_Nullable))callBack {
    if (callBack) {
        callBack(nil);
    }
}

- (void)writeValue:(NSData *)data forCharacteristic:(CBCharacteristic *)characteristic type:(CBCharacteristicWriteType)type {
}

@end

@implementation EthernetConnecter

- (void)connectIP:(NSString *)ip port:(int)port connectState:(void (^)(ConnectState))connectState callback:(void (^)(NSData *))callback {
    if (connectState) {
        connectState(CONNECT_STATE_FAILT);
    }
}

- (void)connectIP:(NSString *)ip port:(int)port connectState:(void (^)(ConnectState))connectState {
    if (connectState) {
        connectState(CONNECT_STATE_FAILT);
    }
}

@end
