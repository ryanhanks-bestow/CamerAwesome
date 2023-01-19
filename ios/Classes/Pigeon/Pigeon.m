// Autogenerated from Pigeon (v6.0.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "Pigeon.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[ error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null] ];
  }
  return @[ result ?: [NSNull null]  ];
}
static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}
static id GetNullableObjectAtIndex(NSArray* array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}


@interface PreviewSize ()
+ (PreviewSize *)fromList:(NSArray *)list;
+ (nullable PreviewSize *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface ExifPreferences ()
+ (ExifPreferences *)fromList:(NSArray *)list;
+ (nullable ExifPreferences *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface VideoOptions ()
+ (VideoOptions *)fromList:(NSArray *)list;
+ (nullable VideoOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonSensorTypeDevice ()
+ (PigeonSensorTypeDevice *)fromList:(NSArray *)list;
+ (nullable PigeonSensorTypeDevice *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end


@implementation PreviewSize
+ (instancetype)makeWithWidth:(NSNumber *)width
    height:(NSNumber *)height {
  PreviewSize* pigeonResult = [[PreviewSize alloc] init];
  pigeonResult.width = width;
  pigeonResult.height = height;
  return pigeonResult;
}
+ (PreviewSize *)fromList:(NSArray *)list {
  PreviewSize *pigeonResult = [[PreviewSize alloc] init];
  pigeonResult.width = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.width != nil, @"");
  pigeonResult.height = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.height != nil, @"");
  return pigeonResult;
}
+ (nullable PreviewSize *)nullableFromList:(NSArray *)list { return (list) ? [PreviewSize fromList:list] : nil; }
- (NSArray *)toList {
  return @[
    (self.width ?: [NSNull null]),
    (self.height ?: [NSNull null]),
  ];
}
@end

@implementation ExifPreferences
+ (instancetype)makeWithSaveGPSLocation:(NSNumber *)saveGPSLocation {
  ExifPreferences* pigeonResult = [[ExifPreferences alloc] init];
  pigeonResult.saveGPSLocation = saveGPSLocation;
  return pigeonResult;
}
+ (ExifPreferences *)fromList:(NSArray *)list {
  ExifPreferences *pigeonResult = [[ExifPreferences alloc] init];
  pigeonResult.saveGPSLocation = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.saveGPSLocation != nil, @"");
  return pigeonResult;
}
+ (nullable ExifPreferences *)nullableFromList:(NSArray *)list { return (list) ? [ExifPreferences fromList:list] : nil; }
- (NSArray *)toList {
  return @[
    (self.saveGPSLocation ?: [NSNull null]),
  ];
}
@end

@implementation VideoOptions
+ (instancetype)makeWithFileType:(NSString *)fileType
    codec:(NSString *)codec {
  VideoOptions* pigeonResult = [[VideoOptions alloc] init];
  pigeonResult.fileType = fileType;
  pigeonResult.codec = codec;
  return pigeonResult;
}
+ (VideoOptions *)fromList:(NSArray *)list {
  VideoOptions *pigeonResult = [[VideoOptions alloc] init];
  pigeonResult.fileType = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.fileType != nil, @"");
  pigeonResult.codec = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.codec != nil, @"");
  return pigeonResult;
}
+ (nullable VideoOptions *)nullableFromList:(NSArray *)list { return (list) ? [VideoOptions fromList:list] : nil; }
- (NSArray *)toList {
  return @[
    (self.fileType ?: [NSNull null]),
    (self.codec ?: [NSNull null]),
  ];
}
@end

@implementation PigeonSensorTypeDevice
+ (instancetype)makeWithSensorType:(PigeonSensorType)sensorType
    name:(NSString *)name
    iso:(NSNumber *)iso
    flashAvailable:(NSNumber *)flashAvailable
    uid:(NSString *)uid {
  PigeonSensorTypeDevice* pigeonResult = [[PigeonSensorTypeDevice alloc] init];
  pigeonResult.sensorType = sensorType;
  pigeonResult.name = name;
  pigeonResult.iso = iso;
  pigeonResult.flashAvailable = flashAvailable;
  pigeonResult.uid = uid;
  return pigeonResult;
}
+ (PigeonSensorTypeDevice *)fromList:(NSArray *)list {
  PigeonSensorTypeDevice *pigeonResult = [[PigeonSensorTypeDevice alloc] init];
  pigeonResult.sensorType = [GetNullableObjectAtIndex(list, 0) integerValue];
  pigeonResult.name = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.iso = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.iso != nil, @"");
  pigeonResult.flashAvailable = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.flashAvailable != nil, @"");
  pigeonResult.uid = GetNullableObjectAtIndex(list, 4);
  NSAssert(pigeonResult.uid != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonSensorTypeDevice *)nullableFromList:(NSArray *)list { return (list) ? [PigeonSensorTypeDevice fromList:list] : nil; }
