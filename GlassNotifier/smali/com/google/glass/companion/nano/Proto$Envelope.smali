.class public final Lcom/google/glass/companion/nano/Proto$Envelope;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$Envelope;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$Envelope;


# instance fields
.field public androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

.field public apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

.field public apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

.field private bitField0_:I

.field public command:Lcom/google/glass/companion/nano/Proto$Command;

.field public companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

.field public companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

.field public companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

.field public error:Lcom/google/glass/companion/nano/Proto$Error;

.field public getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

.field public glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

.field public glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

.field public glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

.field public glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

.field public glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

.field public inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

.field public inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

.field public locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

.field public locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

.field public mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

.field private messageC2G_:Ljava/lang/String;

.field public motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

.field public multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

.field public navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

.field public notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

.field public openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

.field public openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

.field public photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

.field public screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

.field private serialNumber_:I

.field public setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

.field public setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

.field private setupWifiC2G_:Ljava/lang/String;

.field public setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

.field private timeMillis_:J

.field public timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

.field public timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

.field private timezoneC2G_:Ljava/lang/String;

.field public updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

.field private uptimeMillis_:J

.field private urlG2C_:Ljava/lang/String;

.field public version:I

.field public wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

.field public wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

.field public wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

