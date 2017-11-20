.class public final Lcom/google/glass/companion/Proto$Envelope;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Envelope;


# instance fields
.field private androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

.field private apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

.field private apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

.field private bitField0_:I

.field private command_:Lcom/google/glass/companion/Proto$Command;

.field private companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

.field private companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

.field private companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

.field private error_:Lcom/google/glass/companion/Proto$Error;

.field private getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

.field private glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

.field private glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

.field private glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

.field private glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

.field private glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

.field private inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

.field private inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

.field private locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

.field private locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

.field private mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

.field private messageC2G_:Ljava/lang/String;

.field private motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

.field private multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

.field private navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

.field private notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

.field private openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

.field private openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

.field private photoG2C_:Lcom/google/glass/companion/Proto$Photo;

.field private screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

.field private serialNumber_:I

.field private setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

.field private setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

.field private setupWifiC2G_:Ljava/lang/String;

.field private setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

.field private timeMillis_:J

.field public timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

.field private timezoneC2G_:Ljava/lang/String;

.field private updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

.field private uptimeMillis_:J

.field private urlG2C_:Ljava/lang/String;

.field public version:I

.field private wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

.field private wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

.field public wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

.field private wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Envelope;

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Envelope;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 20
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    .line 23
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 42
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 61
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 80
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 83
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 782
    sget-object v0, Lcom/google/glass/companion/Proto$WifiConfig;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$WifiConfig;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    .line 15
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1653
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1647
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method


# virtual methods
.method public clearAndroidDeviceInfo()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 551
    return-object p0
.end method

.method public clearApiRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 323
    return-object p0
.end method

.method public clearApiResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 342
    return-object p0
.end method

.method public clearCommand()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 304
    return-object p0
.end method

.method public clearCompanionDeviceInfoC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 570
    return-object p0
.end method

.method public clearCompanionFeatureInfoC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 589
    return-object p0
.end method

.method public clearCompanionInfo()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 247
    return-object p0
.end method

.method public clearError()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 266
    return-object p0
.end method

.method public clearGetWallpaperInfoC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 741
    return-object p0
.end method

.method public clearGlassFeatureInfoG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 608
    return-object p0
.end method

.method public clearGlassInfoRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 380
    return-object p0
.end method

.method public clearGlassInfoResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 399
    return-object p0
.end method

.method public clearGlassSetupRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 456
    return-object p0
.end method

.method public clearGlassSetupResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 475
    return-object p0
.end method

.method public clearInputBoxRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 418
    return-object p0
.end method

.method public clearInputBoxResponseC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 437
    return-object p0
.end method

.method public clearLocationMessageC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 121
    return-object p0
.end method

.method public clearLocationRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 102
    return-object p0
.end method

.method public clearMediaRemoteControlC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    .line 779
    return-object p0
.end method

.method public clearMessageC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 141
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 142
    return-object p0
.end method

.method public clearMotionC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 361
    return-object p0
.end method

.method public clearMultimediaMessage()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 684
    return-object p0
.end method

.method public clearNavigationRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 184
    return-object p0
.end method

.method public clearNotificationC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    .line 820
    return-object p0
.end method

.method public clearOpenEndedInputRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 646
    return-object p0
.end method

.method public clearOpenEndedInputResponseC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 665
    return-object p0
.end method

.method public clearPhotoG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 513
    return-object p0
.end method

.method public clearScreenshot()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 285
    return-object p0
.end method

.method public clearSerialNumber()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 37
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public clearSetWallpaperRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 703
    return-object p0
.end method

.method public clearSetWallpaperResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 722
    return-object p0
.end method

.method public clearSetupWifiC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 226
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 227
    return-object p0
.end method

.method public clearSetupWifiRequest()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 494
    return-object p0
.end method

.method public clearTimeMillis()Lcom/google/glass/companion/Proto$Envelope;
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 56
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 57
    return-object p0
.end method

.method public clearTimezoneC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 163
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public clearUpdateCredentialRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 532
    return-object p0
.end method

.method public clearUptimeMillis()Lcom/google/glass/companion/Proto$Envelope;
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 75
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public clearUrlG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 204
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public clearWallpaperC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 627
    return-object p0
.end method

.method public clearWallpaperInfoG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 760
    return-object p0
.end method