- (NSArray *)toList {
  return @[
    @(self.sensorType),
    (self.name ?: [NSNull null]),
    (self.iso ?: [NSNull null]),
    (self.flashAvailable ?: [NSNull null]),
    (self.uid ?: [NSNull null]),
  ];
}
@end

@interface CameraInterfaceCodecReader : FlutterStandardReader
@end
@implementation CameraInterfaceCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [ExifPreferences fromList:[self readValue]];
    
    case 129:     
      return [PigeonSensorTypeDevice fromList:[self readValue]];
    
    case 130:     
      return [PreviewSize fromList:[self readValue]];
    
    case 131:     
      return [PreviewSize fromList:[self readValue]];
    
    case 132:     
      return [VideoOptions fromList:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface CameraInterfaceCodecWriter : FlutterStandardWriter
@end
@implementation CameraInterfaceCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[ExifPreferences class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else 
  if ([value isKindOfClass:[PigeonSensorTypeDevice class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else 
  if ([value isKindOfClass:[PreviewSize class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else 
  if ([value isKindOfClass:[PreviewSize class]]) {
    [self writeByte:131];
    [self writeValue:[value toList]];
  } else 
  if ([value isKindOfClass:[VideoOptions class]]) {
    [self writeByte:132];
    [self writeValue:[value toList]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface CameraInterfaceCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation CameraInterfaceCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[CameraInterfaceCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[CameraInterfaceCodecReader alloc] initWithData:data];
}
@end


NSObject<FlutterMessageCodec> *CameraInterfaceGetCodec() {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    CameraInterfaceCodecReaderWriter *readerWriter = [[CameraInterfaceCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void CameraInterfaceSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<CameraInterface> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setupCamera"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setupCameraSensor:aspectRatio:zoom:flashMode:captureMode:enableImageStream:exifPreferences:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(setupCameraSensor:aspectRatio:zoom:flashMode:captureMode:enableImageStream:exifPreferences:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_sensor = GetNullableObjectAtIndex(args, 0);
        NSString *arg_aspectRatio = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_zoom = GetNullableObjectAtIndex(args, 2);
        NSString *arg_flashMode = GetNullableObjectAtIndex(args, 3);
        NSString *arg_captureMode = GetNullableObjectAtIndex(args, 4);
        NSNumber *arg_enableImageStream = GetNullableObjectAtIndex(args, 5);
        ExifPreferences *arg_exifPreferences = GetNullableObjectAtIndex(args, 6);
        [api setupCameraSensor:arg_sensor aspectRatio:arg_aspectRatio zoom:arg_zoom flashMode:arg_flashMode captureMode:arg_captureMode enableImageStream:arg_enableImageStream exifPreferences:arg_exifPreferences completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.checkPermissions"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(checkPermissionsWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(checkPermissionsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<NSString *> *output = [api checkPermissionsWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
    /// Returns given [CamerAwesomePermission] list (as String). Location permission might be
  /// refused but the app should still be able to run.
{
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.requestPermissions"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(requestPermissionsSaveGpsLocation:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(requestPermissionsSaveGpsLocation:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_saveGpsLocation = GetNullableObjectAtIndex(args, 0);
        [api requestPermissionsSaveGpsLocation:arg_saveGpsLocation completion:^(NSArray<NSString *> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getPreviewTextureId"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getPreviewTextureIdWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getPreviewTextureIdWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api getPreviewTextureIdWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.takePhoto"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(takePhotoPath:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(takePhotoPath:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_path = GetNullableObjectAtIndex(args, 0);
        [api takePhotoPath:arg_path completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.recordVideo"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(recordVideoPath:options:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(recordVideoPath:options:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_path = GetNullableObjectAtIndex(args, 0);
        VideoOptions *arg_options = GetNullableObjectAtIndex(args, 1);
        [api recordVideoPath:arg_path options:arg_options completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.pauseVideoRecording"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(pauseVideoRecordingWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(pauseVideoRecordingWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api pauseVideoRecordingWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.resumeVideoRecording"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(resumeVideoRecordingWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(resumeVideoRecordingWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api resumeVideoRecordingWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.receivedImageFromStream"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(receivedImageFromStreamWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(receivedImageFromStreamWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api receivedImageFromStreamWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.stopRecordingVideo"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(stopRecordingVideoWithCompletion:)], @"CameraInterface api (%@) doesn't respond to @selector(stopRecordingVideoWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api stopRecordingVideoWithCompletion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getFrontSensors"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getFrontSensorsWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getFrontSensorsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<PigeonSensorTypeDevice *> *output = [api getFrontSensorsWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getBackSensors"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getBackSensorsWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getBackSensorsWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<PigeonSensorTypeDevice *> *output = [api getBackSensorsWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.start"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(startWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(startWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api startWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.stop"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(stopWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(stopWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api stopWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setFlashMode"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setFlashModeMode:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setFlashModeMode:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_mode = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setFlashModeMode:arg_mode error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.handleAutoFocus"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(handleAutoFocusWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(handleAutoFocusWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api handleAutoFocusWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.focusOnPoint"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(focusOnPointPreviewSize:x:y:error:)], @"CameraInterface api (%@) doesn't respond to @selector(focusOnPointPreviewSize:x:y:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PreviewSize *arg_previewSize = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_x = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_y = GetNullableObjectAtIndex(args, 2);
        FlutterError *error;
        [api focusOnPointPreviewSize:arg_previewSize x:arg_x y:arg_y error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setZoom"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setZoomZoom:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setZoomZoom:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_zoom = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setZoomZoom:arg_zoom error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setSensor"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setSensorSensor:deviceId:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setSensorSensor:deviceId:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_sensor = GetNullableObjectAtIndex(args, 0);
        NSString *arg_deviceId = GetNullableObjectAtIndex(args, 1);
        FlutterError *error;
        [api setSensorSensor:arg_sensor deviceId:arg_deviceId error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setCorrection"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCorrectionBrightness:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setCorrectionBrightness:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_brightness = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setCorrectionBrightness:arg_brightness error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getMaxZoom"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getMaxZoomWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getMaxZoomWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api getMaxZoomWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setCaptureMode"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCaptureModeMode:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setCaptureModeMode:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_mode = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setCaptureModeMode:arg_mode error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setRecordingAudioMode"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setRecordingAudioModeEnableAudio:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(setRecordingAudioModeEnableAudio:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_enableAudio = GetNullableObjectAtIndex(args, 0);
        [api setRecordingAudioModeEnableAudio:arg_enableAudio completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.availableSizes"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(availableSizesWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(availableSizesWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSArray<PreviewSize *> *output = [api availableSizesWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.refresh"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(refreshWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(refreshWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        [api refreshWithError:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.getEffectivPreviewSize"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getEffectivPreviewSizeWithError:)], @"CameraInterface api (%@) doesn't respond to @selector(getEffectivPreviewSizeWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        PreviewSize *output = [api getEffectivPreviewSizeWithError:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setPhotoSize"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setPhotoSizeSize:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setPhotoSizeSize:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PreviewSize *arg_size = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setPhotoSizeSize:arg_size error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setPreviewSize"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setPreviewSizeSize:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setPreviewSizeSize:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PreviewSize *arg_size = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setPreviewSizeSize:arg_size error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setAspectRatio"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setAspectRatioAspectRatio:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setAspectRatioAspectRatio:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_aspectRatio = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setAspectRatioAspectRatio:arg_aspectRatio error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setupImageAnalysisStream"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setupImageAnalysisStreamFormat:width:maxFramesPerSecond:error:)], @"CameraInterface api (%@) doesn't respond to @selector(setupImageAnalysisStreamFormat:width:maxFramesPerSecond:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_format = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_width = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_maxFramesPerSecond = GetNullableObjectAtIndex(args, 2);
        FlutterError *error;
        [api setupImageAnalysisStreamFormat:arg_format width:arg_width maxFramesPerSecond:arg_maxFramesPerSecond error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.CameraInterface.setExifPreferences"
        binaryMessenger:binaryMessenger
        codec:CameraInterfaceGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setExifPreferencesExifPreferences:completion:)], @"CameraInterface api (%@) doesn't respond to @selector(setExifPreferencesExifPreferences:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        ExifPreferences *arg_exifPreferences = GetNullableObjectAtIndex(args, 0);
        [api setExifPreferencesExifPreferences:arg_exifPreferences completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