.field public wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 297
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Envelope;->clear()Lcom/google/glass/companion/nano/Proto$Envelope;

    .line 298
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Envelope;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Envelope;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Envelope;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Envelope;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$Envelope;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$Envelope;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Envelope;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$Envelope;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$Envelope;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Envelope;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1519
    new-instance v0, Lcom/google/glass/companion/nano/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$Envelope;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$Envelope;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 301
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 302
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->version:I

    .line 303
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    .line 304
    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    .line 305
    iput-wide v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    .line 306
    invoke-static {}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->emptyArray()[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 307
    invoke-static {}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;->emptyArray()[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    .line 308
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    .line 309
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 312
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    .line 316
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    .line 317
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    .line 318
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    .line 319
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    .line 320
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    .line 321
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    .line 322
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    .line 323
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    .line 324
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    .line 325
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    .line 326
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    .line 327
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    .line 328
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    .line 329
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    .line 330
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    .line 331
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    .line 332
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    .line 333
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    .line 334
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    .line 335
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    .line 336
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    .line 337
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    .line 338
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    .line 339
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    .line 340
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    .line 341
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    .line 342
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    .line 343
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    .line 344
    invoke-static {}, Lcom/google/glass/companion/nano/Proto$WifiConfig;->emptyArray()[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    .line 345
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    .line 346
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    .line 347
    iput-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->cachedSize:I

    .line 349
    return-object p0
.end method

.method public clearMessageC2G()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1

    .prologue
    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 117
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 118
    return-object p0
.end method

.method public clearSerialNumber()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    .line 48
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public clearSetupWifiC2G()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1

    .prologue
    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 186
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 187
    return-object p0
.end method

.method public clearTimeMillis()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    .line 67
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public clearTimezoneC2G()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1

    .prologue
    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 139
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 140
    return-object p0
.end method

.method public clearUptimeMillis()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    .line 86
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 87
    return-object p0
.end method

.method public clearUrlG2C()Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1

    .prologue
    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 164
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 165
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 964
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 965
    .local v2, "size":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->version:I

    .line 966
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 967
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 968
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    .line 969
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 971
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 972
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    .line 973
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 975
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 976
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    .line 977
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 979
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 980
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 981
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    aget-object v0, v3, v1

    .line 982
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v0, :cond_3

    .line 983
    const/4 v3, 0x5

    .line 984
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 980
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-eqz v3, :cond_5

    .line 989
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    .line 990
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 992
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-eqz v3, :cond_6

    .line 993
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    .line 994
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 996
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 997
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 998
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1000
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    .line 1001
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 1002
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1004
    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-eqz v3, :cond_9

    .line 1005
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    .line 1006
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1008
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_a

    .line 1009
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 1010
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1012
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_b

    .line 1013
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 1014
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1016
    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-eqz v3, :cond_c

    .line 1017
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    .line 1018
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1020
    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    if-eqz v3, :cond_d

    .line 1021
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    .line 1022
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1024
    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-eqz v3, :cond_e

    .line 1025
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    .line 1026
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1028
    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    if-eqz v3, :cond_f

    .line 1029
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    .line 1030
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1032
    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    array-length v3, v3

    if-lez v3, :cond_11

    .line 1033
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    array-length v3, v3

    if-ge v1, v3, :cond_11

    .line 1034
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    aget-object v0, v3, v1

    .line 1035
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    if-eqz v0, :cond_10

    .line 1036
    const/16 v3, 0x11

    .line 1037
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1033
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1041
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .end local v1    # "i":I
    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-eqz v3, :cond_12

    .line 1042
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    .line 1043
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1045
    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-eqz v3, :cond_13

    .line 1046
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    .line 1047
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1049
    :cond_13
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-eqz v3, :cond_14

    .line 1050
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    .line 1051
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1053
    :cond_14
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-eqz v3, :cond_15

    .line 1054
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    .line 1055
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1057
    :cond_15
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-eqz v3, :cond_16

    .line 1058
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    .line 1059
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1061
    :cond_16
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-eqz v3, :cond_17

    .line 1062
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    .line 1063
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1065
    :cond_17
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-eqz v3, :cond_18

    .line 1066
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    .line 1067
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1069
    :cond_18
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-eqz v3, :cond_19

    .line 1070
    const/16 v3, 0x19

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    .line 1071
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1073
    :cond_19
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    if-eqz v3, :cond_1a

    .line 1074
    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    .line 1075
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1077
    :cond_1a
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-eqz v3, :cond_1b

    .line 1078
    const/16 v3, 0x1b

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    .line 1079
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1081
    :cond_1b
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    if-eqz v3, :cond_1c

    .line 1082
    const/16 v3, 0x1c

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    .line 1083
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1085
    :cond_1c
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-eqz v3, :cond_1d

    .line 1086
    const/16 v3, 0x1d

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    .line 1087
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1089
    :cond_1d
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-eqz v3, :cond_1e

    .line 1090
    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    .line 1091
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1093
    :cond_1e
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-eqz v3, :cond_1f

    .line 1094
    const/16 v3, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    .line 1095
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1097
    :cond_1f
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-eqz v3, :cond_20

    .line 1098
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    .line 1099
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1101
    :cond_20
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-eqz v3, :cond_21

    .line 1102
    const/16 v3, 0x21

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    .line 1103
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1105
    :cond_21
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    if-eqz v3, :cond_22

    .line 1106
    const/16 v3, 0x22

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    .line 1107
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1109
    :cond_22
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-eqz v3, :cond_23

    .line 1110
    const/16 v3, 0x23

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    .line 1111
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1113
    :cond_23
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-eqz v3, :cond_24

    .line 1114
    const/16 v3, 0x24

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    .line 1115
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1117
    :cond_24
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-eqz v3, :cond_25

    .line 1118
    const/16 v3, 0x25

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    .line 1119
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1121
    :cond_25
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-eqz v3, :cond_26

    .line 1122
    const/16 v3, 0x26

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    .line 1123
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1125
    :cond_26
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-eqz v3, :cond_27

    .line 1126
    const/16 v3, 0x27

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    .line 1127
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1129
    :cond_27
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-eqz v3, :cond_28

    .line 1130
    const/16 v3, 0x28

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    .line 1131
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1133
    :cond_28
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    if-eqz v3, :cond_29

    .line 1134
    const/16 v3, 0x29

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    .line 1135
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1137
    :cond_29
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-eqz v3, :cond_2a

    .line 1138
    const/16 v3, 0x2a

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    .line 1139
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1141
    :cond_2a
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    array-length v3, v3

    if-lez v3, :cond_2c

    .line 1142
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    array-length v3, v3

    if-ge v1, v3, :cond_2c

    .line 1143
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    aget-object v0, v3, v1

    .line 1144
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$WifiConfig;
    if-eqz v0, :cond_2b

    .line 1145
    const/16 v3, 0x2b

    .line 1146
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1142
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1150
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .end local v1    # "i":I
    :cond_2c
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-eqz v3, :cond_2d

    .line 1151
    const/16 v3, 0x2c

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    .line 1152
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1154
    :cond_2d
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    if-eqz v3, :cond_2e

    .line 1155
    const/16 v3, 0x2d

    iget-object v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    .line 1156
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1158
    :cond_2e
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 713
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$Envelope;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 360
    check-cast v0, Lcom/google/glass/companion/nano/Proto$Envelope;

    .line 361
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$Envelope;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->version:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->version:I

    if-ne v3, v4, :cond_0

    .line 364
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    if-ne v3, v4, :cond_0

    .line 368
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 372
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    iget-wide v6, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-nez v3, :cond_26

    .line 385
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-nez v3, :cond_0

    .line 393
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-nez v3, :cond_27

    .line 394
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-nez v3, :cond_0

    .line 402
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 407
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-nez v3, :cond_28

    .line 411
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-nez v3, :cond_0

    .line 419
    :cond_4
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-nez v3, :cond_29

    .line 428
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-nez v3, :cond_0

    .line 436
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    if-nez v3, :cond_2a

    .line 437
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    if-nez v3, :cond_0

    .line 445
    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-nez v3, :cond_2b

    .line 446
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-nez v3, :cond_0

    .line 454
    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    if-nez v3, :cond_2c

    .line 455
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    if-nez v3, :cond_0

    .line 463
    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-nez v3, :cond_2d

    .line 464
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-nez v3, :cond_0

    .line 472
    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-nez v3, :cond_2e

    .line 473
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-nez v3, :cond_0

    .line 481
    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-nez v3, :cond_2f

    .line 482
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-nez v3, :cond_0

    .line 490
    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-nez v3, :cond_30

    .line 491
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-nez v3, :cond_0

    .line 499
    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-nez v3, :cond_31

    .line 500
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-nez v3, :cond_0

    .line 508
    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-nez v3, :cond_32

    .line 509
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-nez v3, :cond_0

    .line 517
    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-nez v3, :cond_33

    .line 518
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-nez v3, :cond_0

    .line 526
    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-nez v3, :cond_34

    .line 527
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-nez v3, :cond_0

    .line 535
    :cond_10
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    if-nez v3, :cond_35

    .line 536
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    if-nez v3, :cond_0

    .line 544
    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-nez v3, :cond_36

    .line 545
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-nez v3, :cond_0

    .line 553
    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    if-nez v3, :cond_37

    .line 554
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    if-nez v3, :cond_0

    .line 562
    :cond_13
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-nez v3, :cond_38

    .line 563
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-nez v3, :cond_0

    .line 571
    :cond_14
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-nez v3, :cond_39

    .line 572
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-nez v3, :cond_0

    .line 580
    :cond_15
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-nez v3, :cond_3a

    .line 581
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-nez v3, :cond_0

    .line 589
    :cond_16
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-nez v3, :cond_3b

    .line 590
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-nez v3, :cond_0

    .line 598
    :cond_17
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-nez v3, :cond_3c

    .line 599
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-nez v3, :cond_0

    .line 607
    :cond_18
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    if-nez v3, :cond_3d

    .line 608
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    if-nez v3, :cond_0

    .line 616
    :cond_19
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-nez v3, :cond_3e

    .line 617
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-nez v3, :cond_0

    .line 625
    :cond_1a
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-nez v3, :cond_3f

    .line 626
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-nez v3, :cond_0

    .line 634
    :cond_1b
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-nez v3, :cond_40

    .line 635
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-nez v3, :cond_0

    .line 643
    :cond_1c
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-nez v3, :cond_41

    .line 644
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-nez v3, :cond_0

    .line 652
    :cond_1d
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-nez v3, :cond_42

    .line 653
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-nez v3, :cond_0

    .line 661
    :cond_1e
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-nez v3, :cond_43

    .line 662
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-nez v3, :cond_0

    .line 670
    :cond_1f
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    if-nez v3, :cond_44

    .line 671
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    if-nez v3, :cond_0

    .line 679
    :cond_20
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-nez v3, :cond_45

    .line 680
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-nez v3, :cond_0

    .line 688
    :cond_21
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-nez v3, :cond_46

    .line 693
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-nez v3, :cond_0

    .line 701
    :cond_22
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    if-nez v3, :cond_47

    .line 702
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    if-nez v3, :cond_0

    .line 710
    :cond_23
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 711
    :cond_24
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_25

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_25
    move v1, v2

    goto/16 :goto_0

    .line 389
    :cond_26
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 398
    :cond_27
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$LocationMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 415
    :cond_28
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 432
    :cond_29
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    .line 441
    :cond_2a
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 450
    :cond_2b
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$ScreenShot;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 459
    :cond_2c
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Command;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    .line 468
    :cond_2d
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$ApiRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    .line 477
    :cond_2e
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$ApiResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    .line 486
    :cond_2f
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$MotionEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    .line 495
    :cond_30
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    .line 504
    :cond_31
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    .line 513
    :cond_32
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 522
    :cond_33
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    .line 531
    :cond_34
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    .line 540
    :cond_35
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    .line 549
    :cond_36
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    .line 558
    :cond_37
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Photo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_0

    .line 567
    :cond_38
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    .line 576
    :cond_39
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    .line 585
    :cond_3a
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    .line 594
    :cond_3b
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    .line 603
    :cond_3c
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    .line 612
    :cond_3d
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Wallpaper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_0

    .line 621
    :cond_3e
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_0

    .line 630
    :cond_3f
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_0

    .line 639
    :cond_40
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_0

    .line 648
    :cond_41
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_0

    .line 657
    :cond_42
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_0

    .line 666
    :cond_43
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_0

    .line 675
    :cond_44
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$WallpaperInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_0

    .line 684
    :cond_45
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_0

    .line 697
    :cond_46
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$WifiStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_0

    .line 706
    :cond_47
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    iget-object v4, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/nano/Proto$Notification;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_0

    .line 713
    :cond_48
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    return v0
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    return-wide v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getUptimeMillis()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    return-object v0
.end method

.method public hasMessageC2G()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerialNumber()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetupWifiC2G()Z
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeMillis()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimezoneC2G()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUptimeMillis()Z
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlG2C()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 718
    const/16 v0, 0x11

    .line 719
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 720
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->version:I

    add-int v0, v1, v3

    .line 721
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    add-int v0, v1, v3

    .line 722
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    iget-wide v6, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 723
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    iget-wide v6, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 724
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 725
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v1, v3

    .line 726
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    .line 727
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v1, v3

    .line 728
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-nez v1, :cond_1

    move v1, v2

    .line 729
    :goto_0
    add-int v0, v3, v1

    .line 730
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-nez v1, :cond_2

    move v1, v2

    .line 731
    :goto_1
    add-int v0, v3, v1

    .line 732
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 733
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 734
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-nez v1, :cond_3

    move v1, v2

    .line 735
    :goto_2
    add-int v0, v3, v1

    .line 736
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 737
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 738
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-nez v1, :cond_4

    move v1, v2

    .line 739
    :goto_3
    add-int v0, v3, v1

    .line 740
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    if-nez v1, :cond_5

    move v1, v2

    .line 741
    :goto_4
    add-int v0, v3, v1

    .line 742
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-nez v1, :cond_6

    move v1, v2

    .line 743
    :goto_5
    add-int v0, v3, v1

    .line 744
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    if-nez v1, :cond_7

    move v1, v2

    .line 745
    :goto_6
    add-int v0, v3, v1

    .line 746
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-nez v1, :cond_8

    move v1, v2

    .line 747
    :goto_7
    add-int v0, v3, v1

    .line 748
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-nez v1, :cond_9

    move v1, v2

    .line 749
    :goto_8
    add-int v0, v3, v1

    .line 750
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-nez v1, :cond_a

    move v1, v2

    .line 751
    :goto_9
    add-int v0, v3, v1

    .line 752
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-nez v1, :cond_b

    move v1, v2

    .line 753
    :goto_a
    add-int v0, v3, v1

    .line 754
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-nez v1, :cond_c

    move v1, v2

    .line 755
    :goto_b
    add-int v0, v3, v1

    .line 756
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-nez v1, :cond_d

    move v1, v2

    .line 757
    :goto_c
    add-int v0, v3, v1

    .line 758
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-nez v1, :cond_e

    move v1, v2

    .line 759
    :goto_d
    add-int v0, v3, v1

    .line 760
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-nez v1, :cond_f

    move v1, v2

    .line 761
    :goto_e
    add-int v0, v3, v1

    .line 762
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    if-nez v1, :cond_10

    move v1, v2

    .line 763
    :goto_f
    add-int v0, v3, v1

    .line 764
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-nez v1, :cond_11

    move v1, v2

    .line 765
    :goto_10
    add-int v0, v3, v1

    .line 766
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    if-nez v1, :cond_12

    move v1, v2

    .line 767
    :goto_11
    add-int v0, v3, v1

    .line 768
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-nez v1, :cond_13

    move v1, v2

    .line 769
    :goto_12
    add-int v0, v3, v1

    .line 770
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-nez v1, :cond_14

    move v1, v2

    .line 771
    :goto_13
    add-int v0, v3, v1

    .line 772
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-nez v1, :cond_15

    move v1, v2

    .line 773
    :goto_14
    add-int v0, v3, v1

    .line 774
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-nez v1, :cond_16

    move v1, v2

    .line 775
    :goto_15
    add-int v0, v3, v1

    .line 776
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-nez v1, :cond_17

    move v1, v2

    .line 777
    :goto_16
    add-int v0, v3, v1

    .line 778
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    if-nez v1, :cond_18

    move v1, v2

    .line 779
    :goto_17
    add-int v0, v3, v1

    .line 780
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-nez v1, :cond_19

    move v1, v2

    .line 781
    :goto_18
    add-int v0, v3, v1

    .line 782
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-nez v1, :cond_1a

    move v1, v2

    .line 783
    :goto_19
    add-int v0, v3, v1

    .line 784
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-nez v1, :cond_1b

    move v1, v2

    .line 785
    :goto_1a
    add-int v0, v3, v1

    .line 786
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-nez v1, :cond_1c

    move v1, v2

    .line 787
    :goto_1b
    add-int v0, v3, v1

    .line 788
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-nez v1, :cond_1d

    move v1, v2

    .line 789
    :goto_1c
    add-int v0, v3, v1

    .line 790
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-nez v1, :cond_1e

    move v1, v2

    .line 791
    :goto_1d
    add-int v0, v3, v1

    .line 792
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    if-nez v1, :cond_1f

    move v1, v2

    .line 793
    :goto_1e
    add-int v0, v3, v1

    .line 794
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-nez v1, :cond_20

    move v1, v2

    .line 795
    :goto_1f
    add-int v0, v3, v1

    .line 796
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    .line 797
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v0, v1, v3

    .line 798
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-nez v1, :cond_21

    move v1, v2

    .line 799
    :goto_20
    add-int v0, v3, v1

    .line 800
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    if-nez v1, :cond_22

    move v1, v2

    .line 801
    :goto_21
    add-int v0, v3, v1

    .line 802
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 803
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 804
    :cond_0
    :goto_22
    add-int v0, v1, v2

    .line 805
    return v0

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$LocationRequest;->hashCode()I

    move-result v1

    goto/16 :goto_0

    .line 731
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$LocationMessage;->hashCode()I

    move-result v1

    goto/16 :goto_1

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;->hashCode()I

    move-result v1

    goto/16 :goto_2

    .line 739
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;->hashCode()I

    move-result v1

    goto/16 :goto_3

    .line 741
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Error;->hashCode()I

    move-result v1

    goto/16 :goto_4

    .line 743
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$ScreenShot;->hashCode()I

    move-result v1

    goto/16 :goto_5

    .line 745
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Command;->hashCode()I

    move-result v1

    goto/16 :goto_6

    .line 747
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$ApiRequest;->hashCode()I

    move-result v1

    goto/16 :goto_7

    .line 749
    :cond_9
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$ApiResponse;->hashCode()I

    move-result v1

    goto/16 :goto_8

    .line 751
    :cond_a
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$MotionEvent;->hashCode()I

    move-result v1

    goto/16 :goto_9

    .line 753
    :cond_b
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->hashCode()I

    move-result v1

    goto/16 :goto_a

    .line 755
    :cond_c
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;->hashCode()I

    move-result v1

    goto/16 :goto_b

    .line 757
    :cond_d
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;->hashCode()I

    move-result v1

    goto/16 :goto_c

    .line 759
    :cond_e
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;->hashCode()I

    move-result v1

    goto/16 :goto_d

    .line 761
    :cond_f
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;->hashCode()I

    move-result v1

    goto/16 :goto_e

    .line 763
    :cond_10
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;->hashCode()I

    move-result v1

    goto/16 :goto_f

    .line 765
    :cond_11
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;->hashCode()I

    move-result v1

    goto/16 :goto_10

    .line 767
    :cond_12
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Photo;->hashCode()I

    move-result v1

    goto/16 :goto_11

    .line 769
    :cond_13
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;->hashCode()I

    move-result v1

    goto/16 :goto_12

    .line 771
    :cond_14
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;->hashCode()I

    move-result v1

    goto/16 :goto_13

    .line 773
    :cond_15
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;->hashCode()I

    move-result v1

    goto/16 :goto_14

    .line 775
    :cond_16
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;->hashCode()I

    move-result v1

    goto/16 :goto_15

    .line 777
    :cond_17
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->hashCode()I

    move-result v1

    goto/16 :goto_16

    .line 779
    :cond_18
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Wallpaper;->hashCode()I

    move-result v1

    goto/16 :goto_17

    .line 781
    :cond_19
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;->hashCode()I

    move-result v1

    goto/16 :goto_18

    .line 783
    :cond_1a
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;->hashCode()I

    move-result v1

    goto/16 :goto_19

    .line 785
    :cond_1b
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;->hashCode()I

    move-result v1

    goto/16 :goto_1a

    .line 787
    :cond_1c
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;->hashCode()I

    move-result v1

    goto/16 :goto_1b

    .line 789
    :cond_1d
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;->hashCode()I

    move-result v1

    goto/16 :goto_1c

    .line 791
    :cond_1e
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;->hashCode()I

    move-result v1

    goto/16 :goto_1d

    .line 793
    :cond_1f
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$WallpaperInfo;->hashCode()I

    move-result v1

    goto/16 :goto_1e

    .line 795
    :cond_20
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;->hashCode()I

    move-result v1

    goto/16 :goto_1f

    .line 799
    :cond_21
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$WifiStatus;->hashCode()I

    move-result v1

    goto/16 :goto_20

    .line 801
    :cond_22
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Notification;->hashCode()I

    move-result v1

    goto/16 :goto_21

    .line 804
    :cond_23
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto/16 :goto_22
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1167
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1171
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1172
    :sswitch_0
    return-object p0

    .line 1177
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->version:I

    goto :goto_0

    .line 1181
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    .line 1182
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1186
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    .line 1187
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1191
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    .line 1192
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1196
    :sswitch_5
    const/16 v5, 0x2a

    .line 1197
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1198
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-nez v5, :cond_2

    move v1, v4

    .line 1199
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 1201
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v1, :cond_1

    .line 1202
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1204
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1205
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    aput-object v5, v2, v1

    .line 1206
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1207
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1204
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1198
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    array-length v1, v5

    goto :goto_1

    .line 1210
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :cond_3
    new-instance v5, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;-><init>()V

    aput-object v5, v2, v1

    .line 1211
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1212
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    goto :goto_0

    .line 1216
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :sswitch_6
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-nez v5, :cond_4

    .line 1217
    new-instance v5, Lcom/google/glass/companion/nano/Proto$LocationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$LocationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    .line 1219
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1223
    :sswitch_7
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-nez v5, :cond_5

    .line 1224
    new-instance v5, Lcom/google/glass/companion/nano/Proto$LocationMessage;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$LocationMessage;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    .line 1226
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1230
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 1231
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1235
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 1236
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1240
    :sswitch_a
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-nez v5, :cond_6

    .line 1241
    new-instance v5, Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$NavigationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    .line 1243
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1247
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 1248
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1252
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 1253
    iget v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1257
    :sswitch_d
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-nez v5, :cond_7

    .line 1258
    new-instance v5, Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$CompanionInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    .line 1260
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1264
    :sswitch_e
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    if-nez v5, :cond_8

    .line 1265
    new-instance v5, Lcom/google/glass/companion/nano/Proto$Error;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$Error;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    .line 1267
    :cond_8
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1271
    :sswitch_f
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-nez v5, :cond_9

    .line 1272
    new-instance v5, Lcom/google/glass/companion/nano/Proto$ScreenShot;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$ScreenShot;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    .line 1274
    :cond_9
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1278
    :sswitch_10
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    if-nez v5, :cond_a

    .line 1279
    new-instance v5, Lcom/google/glass/companion/nano/Proto$Command;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$Command;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    .line 1281
    :cond_a
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1285
    :sswitch_11
    const/16 v5, 0x8a

    .line 1286
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1287
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    if-nez v5, :cond_c

    move v1, v4

    .line 1288
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    .line 1290
    .local v2, "newArray":[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    if-eqz v1, :cond_b

    .line 1291
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1293
    :cond_b
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    .line 1294
    new-instance v5, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;-><init>()V

    aput-object v5, v2, v1

    .line 1295
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1296
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1293
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1287
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    :cond_c
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    array-length v1, v5

    goto :goto_3

    .line 1299
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    :cond_d
    new-instance v5, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;-><init>()V

    aput-object v5, v2, v1

    .line 1300
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1301
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    goto/16 :goto_0

    .line 1305
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    :sswitch_12
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-nez v5, :cond_e

    .line 1306
    new-instance v5, Lcom/google/glass/companion/nano/Proto$ApiRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$ApiRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    .line 1308
    :cond_e
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1312
    :sswitch_13
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-nez v5, :cond_f

    .line 1313
    new-instance v5, Lcom/google/glass/companion/nano/Proto$ApiResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$ApiResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    .line 1315
    :cond_f
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1319
    :sswitch_14
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-nez v5, :cond_10

    .line 1320
    new-instance v5, Lcom/google/glass/companion/nano/Proto$MotionEvent;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$MotionEvent;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    .line 1322
    :cond_10
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1326
    :sswitch_15
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-nez v5, :cond_11

    .line 1327
    new-instance v5, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    .line 1329
    :cond_11
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1333
    :sswitch_16
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-nez v5, :cond_12

    .line 1334
    new-instance v5, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    .line 1336
    :cond_12
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1340
    :sswitch_17
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-nez v5, :cond_13

    .line 1341
    new-instance v5, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$InputBoxRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    .line 1343
    :cond_13
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1347
    :sswitch_18
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-nez v5, :cond_14

    .line 1348
    new-instance v5, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$InputBoxResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    .line 1350
    :cond_14
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1354
    :sswitch_19
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-nez v5, :cond_15

    .line 1355
    new-instance v5, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    .line 1357
    :cond_15
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1361
    :sswitch_1a
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    if-nez v5, :cond_16

    .line 1362
    new-instance v5, Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    .line 1364
    :cond_16
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1368
    :sswitch_1b
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-nez v5, :cond_17

    .line 1369
    new-instance v5, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    .line 1371
    :cond_17
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1375
    :sswitch_1c
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    if-nez v5, :cond_18

    .line 1376
    new-instance v5, Lcom/google/glass/companion/nano/Proto$Photo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$Photo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    .line 1378
    :cond_18
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1382
    :sswitch_1d
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-nez v5, :cond_19

    .line 1383
    new-instance v5, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    .line 1385
    :cond_19
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1389
    :sswitch_1e
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-nez v5, :cond_1a

    .line 1390
    new-instance v5, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    .line 1392
    :cond_1a
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1396
    :sswitch_1f
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-nez v5, :cond_1b

    .line 1397
    new-instance v5, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    .line 1399
    :cond_1b
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1403
    :sswitch_20
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-nez v5, :cond_1c

    .line 1404
    new-instance v5, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    .line 1406
    :cond_1c
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1410
    :sswitch_21
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-nez v5, :cond_1d

    .line 1411
    new-instance v5, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    .line 1413
    :cond_1d
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1417
    :sswitch_22
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    if-nez v5, :cond_1e

    .line 1418
    new-instance v5, Lcom/google/glass/companion/nano/Proto$Wallpaper;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$Wallpaper;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    .line 1420
    :cond_1e
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1424
    :sswitch_23
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-nez v5, :cond_1f

    .line 1425
    new-instance v5, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    .line 1427
    :cond_1f
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1431
    :sswitch_24
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-nez v5, :cond_20

    .line 1432
    new-instance v5, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    .line 1434
    :cond_20
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1438
    :sswitch_25
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-nez v5, :cond_21

    .line 1439
    new-instance v5, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$MultimediaMessage;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    .line 1441
    :cond_21
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1445
    :sswitch_26
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-nez v5, :cond_22

    .line 1446
    new-instance v5, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    .line 1448
    :cond_22
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1452
    :sswitch_27
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-nez v5, :cond_23

    .line 1453
    new-instance v5, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    .line 1455
    :cond_23
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1459
    :sswitch_28
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-nez v5, :cond_24

    .line 1460
    new-instance v5, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    .line 1462
    :cond_24
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1466
    :sswitch_29
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    if-nez v5, :cond_25

    .line 1467
    new-instance v5, Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$WallpaperInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    .line 1469
    :cond_25
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1473
    :sswitch_2a
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-nez v5, :cond_26

    .line 1474
    new-instance v5, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    .line 1476
    :cond_26
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1480
    :sswitch_2b
    const/16 v5, 0x15a

    .line 1481
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1482
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    if-nez v5, :cond_28

    move v1, v4

    .line 1483
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/nano/Proto$WifiConfig;

    .line 1485
    .local v2, "newArray":[Lcom/google/glass/companion/nano/Proto$WifiConfig;
    if-eqz v1, :cond_27

    .line 1486
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1488
    :cond_27
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_29

    .line 1489
    new-instance v5, Lcom/google/glass/companion/nano/Proto$WifiConfig;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$WifiConfig;-><init>()V

    aput-object v5, v2, v1

    .line 1490
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1491
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1482
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$WifiConfig;
    :cond_28
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    array-length v1, v5

    goto :goto_5

    .line 1494
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$WifiConfig;
    :cond_29
    new-instance v5, Lcom/google/glass/companion/nano/Proto$WifiConfig;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$WifiConfig;-><init>()V

    aput-object v5, v2, v1

    .line 1495
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1496
    iput-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    goto/16 :goto_0

    .line 1500
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/nano/Proto$WifiConfig;
    :sswitch_2c
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-nez v5, :cond_2a

    .line 1501
    new-instance v5, Lcom/google/glass/companion/nano/Proto$WifiStatus;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$WifiStatus;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    .line 1503
    :cond_2a
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1507
    :sswitch_2d
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    if-nez v5, :cond_2b

    .line 1508
    new-instance v5, Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-direct {v5}, Lcom/google/glass/companion/nano/Proto$Notification;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    .line 1510
    :cond_2b
    iget-object v5, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1167
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xea -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0x102 -> :sswitch_20
        0x10a -> :sswitch_21
        0x112 -> :sswitch_22
        0x11a -> :sswitch_23
        0x122 -> :sswitch_24
        0x12a -> :sswitch_25
        0x132 -> :sswitch_26
        0x13a -> :sswitch_27
        0x142 -> :sswitch_28
        0x14a -> :sswitch_29
        0x152 -> :sswitch_2a
        0x15a -> :sswitch_2b
        0x162 -> :sswitch_2c
        0x16a -> :sswitch_2d
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public setMessageC2G(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 125
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 126
    return-object p0
.end method

.method public setSerialNumber(I)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    .line 53
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setSetupWifiC2G(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 194
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 195
    return-object p0
.end method

.method public setTimeMillis(J)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    .line 72
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 73
    return-object p0
.end method

.method public setTimezoneC2G(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 147
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 148
    return-object p0
.end method

.method public setUptimeMillis(J)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    .line 91
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setUrlG2C(Ljava/lang/String;)Lcom/google/glass/companion/nano/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 172
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    .line 173
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->version:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 812
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 813
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->serialNumber_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 815
    :cond_0
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 816
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timeMillis_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 818
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 819
    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->uptimeMillis_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 821
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 823
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    aget-object v0, v2, v1

    .line 824
    .local v0, "element":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v0, :cond_3

    .line 825
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 822
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    if-eqz v2, :cond_5

    .line 830
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationRequestG2C:Lcom/google/glass/companion/nano/Proto$LocationRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 832
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    if-eqz v2, :cond_6

    .line 833
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->locationMessageC2G:Lcom/google/glass/companion/nano/Proto$LocationMessage;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 835
    :cond_6
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 836
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 838
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 839
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 841
    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    if-eqz v2, :cond_9

    .line 842
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->navigationRequestC2G:Lcom/google/glass/companion/nano/Proto$NavigationRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 844
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 845
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 847
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    .line 848
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 850
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    if-eqz v2, :cond_c

    .line 851
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/nano/Proto$CompanionInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 853
    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    if-eqz v2, :cond_d

    .line 854
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->error:Lcom/google/glass/companion/nano/Proto$Error;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 856
    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    if-eqz v2, :cond_e

    .line 857
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->screenshot:Lcom/google/glass/companion/nano/Proto$ScreenShot;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 859
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    if-eqz v2, :cond_f

    .line 860
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->command:Lcom/google/glass/companion/nano/Proto$Command;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 862
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    array-length v2, v2

    if-lez v2, :cond_11

    .line 863
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 864
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;

    aget-object v0, v2, v1

    .line 865
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    if-eqz v0, :cond_10

    .line 866
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 863
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$TimelineItemResponse;
    .end local v1    # "i":I
    :cond_11
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    if-eqz v2, :cond_12

    .line 871
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiRequestC2G:Lcom/google/glass/companion/nano/Proto$ApiRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 873
    :cond_12
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    if-eqz v2, :cond_13

    .line 874
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->apiResponseG2C:Lcom/google/glass/companion/nano/Proto$ApiResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 876
    :cond_13
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    if-eqz v2, :cond_14

    .line 877
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->motionC2G:Lcom/google/glass/companion/nano/Proto$MotionEvent;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 879
    :cond_14
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-eqz v2, :cond_15

    .line 880
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 882
    :cond_15
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    if-eqz v2, :cond_16

    .line 883
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassInfoResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassInfoResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 885
    :cond_16
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    if-eqz v2, :cond_17

    .line 886
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxRequestG2C:Lcom/google/glass/companion/nano/Proto$InputBoxRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 888
    :cond_17
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    if-eqz v2, :cond_18

    .line 889
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->inputBoxResponseC2G:Lcom/google/glass/companion/nano/Proto$InputBoxResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 891
    :cond_18
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    if-eqz v2, :cond_19

    .line 892
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupRequestC2G:Lcom/google/glass/companion/nano/Proto$GlassSetupRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 894
    :cond_19
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    if-eqz v2, :cond_1a

    .line 895
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassSetupResponseG2C:Lcom/google/glass/companion/nano/Proto$GlassSetupResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 897
    :cond_1a
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    if-eqz v2, :cond_1b

    .line 898
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setupWifiRequest:Lcom/google/glass/companion/nano/Proto$SetupWifiRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 900
    :cond_1b
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    if-eqz v2, :cond_1c

    .line 901
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->photoG2C:Lcom/google/glass/companion/nano/Proto$Photo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 903
    :cond_1c
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    if-eqz v2, :cond_1d

    .line 904
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->updateCredentialRequestG2C:Lcom/google/glass/companion/nano/Proto$UpdateCredentialRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 906
    :cond_1d
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    if-eqz v2, :cond_1e

    .line 907
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->androidDeviceInfo:Lcom/google/glass/companion/nano/Proto$AndroidDeviceInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 909
    :cond_1e
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    if-eqz v2, :cond_1f

    .line 910
    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionDeviceInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionDeviceInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 912
    :cond_1f
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    if-eqz v2, :cond_20

    .line 913
    const/16 v2, 0x20

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->companionFeatureInfoC2G:Lcom/google/glass/companion/nano/Proto$CompanionFeatureInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 915
    :cond_20
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-eqz v2, :cond_21

    .line 916
    const/16 v2, 0x21

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->glassFeatureInfoG2C:Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 918
    :cond_21
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    if-eqz v2, :cond_22

    .line 919
    const/16 v2, 0x22

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperC2G:Lcom/google/glass/companion/nano/Proto$Wallpaper;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 921
    :cond_22
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    if-eqz v2, :cond_23

    .line 922
    const/16 v2, 0x23

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputRequestG2C:Lcom/google/glass/companion/nano/Proto$OpenEndedInputRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 924
    :cond_23
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    if-eqz v2, :cond_24

    .line 925
    const/16 v2, 0x24

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->openEndedInputResponseC2G:Lcom/google/glass/companion/nano/Proto$OpenEndedInputResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 927
    :cond_24
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    if-eqz v2, :cond_25

    .line 928
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->multimediaMessage:Lcom/google/glass/companion/nano/Proto$MultimediaMessage;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 930
    :cond_25
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    if-eqz v2, :cond_26

    .line 931
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperRequestC2G:Lcom/google/glass/companion/nano/Proto$SetWallpaperRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 933
    :cond_26
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    if-eqz v2, :cond_27

    .line 934
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->setWallpaperResponseG2C:Lcom/google/glass/companion/nano/Proto$SetWallpaperResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 936
    :cond_27
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    if-eqz v2, :cond_28

    .line 937
    const/16 v2, 0x28

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->getWallpaperInfoC2G:Lcom/google/glass/companion/nano/Proto$GetWallpaperInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 939
    :cond_28
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    if-eqz v2, :cond_29

    .line 940
    const/16 v2, 0x29

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wallpaperInfoG2C:Lcom/google/glass/companion/nano/Proto$WallpaperInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 942
    :cond_29
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    if-eqz v2, :cond_2a

    .line 943
    const/16 v2, 0x2a

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->mediaRemoteControlC2G:Lcom/google/glass/companion/nano/Proto$MediaRemoteControlResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 945
    :cond_2a
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    array-length v2, v2

    if-lez v2, :cond_2c

    .line 946
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 947
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/nano/Proto$WifiConfig;

    aget-object v0, v2, v1

    .line 948
    .local v0, "element":Lcom/google/glass/companion/nano/Proto$WifiConfig;
    if-eqz v0, :cond_2b

    .line 949
    const/16 v2, 0x2b

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 946
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 953
    .end local v0    # "element":Lcom/google/glass/companion/nano/Proto$WifiConfig;
    .end local v1    # "i":I
    :cond_2c
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    if-eqz v2, :cond_2d

    .line 954
    const/16 v2, 0x2c

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->wifiStatusG2C:Lcom/google/glass/companion/nano/Proto$WifiStatus;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 956
    :cond_2d
    iget-object v2, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    if-eqz v2, :cond_2e

    .line 957
    const/16 v2, 0x2d

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$Envelope;->notificationC2G:Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 959
    :cond_2e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 960
    return-void
.end method