.method public clearWifiStatusG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    .line 801
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 824
    if-ne p1, p0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return v1

    .line 825
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Envelope;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 826
    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    .line 827
    .local v0, "other":Lcom/google/glass/companion/Proto$Envelope;
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 831
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 832
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v3, :cond_3

    .line 833
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_3

    .line 834
    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 835
    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 836
    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v3, :cond_3

    .line 837
    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 838
    :goto_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 839
    :goto_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_3

    .line 840
    :goto_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v3, :cond_3

    .line 841
    :goto_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_3

    .line 842
    :goto_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v3, :cond_3

    .line 843
    :goto_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_3

    .line 844
    :goto_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_3

    .line 845
    :goto_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_3

    .line 846
    :goto_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_3

    .line 847
    :goto_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_3

    .line 848
    :goto_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_3

    .line 849
    :goto_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_3

    .line 850
    :goto_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_3

    .line 851
    :goto_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v3, :cond_3

    .line 852
    :goto_14
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v3, :cond_3

    .line 853
    :goto_15
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v3, :cond_3

    .line 854
    :goto_16
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v3, :cond_3

    .line 855
    :goto_17
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v3, :cond_3

    .line 856
    :goto_18
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v3, :cond_3

    .line 857
    :goto_19
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v3, :cond_1d

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v3, :cond_3

    .line 858
    :goto_1a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v3, :cond_1e

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v3, :cond_3

    .line 859
    :goto_1b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v3, :cond_1f

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v3, :cond_3

    .line 860
    :goto_1c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v3, :cond_20

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v3, :cond_3

    .line 861
    :goto_1d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v3, :cond_21

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v3, :cond_3

    .line 862
    :goto_1e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v3, :cond_3

    .line 863
    :goto_1f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v3, :cond_23

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v3, :cond_3

    .line 864
    :goto_20
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v3, :cond_24

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v3, :cond_3

    .line 865
    :goto_21
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v3, :cond_25

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v3, :cond_3

    .line 866
    :goto_22
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v3, :cond_26

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v3, :cond_3

    .line 867
    :goto_23
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    if-nez v3, :cond_27

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    if-nez v3, :cond_3

    .line 868
    :goto_24
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    .line 869
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    if-nez v3, :cond_28

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    if-nez v3, :cond_3

    .line 870
    :goto_25
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    if-nez v3, :cond_29

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    if-nez v3, :cond_3

    .line 871
    :goto_26
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 872
    goto/16 :goto_0

    .line 832
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 833
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 834
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$LocationMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 835
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 836
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 837
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$NavigationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 838
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 839
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 840
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$CompanionInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 841
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 842
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ScreenShot;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 843
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Command;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 844
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ApiRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 845
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ApiResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 846
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$MotionEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_e

    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 847
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_f

    :cond_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 848
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 849
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$InputBoxRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_11

    :cond_15
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 850
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$InputBoxResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_12

    :cond_16
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 851
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 852
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_14

    :cond_18
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 853
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_15

    :cond_19
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 854
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Photo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_16

    :cond_1a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 855
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_17

    :cond_1b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 856
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_18

    :cond_1c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 857
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_19

    :cond_1d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 858
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1a

    :cond_1e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 859
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1b

    :cond_1f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 860
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Wallpaper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1c

    :cond_20
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 861
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1d

    :cond_21
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 862
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1e

    :cond_22
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 863
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$MultimediaMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1f

    :cond_23
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 864
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_20

    :cond_24
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 865
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_21

    :cond_25
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 866
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_22

    :cond_26
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 867
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$WallpaperInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_23

    :cond_27
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    .line 868
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_24

    .line 869
    :cond_28
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    .line 870
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$WifiStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_25

    :cond_29
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    .line 871
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Notification;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_26

    :cond_2a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    .line 872
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getAndroidDeviceInfo()Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    return-object v0
.end method

.method public getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public getCompanionDeviceInfoC2G()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    return-object v0
.end method

.method public getCompanionFeatureInfoC2G()Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    return-object v0
.end method

.method public getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public getError()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public getGetWallpaperInfoC2G()Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    return-object v0
.end method

.method public getGlassFeatureInfoG2C()Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    return-object v0
.end method

.method public getGlassInfoRequestC2G()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-object v0
.end method

.method public getGlassInfoResponseG2C()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-object v0
.end method

.method public getGlassSetupRequestC2G()Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-object v0
.end method

.method public getGlassSetupResponseG2C()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-object v0
.end method

.method public getInputBoxRequestG2C()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-object v0
.end method

.method public getInputBoxResponseC2G()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-object v0
.end method

.method public getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public getMediaRemoteControlC2G()Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    return-object v0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionC2G()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public getMultimediaMessage()Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    return-object v0
.end method

.method public getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public getNotificationC2G()Lcom/google/glass/companion/Proto$Notification;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    return-object v0
.end method

.method public getOpenEndedInputRequestG2C()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    return-object v0
.end method

.method public getOpenEndedInputResponseC2G()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    return-object v0
.end method

.method public getPhotoG2C()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    return-object v0
.end method

.method public getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1094
    const/4 v1, 0x0

    .line 1095
    .local v1, "size":I
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    .line 1096
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1097
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1098
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 1099
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1101
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 1102
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 1103
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1105
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 1106
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 1107
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1109
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v3, :cond_4

    .line 1110
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 1111
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_3

    .line 1112
    const/4 v6, 0x5

    .line 1113
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1110
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1117
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v3, :cond_5

    .line 1118
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1119
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1121
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v3, :cond_6

    .line 1122
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1123
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1125
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 1126
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 1127
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1129
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    .line 1130
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 1131
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1133
    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v3, :cond_9

    .line 1134
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1135
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1137
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_a

    .line 1138
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 1139
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1141
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_b

    .line 1142
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 1143
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1145
    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v3, :cond_c

    .line 1146
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1147
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1149
    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v3, :cond_d

    .line 1150
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1151
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1153
    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v3, :cond_e

    .line 1154
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1155
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1157
    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v3, :cond_f

    .line 1158
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1159
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1161
    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v3, :cond_11

    .line 1162
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_11

    aget-object v0, v4, v3

    .line 1163
    .local v0, "element":Lcom/google/glass/companion/Proto$TimelineItemResponse;
    if-eqz v0, :cond_10

    .line 1164
    const/16 v6, 0x11

    .line 1165
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1162
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1169
    .end local v0    # "element":Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v3, :cond_12

    .line 1170
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1171
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1173
    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v3, :cond_13

    .line 1174
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1175
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1177
    :cond_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v3, :cond_14

    .line 1178
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 1179
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1181
    :cond_14
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v3, :cond_15

    .line 1182
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 1183
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1185
    :cond_15
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v3, :cond_16

    .line 1186
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 1187
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1189
    :cond_16
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v3, :cond_17

    .line 1190
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 1191
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1193
    :cond_17
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v3, :cond_18

    .line 1194
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 1195
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1197
    :cond_18
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v3, :cond_19

    .line 1198
    const/16 v3, 0x19

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 1199
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1201
    :cond_19
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v3, :cond_1a

    .line 1202
    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 1203
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1205
    :cond_1a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-eqz v3, :cond_1b

    .line 1206
    const/16 v3, 0x1b

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 1207
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1209
    :cond_1b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-eqz v3, :cond_1c

    .line 1210
    const/16 v3, 0x1c

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 1211
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1213
    :cond_1c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-eqz v3, :cond_1d

    .line 1214
    const/16 v3, 0x1d

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 1215
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1217
    :cond_1d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-eqz v3, :cond_1e

    .line 1218
    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 1219
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1221
    :cond_1e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v3, :cond_1f

    .line 1222
    const/16 v3, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 1223
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1225
    :cond_1f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-eqz v3, :cond_20

    .line 1226
    const/16 v3, 0x20

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 1227
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1229
    :cond_20
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-eqz v3, :cond_21

    .line 1230
    const/16 v3, 0x21

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 1231
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1233
    :cond_21
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-eqz v3, :cond_22

    .line 1234
    const/16 v3, 0x22

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 1235
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1237
    :cond_22
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-eqz v3, :cond_23

    .line 1238
    const/16 v3, 0x23

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 1239
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1241
    :cond_23
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-eqz v3, :cond_24

    .line 1242
    const/16 v3, 0x24

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 1243
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1245
    :cond_24
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-eqz v3, :cond_25

    .line 1246
    const/16 v3, 0x25

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 1247
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1249
    :cond_25
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-eqz v3, :cond_26

    .line 1250
    const/16 v3, 0x26

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 1251
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1253
    :cond_26
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-eqz v3, :cond_27

    .line 1254
    const/16 v3, 0x27

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 1255
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1257
    :cond_27
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-eqz v3, :cond_28

    .line 1258
    const/16 v3, 0x28

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 1259
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1261
    :cond_28
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-eqz v3, :cond_29

    .line 1262
    const/16 v3, 0x29

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 1263
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1265
    :cond_29
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    if-eqz v3, :cond_2a

    .line 1266
    const/16 v3, 0x2a

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    .line 1267
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1269
    :cond_2a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    if-eqz v3, :cond_2c

    .line 1270
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_2c

    aget-object v0, v3, v2

    .line 1271
    .local v0, "element":Lcom/google/glass/companion/Proto$WifiConfig;
    if-eqz v0, :cond_2b

    .line 1272
    const/16 v5, 0x2b

    .line 1273
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1270
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1277
    .end local v0    # "element":Lcom/google/glass/companion/Proto$WifiConfig;
    :cond_2c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    if-eqz v2, :cond_2d

    .line 1278
    const/16 v2, 0x2c

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    .line 1279
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1281
    :cond_2d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    if-eqz v2, :cond_2e

    .line 1282
    const/16 v2, 0x2d

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    .line 1283
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1285
    :cond_2e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1286
    iput v1, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    .line 1287
    return v1
.end method

.method public getSetWallpaperRequestC2G()Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    return-object v0
.end method

.method public getSetWallpaperResponseG2C()Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    return-object v0
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getSetupWifiRequest()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateCredentialRequestG2C()Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    return-object v0
.end method

.method public getUptimeMillis()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    return-object v0
.end method

.method public getWallpaperC2G()Lcom/google/glass/companion/Proto$Wallpaper;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    return-object v0
.end method

.method public getWallpaperInfoG2C()Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    return-object v0
.end method

.method public getWifiStatusG2C()Lcom/google/glass/companion/Proto$WifiStatus;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    return-object v0
.end method

.method public hasAndroidDeviceInfo()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApiRequestC2G()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApiResponseG2C()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCommand()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionDeviceInfoC2G()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionFeatureInfoC2G()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionInfo()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGetWallpaperInfoC2G()Z
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassFeatureInfoG2C()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassInfoRequestC2G()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassInfoResponseG2C()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassSetupRequestC2G()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassSetupResponseG2C()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputBoxRequestG2C()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputBoxResponseC2G()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationMessageC2G()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationRequestG2C()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaRemoteControlC2G()Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessageC2G()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMotionC2G()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMultimediaMessage()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNavigationRequestC2G()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotificationC2G()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenEndedInputRequestG2C()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenEndedInputResponseC2G()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhotoG2C()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenshot()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

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
    .line 33
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetWallpaperRequestC2G()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetWallpaperResponseG2C()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

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
    .line 222
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetupWifiRequest()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

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
    .line 52
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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
    .line 159
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdateCredentialRequestG2C()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

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
    .line 71
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

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
    .line 200
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWallpaperC2G()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWallpaperInfoG2C()Z
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWifiStatusG2C()Z
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

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

    const/4 v3, 0x0

    .line 876
    const/16 v1, 0x11

    .line 877
    .local v1, "result":I
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    add-int/lit16 v1, v2, 0x20f

    .line 878
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    add-int v1, v2, v4

    .line 879
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 880
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 881
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 887
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 893
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v2, :cond_7

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 894
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 895
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 896
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 897
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v2, :cond_b

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 898
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 899
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 900
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v2, :cond_e

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 901
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v2, :cond_f

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 902
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v2, :cond_10

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 903
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v2, :cond_11

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 904
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v2, :cond_12

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 905
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v2, :cond_13

    move v2, v3

    :goto_c
    add-int v1, v4, v2

    .line 906
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v2, :cond_14

    move v2, v3

    :goto_d
    add-int v1, v4, v2

    .line 907
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v2, :cond_15

    move v2, v3

    :goto_e
    add-int v1, v4, v2

    .line 908
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v2, :cond_16

    move v2, v3

    :goto_f
    add-int v1, v4, v2

    .line 909
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v2, :cond_17

    move v2, v3

    :goto_10
    add-int v1, v4, v2

    .line 910
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v2, :cond_18

    move v2, v3

    :goto_11
    add-int v1, v4, v2

    .line 911
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v2, :cond_19

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 912
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v2, :cond_1a

    move v2, v3

    :goto_13
    add-int v1, v4, v2

    .line 913
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v2, :cond_1b

    move v2, v3

    :goto_14
    add-int v1, v4, v2

    .line 914
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v2, :cond_1c

    move v2, v3

    :goto_15
    add-int v1, v4, v2

    .line 915
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v2, :cond_1d

    move v2, v3

    :goto_16
    add-int v1, v4, v2

    .line 916
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v2, :cond_1e

    move v2, v3

    :goto_17
    add-int v1, v4, v2

    .line 917
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v2, :cond_1f

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    .line 918
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v2, :cond_20

    move v2, v3

    :goto_19
    add-int v1, v4, v2

    .line 919
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v2, :cond_21

    move v2, v3

    :goto_1a
    add-int v1, v4, v2

    .line 920
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v2, :cond_22

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    .line 921
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v2, :cond_23

    move v2, v3

    :goto_1c
    add-int v1, v4, v2

    .line 922
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v2, :cond_24

    move v2, v3

    :goto_1d
    add-int v1, v4, v2

    .line 923
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v2, :cond_25

    move v2, v3

    :goto_1e
    add-int v1, v4, v2

    .line 924
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v2, :cond_26

    move v2, v3

    :goto_1f
    add-int v1, v4, v2

    .line 925
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v2, :cond_27

    move v2, v3

    :goto_20
    add-int v1, v4, v2

    .line 926
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v2, :cond_28

    move v2, v3

    :goto_21
    add-int v1, v4, v2

    .line 927
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v2, :cond_29

    move v2, v3

    :goto_22
    add-int v1, v4, v2

    .line 928
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    if-nez v2, :cond_2a

    move v2, v3

    :goto_23
    add-int v1, v4, v2

    .line 929
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    if-nez v2, :cond_2b

    mul-int/lit8 v1, v1, 0x1f

    .line 935
    :cond_2
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    if-nez v2, :cond_2d

    move v2, v3

    :goto_24
    add-int v1, v4, v2

    .line 936
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    if-nez v2, :cond_2e

    move v2, v3

    :goto_25
    add-int v1, v4, v2

    .line 937
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-nez v4, :cond_2f

    :goto_26
    add-int v1, v2, v3

    .line 938
    return v1

    .line 883
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 884
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v3

    :goto_28
    add-int v1, v4, v2

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 884
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_28

    .line 889
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_29
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 890
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_2a
    add-int v1, v4, v2

    .line 889
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 890
    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hashCode()I

    move-result v2

    goto :goto_2a

    .line 893
    .end local v0    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationRequest;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 894
    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationMessage;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 895
    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 896
    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 897
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$NavigationRequest;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 898
    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 899
    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 900
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 901
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Error;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 902
    :cond_10
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ScreenShot;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 903
    :cond_11
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Command;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 904
    :cond_12
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiRequest;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 905
    :cond_13
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiResponse;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 906
    :cond_14
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 907
    :cond_15
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 908
    :cond_16
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 909
    :cond_17
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$InputBoxRequest;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 910
    :cond_18
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$InputBoxResponse;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 911
    :cond_19
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 912
    :cond_1a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 913
    :cond_1b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 914
    :cond_1c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Photo;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 915
    :cond_1d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->hashCode()I

    move-result v2

    goto/16 :goto_16

    .line 916
    :cond_1e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->hashCode()I

    move-result v2

    goto/16 :goto_17

    .line 917
    :cond_1f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->hashCode()I

    move-result v2

    goto/16 :goto_18

    .line 918
    :cond_20
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->hashCode()I

    move-result v2

    goto/16 :goto_19

    .line 919
    :cond_21
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->hashCode()I

    move-result v2

    goto/16 :goto_1a

    .line 920
    :cond_22
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Wallpaper;->hashCode()I

    move-result v2

    goto/16 :goto_1b

    .line 921
    :cond_23
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->hashCode()I

    move-result v2

    goto/16 :goto_1c

    .line 922
    :cond_24
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->hashCode()I

    move-result v2

    goto/16 :goto_1d

    .line 923
    :cond_25
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MultimediaMessage;->hashCode()I

    move-result v2

    goto/16 :goto_1e

    .line 924
    :cond_26
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->hashCode()I

    move-result v2

    goto/16 :goto_1f

    .line 925
    :cond_27
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->hashCode()I

    move-result v2

    goto/16 :goto_20

    .line 926
    :cond_28
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->hashCode()I

    move-result v2

    goto/16 :goto_21

    .line 927
    :cond_29
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$WallpaperInfo;->hashCode()I

    move-result v2

    goto/16 :goto_22

    .line 928
    :cond_2a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;->hashCode()I

    move-result v2

    goto/16 :goto_23

    .line 931
    :cond_2b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 932
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    aget-object v2, v2, v0

    if-nez v2, :cond_2c

    move v2, v3

    :goto_2c
    add-int v1, v4, v2

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 932
    :cond_2c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$WifiConfig;->hashCode()I

    move-result v2

    goto :goto_2c

    .line 935
    .end local v0    # "i":I
    :cond_2d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$WifiStatus;->hashCode()I

    move-result v2

    goto/16 :goto_24

    .line 936
    :cond_2e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Notification;->hashCode()I

    move-result v2

    goto/16 :goto_25

    .line 937
    :cond_2f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto/16 :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1295
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1296
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1300
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1301
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    .line 1304
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-static {v5, p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1306
    :sswitch_0
    return-object p0

    .line 1311
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    goto :goto_0

    .line 1315
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 1316
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1320
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 1321
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1325
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 1326
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1330
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1331
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_3

    move v1, v4

    .line 1332
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1333
    .local v2, "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v5, :cond_2

    .line 1334
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1336
    :cond_2
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1337
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 1338
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v6, v5, v1

    .line 1339
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1340
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1331
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v1, v5

    goto :goto_1

    .line 1343
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v6, v5, v1

    .line 1344
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1348
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :sswitch_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v5, :cond_5

    .line 1349
    new-instance v5, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1351
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1355
    :sswitch_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v5, :cond_6

    .line 1356
    new-instance v5, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1358
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1362
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 1363
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1367
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 1368
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1372
    :sswitch_a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v5, :cond_7

    .line 1373
    new-instance v5, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1375
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1379
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 1380
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1384
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 1385
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1389
    :sswitch_d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v5, :cond_8

    .line 1390
    new-instance v5, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1392
    :cond_8
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1396
    :sswitch_e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v5, :cond_9

    .line 1397
    new-instance v5, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1399
    :cond_9
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1403
    :sswitch_f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v5, :cond_a

    .line 1404
    new-instance v5, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1406
    :cond_a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1410
    :sswitch_10
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v5, :cond_b

    .line 1411
    new-instance v5, Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Command;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1413
    :cond_b
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1417
    :sswitch_11
    const/16 v5, 0x8a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1418
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v5, :cond_d

    move v1, v4

    .line 1419
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 1420
    .local v2, "newArray":[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v5, :cond_c

    .line 1421
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1423
    :cond_c
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 1424
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_e

    .line 1425
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v6, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v6, v5, v1

    .line 1426
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1427
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1424
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1418
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v1, v5

    goto :goto_3

    .line 1430
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v6, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v6, v5, v1

    .line 1431
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1435
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :sswitch_12
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v5, :cond_f

    .line 1436
    new-instance v5, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1438
    :cond_f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1442
    :sswitch_13
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v5, :cond_10

    .line 1443
    new-instance v5, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1445
    :cond_10
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1449
    :sswitch_14
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v5, :cond_11

    .line 1450
    new-instance v5, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 1452
    :cond_11
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1456
    :sswitch_15
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v5, :cond_12

    .line 1457
    new-instance v5, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 1459
    :cond_12
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1463
    :sswitch_16
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v5, :cond_13

    .line 1464
    new-instance v5, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 1466
    :cond_13
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1470
    :sswitch_17
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v5, :cond_14

    .line 1471
    new-instance v5, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 1473
    :cond_14
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1477
    :sswitch_18
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v5, :cond_15

    .line 1478
    new-instance v5, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 1480
    :cond_15
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1484
    :sswitch_19
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v5, :cond_16

    .line 1485
    new-instance v5, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 1487
    :cond_16
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1491
    :sswitch_1a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v5, :cond_17

    .line 1492
    new-instance v5, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 1494
    :cond_17
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1498
    :sswitch_1b
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v5, :cond_18

    .line 1499
    new-instance v5, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 1501
    :cond_18
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1505
    :sswitch_1c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v5, :cond_19

    .line 1506
    new-instance v5, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 1508
    :cond_19
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1512
    :sswitch_1d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v5, :cond_1a

    .line 1513
    new-instance v5, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 1515
    :cond_1a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1519
    :sswitch_1e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v5, :cond_1b

    .line 1520
    new-instance v5, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 1522
    :cond_1b
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1526
    :sswitch_1f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v5, :cond_1c

    .line 1527
    new-instance v5, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 1529
    :cond_1c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1533
    :sswitch_20
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v5, :cond_1d

    .line 1534
    new-instance v5, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 1536
    :cond_1d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1540
    :sswitch_21
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v5, :cond_1e

    .line 1541
    new-instance v5, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 1543
    :cond_1e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1547
    :sswitch_22
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v5, :cond_1f

    .line 1548
    new-instance v5, Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Wallpaper;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 1550
    :cond_1f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1554
    :sswitch_23
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v5, :cond_20

    .line 1555
    new-instance v5, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 1557
    :cond_20
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1561
    :sswitch_24
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v5, :cond_21

    .line 1562
    new-instance v5, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 1564
    :cond_21
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1568
    :sswitch_25
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v5, :cond_22

    .line 1569
    new-instance v5, Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$MultimediaMessage;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 1571
    :cond_22
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1575
    :sswitch_26
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v5, :cond_23

    .line 1576
    new-instance v5, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 1578
    :cond_23
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1582
    :sswitch_27
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v5, :cond_24

    .line 1583
    new-instance v5, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 1585
    :cond_24
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1589
    :sswitch_28
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v5, :cond_25

    .line 1590
    new-instance v5, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 1592
    :cond_25
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1596
    :sswitch_29
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v5, :cond_26

    .line 1597
    new-instance v5, Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$WallpaperInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 1599
    :cond_26
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1603
    :sswitch_2a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    if-nez v5, :cond_27

    .line 1604
    new-instance v5, Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    .line 1606
    :cond_27
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1610
    :sswitch_2b
    const/16 v5, 0x15a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1611
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    if-nez v5, :cond_29

    move v1, v4

    .line 1612
    .restart local v1    # "i":I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$WifiConfig;

    .line 1613
    .local v2, "newArray":[Lcom/google/glass/companion/Proto$WifiConfig;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    if-eqz v5, :cond_28

    .line 1614
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1616
    :cond_28
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    .line 1617
    :goto_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2a

    .line 1618
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    new-instance v6, Lcom/google/glass/companion/Proto$WifiConfig;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$WifiConfig;-><init>()V

    aput-object v6, v5, v1

    .line 1619
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1620
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1617
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1611
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$WifiConfig;
    :cond_29
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    array-length v1, v5

    goto :goto_5

    .line 1623
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/glass/companion/Proto$WifiConfig;
    :cond_2a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    new-instance v6, Lcom/google/glass/companion/Proto$WifiConfig;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$WifiConfig;-><init>()V

    aput-object v6, v5, v1

    .line 1624
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1628
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/glass/companion/Proto$WifiConfig;
    :sswitch_2c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    if-nez v5, :cond_2b

    .line 1629
    new-instance v5, Lcom/google/glass/companion/Proto$WifiStatus;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$WifiStatus;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    .line 1631
    :cond_2b
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1635
    :sswitch_2d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    if-nez v5, :cond_2c

    .line 1636
    new-instance v5, Lcom/google/glass/companion/Proto$Notification;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Notification;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    .line 1638
    :cond_2c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1296
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
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidDeviceInfo(Lcom/google/glass/companion/Proto$AndroidDeviceInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 543
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 544
    return-object p0
.end method

.method public setApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$ApiRequest;

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 316
    return-object p0
.end method

.method public setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$ApiResponse;

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 335
    return-object p0
.end method

.method public setCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Command;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 297
    return-object p0
.end method

.method public setCompanionDeviceInfoC2G(Lcom/google/glass/companion/Proto$CompanionDeviceInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 562
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 563
    return-object p0
.end method

.method public setCompanionFeatureInfoC2G(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 581
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 582
    return-object p0
.end method

.method public setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$CompanionInfo;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 240
    return-object p0
.end method

.method public setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Error;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 259
    return-object p0
.end method

.method public setGetWallpaperInfoC2G(Lcom/google/glass/companion/Proto$GetWallpaperInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 733
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 734
    return-object p0
.end method

.method public setGlassFeatureInfoG2C(Lcom/google/glass/companion/Proto$GlassFeatureInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 600
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 601
    return-object p0
.end method

.method public setGlassInfoRequestC2G(Lcom/google/glass/companion/Proto$GlassInfoRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 373
    return-object p0
.end method

.method public setGlassInfoResponseG2C(Lcom/google/glass/companion/Proto$GlassInfoResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 392
    return-object p0
.end method

.method public setGlassSetupRequestC2G(Lcom/google/glass/companion/Proto$GlassSetupRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 448
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 449
    return-object p0
.end method

.method public setGlassSetupResponseG2C(Lcom/google/glass/companion/Proto$GlassSetupResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 467
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 468
    return-object p0
.end method

.method public setInputBoxRequestG2C(Lcom/google/glass/companion/Proto$InputBoxRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$InputBoxRequest;

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 410
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 411
    return-object p0
.end method

.method public setInputBoxResponseC2G(Lcom/google/glass/companion/Proto$InputBoxResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$InputBoxResponse;

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 429
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 430
    return-object p0
.end method

.method public setLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$LocationMessage;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 114
    return-object p0
.end method

.method public setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$LocationRequest;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 95
    return-object p0
.end method

.method public setMediaRemoteControlC2G(Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 771
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    .line 772
    return-object p0
.end method

.method public setMessageC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 133
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 134
    return-object p0
.end method

.method public setMotionC2G(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$MotionEvent;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 354
    return-object p0
.end method

.method public setMultimediaMessage(Lcom/google/glass/companion/Proto$MultimediaMessage;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$MultimediaMessage;

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 676
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 677
    return-object p0
.end method

.method public setNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$NavigationRequest;

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 177
    return-object p0
.end method

.method public setNotificationC2G(Lcom/google/glass/companion/Proto$Notification;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Notification;

    .prologue
    .line 809
    if-nez p1, :cond_0

    .line 810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 812
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    .line 813
    return-object p0
.end method

.method public setOpenEndedInputRequestG2C(Lcom/google/glass/companion/Proto$OpenEndedInputRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 639
    return-object p0
.end method

.method public setOpenEndedInputResponseC2G(Lcom/google/glass/companion/Proto$OpenEndedInputResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 657
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 658
    return-object p0
.end method

.method public setPhotoG2C(Lcom/google/glass/companion/Proto$Photo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Photo;

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 506
    return-object p0
.end method

.method public setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$ScreenShot;

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 278
    return-object p0
.end method

.method public setSerialNumber(I)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 29
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 30
    return-object p0
.end method

.method public setSetWallpaperRequestC2G(Lcom/google/glass/companion/Proto$SetWallpaperRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 695
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 696
    return-object p0
.end method

.method public setSetWallpaperResponseG2C(Lcom/google/glass/companion/Proto$SetWallpaperResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 714
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 715
    return-object p0
.end method

.method public setSetupWifiC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 218
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 219
    return-object p0
.end method

.method public setSetupWifiRequest(Lcom/google/glass/companion/Proto$SetupWifiRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 487
    return-object p0
.end method

.method public setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 48
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public setTimezoneC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 155
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 156
    return-object p0
.end method

.method public setUpdateCredentialRequestG2C(Lcom/google/glass/companion/Proto$UpdateCredentialRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 524
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 525
    return-object p0
.end method

.method public setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 67
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public setUrlG2C(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 196
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 197
    return-object p0
.end method

.method public setWallpaperC2G(Lcom/google/glass/companion/Proto$Wallpaper;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Wallpaper;

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 620
    return-object p0
.end method

.method public setWallpaperInfoG2C(Lcom/google/glass/companion/Proto$WallpaperInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$WallpaperInfo;

    .prologue
    .line 749
    if-nez p1, :cond_0

    .line 750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 752
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 753
    return-object p0
.end method

.method public setWifiStatusG2C(Lcom/google/glass/companion/Proto$WifiStatus;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$WifiStatus;

    .prologue
    .line 790
    if-nez p1, :cond_0

    .line 791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 793
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    .line 794
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
    const/4 v1, 0x0

    .line 943
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 944
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 945
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 947
    :cond_0
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 948
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 950
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 951
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 953
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_4

    .line 954
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    .line 955
    .local v0, "element":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_3

    .line 956
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 954
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 960
    .end local v0    # "element":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v2, :cond_5

    .line 961
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 963
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v2, :cond_6

    .line 964
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 966
    :cond_6
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 967
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 969
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 970
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 972
    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v2, :cond_9

    .line 973
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 975
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 976
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 978
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    .line 979
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 981
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v2, :cond_c

    .line 982
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 984
    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v2, :cond_d

    .line 985
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 987
    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v2, :cond_e

    .line 988
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 990
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v2, :cond_f

    .line 991
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 993
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v2, :cond_11

    .line 994
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_11

    aget-object v0, v3, v2

    .line 995
    .local v0, "element":Lcom/google/glass/companion/Proto$TimelineItemResponse;
    if-eqz v0, :cond_10

    .line 996
    const/16 v5, 0x11

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 994
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1000
    .end local v0    # "element":Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_11
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v2, :cond_12

    .line 1001
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1003
    :cond_12
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v2, :cond_13

    .line 1004
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1006
    :cond_13
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v2, :cond_14

    .line 1007
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1009
    :cond_14
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v2, :cond_15

    .line 1010
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1012
    :cond_15
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v2, :cond_16

    .line 1013
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1015
    :cond_16
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v2, :cond_17

    .line 1016
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1018
    :cond_17
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v2, :cond_18

    .line 1019
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1021
    :cond_18
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v2, :cond_19

    .line 1022
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1024
    :cond_19
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v2, :cond_1a

    .line 1025
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1027
    :cond_1a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-eqz v2, :cond_1b

    .line 1028
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequest_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1030
    :cond_1b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-eqz v2, :cond_1c

    .line 1031
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1033
    :cond_1c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-eqz v2, :cond_1d

    .line 1034
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1036
    :cond_1d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-eqz v2, :cond_1e

    .line 1037
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1039
    :cond_1e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v2, :cond_1f

    .line 1040
    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1042
    :cond_1f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-eqz v2, :cond_20

    .line 1043
    const/16 v2, 0x20

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1045
    :cond_20
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-eqz v2, :cond_21

    .line 1046
    const/16 v2, 0x21

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1048
    :cond_21
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-eqz v2, :cond_22

    .line 1049
    const/16 v2, 0x22

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1051
    :cond_22
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-eqz v2, :cond_23

    .line 1052
    const/16 v2, 0x23

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1054
    :cond_23
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-eqz v2, :cond_24

    .line 1055
    const/16 v2, 0x24

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1057
    :cond_24
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-eqz v2, :cond_25

    .line 1058
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1060
    :cond_25
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-eqz v2, :cond_26

    .line 1061
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1063
    :cond_26
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-eqz v2, :cond_27

    .line 1064
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1066
    :cond_27
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-eqz v2, :cond_28

    .line 1067
    const/16 v2, 0x28

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1069
    :cond_28
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-eqz v2, :cond_29

    .line 1070
    const/16 v2, 0x29

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1072
    :cond_29
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    if-eqz v2, :cond_2a

    .line 1073
    const/16 v2, 0x2a

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->mediaRemoteControlC2G_:Lcom/google/glass/companion/Proto$MediaRemoteControlResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1075
    :cond_2a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    if-eqz v2, :cond_2c

    .line 1076
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiNetworks:[Lcom/google/glass/companion/Proto$WifiConfig;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_2c

    aget-object v0, v2, v1

    .line 1077
    .local v0, "element":Lcom/google/glass/companion/Proto$WifiConfig;
    if-eqz v0, :cond_2b

    .line 1078
    const/16 v4, 0x2b

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1076
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1082
    .end local v0    # "element":Lcom/google/glass/companion/Proto$WifiConfig;
    :cond_2c
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    if-eqz v1, :cond_2d

    .line 1083
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wifiStatusG2C_:Lcom/google/glass/companion/Proto$WifiStatus;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1085
    :cond_2d
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    if-eqz v1, :cond_2e

    .line 1086
    const/16 v1, 0x2d

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->notificationC2G_:Lcom/google/glass/companion/Proto$Notification;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1088
    :cond_2e
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1090
    return-void
.end method
