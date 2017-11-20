.class public final Lcom/google/glass/companion/Proto$Envelope;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


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

.field private messageC2G_:Ljava/lang/String;

.field private motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

.field private multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

.field private navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

.field private openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

.field private openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

.field private photoG2C_:Lcom/google/glass/companion/Proto$Photo;

.field private screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

.field private serialNumber_:I

.field private setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

.field private setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

.field private setupWifiC2G_:Ljava/lang/String;

.field private setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

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

    .line 15
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 1505
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 1499
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method


# virtual methods
.method public final clearAndroidDeviceInfo()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 551
    return-object p0
.end method

.method public final clearApiRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 323
    return-object p0
.end method

.method public final clearApiResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 342
    return-object p0
.end method

.method public final clearCommand()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 304
    return-object p0
.end method

.method public final clearCompanionDeviceInfoC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 570
    return-object p0
.end method

.method public final clearCompanionFeatureInfoC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 589
    return-object p0
.end method

.method public final clearCompanionInfo()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 247
    return-object p0
.end method

.method public final clearError()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 266
    return-object p0
.end method

.method public final clearGetWallpaperInfoC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 741
    return-object p0
.end method

.method public final clearGlassFeatureInfoG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 608
    return-object p0
.end method

.method public final clearGlassInfoRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 380
    return-object p0
.end method

.method public final clearGlassInfoResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 399
    return-object p0
.end method

.method public final clearGlassSetupRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 456
    return-object p0
.end method

.method public final clearGlassSetupResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 475
    return-object p0
.end method

.method public final clearInputBoxRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 418
    return-object p0
.end method

.method public final clearInputBoxResponseC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 437
    return-object p0
.end method

.method public final clearLocationMessageC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 121
    return-object p0
.end method

.method public final clearLocationRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 102
    return-object p0
.end method

.method public final clearMessageC2G()Lcom/google/glass/companion/Proto$Envelope;
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

.method public final clearMotionC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 361
    return-object p0
.end method

.method public final clearMultimediaMessage()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 684
    return-object p0
.end method

.method public final clearNavigationRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 184
    return-object p0
.end method

.method public final clearOpenEndedInputRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 646
    return-object p0
.end method

.method public final clearOpenEndedInputResponseC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 665
    return-object p0
.end method

.method public final clearPhotoG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 513
    return-object p0
.end method

.method public final clearScreenshot()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 285
    return-object p0
.end method

.method public final clearSerialNumber()Lcom/google/glass/companion/Proto$Envelope;
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

.method public final clearSetWallpaperRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 703
    return-object p0
.end method

.method public final clearSetWallpaperResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 722
    return-object p0
.end method

.method public final clearSetupWifiC2G()Lcom/google/glass/companion/Proto$Envelope;
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

.method public final clearSetupWifiRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 494
    return-object p0
.end method

.method public final clearTimeMillis()Lcom/google/glass/companion/Proto$Envelope;
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

.method public final clearTimezoneC2G()Lcom/google/glass/companion/Proto$Envelope;
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

.method public final clearUpdateCredentialRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 532
    return-object p0
.end method

.method public final clearUptimeMillis()Lcom/google/glass/companion/Proto$Envelope;
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

.method public final clearUrlG2C()Lcom/google/glass/companion/Proto$Envelope;
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

.method public final clearWallpaperC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 627
    return-object p0
.end method

.method public final clearWallpaperInfoG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 760
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 764
    if-ne p1, p0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return v0

    .line 765
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$Envelope;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 766
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$Envelope;

    .line 767
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    iget v3, p1, Lcom/google/glass/companion/Proto$Envelope;->version:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    iget v3, p1, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    iget-wide v4, p1, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 771
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 772
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v2, :cond_3

    .line 773
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v2, :cond_3

    .line 774
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 775
    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 776
    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v2, :cond_3

    .line 777
    :goto_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 778
    :goto_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 779
    :goto_7
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v2, :cond_3

    .line 780
    :goto_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v2, :cond_3

    .line 781
    :goto_9
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v2, :cond_3

    .line 782
    :goto_a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v2, :cond_3

    .line 783
    :goto_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v2, :cond_3

    .line 784
    :goto_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v2, :cond_3

    .line 785
    :goto_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v2, :cond_11

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v2, :cond_3

    .line 786
    :goto_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v2, :cond_12

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v2, :cond_3

    .line 787
    :goto_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v2, :cond_13

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v2, :cond_3

    .line 788
    :goto_10
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v2, :cond_14

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v2, :cond_3

    .line 789
    :goto_11
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v2, :cond_15

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v2, :cond_3

    .line 790
    :goto_12
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v2, :cond_16

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v2, :cond_3

    .line 791
    :goto_13
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v2, :cond_3

    .line 792
    :goto_14
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v2, :cond_18

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v2, :cond_3

    .line 793
    :goto_15
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v2, :cond_3

    .line 794
    :goto_16
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v2, :cond_1a

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v2, :cond_3

    .line 795
    :goto_17
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v2, :cond_3

    .line 796
    :goto_18
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v2, :cond_1c

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v2, :cond_3

    .line 797
    :goto_19
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v2, :cond_1d

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v2, :cond_3

    .line 798
    :goto_1a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v2, :cond_1e

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v2, :cond_3

    .line 799
    :goto_1b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v2, :cond_3

    .line 800
    :goto_1c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v2, :cond_20

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v2, :cond_3

    .line 801
    :goto_1d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v2, :cond_3

    .line 802
    :goto_1e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v2, :cond_22

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v2, :cond_3

    .line 803
    :goto_1f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v2, :cond_23

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v2, :cond_3

    .line 804
    :goto_20
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v2, :cond_24

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v2, :cond_3

    .line 805
    :goto_21
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v2, :cond_25

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v2, :cond_3

    .line 806
    :goto_22
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v2, :cond_26

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v2, :cond_3

    .line 807
    :goto_23
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_27

    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 808
    goto/16 :goto_0

    .line 772
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 773
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 774
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$LocationMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 775
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 776
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 777
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$NavigationRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 778
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 779
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 780
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 781
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Error;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 782
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 783
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Command;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 784
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 785
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$ApiResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 786
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_e

    :cond_12
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 787
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_f

    :cond_13
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 788
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 789
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$InputBoxRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_11

    :cond_15
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 790
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$InputBoxResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_12

    :cond_16
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 791
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 792
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_14

    :cond_18
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 793
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_15

    :cond_19
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 794
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Photo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_16

    :cond_1a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 795
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_17

    :cond_1b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 796
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_18

    :cond_1c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 797
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_19

    :cond_1d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 798
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1a

    :cond_1e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 799
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1b

    :cond_1f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 800
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$Wallpaper;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1c

    :cond_20
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 801
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1d

    :cond_21
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 802
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1e

    :cond_22
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 803
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$MultimediaMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1f

    :cond_23
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 804
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_20

    :cond_24
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 805
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_21

    :cond_25
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 806
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_22

    :cond_26
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 807
    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$WallpaperInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_23

    :cond_27
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    .line 808
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getAndroidDeviceInfo()Lcom/google/glass/companion/Proto$AndroidDeviceInfo;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    return-object v0
.end method

.method public final getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public final getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public final getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public final getCompanionDeviceInfoC2G()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    return-object v0
.end method

.method public final getCompanionFeatureInfoC2G()Lcom/google/glass/companion/Proto$CompanionFeatureInfo;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    return-object v0
.end method

.method public final getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public final getError()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public final getGetWallpaperInfoC2G()Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    return-object v0
.end method

.method public final getGlassFeatureInfoG2C()Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    return-object v0
.end method

.method public final getGlassInfoRequestC2G()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-object v0
.end method

.method public final getGlassInfoResponseG2C()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-object v0
.end method

.method public final getGlassSetupRequestC2G()Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-object v0
.end method

.method public final getGlassSetupResponseG2C()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-object v0
.end method

.method public final getInputBoxRequestG2C()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-object v0
.end method

.method public final getInputBoxResponseC2G()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-object v0
.end method

.method public final getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public final getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public final getMessageC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public final getMotionC2G()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public final getMultimediaMessage()Lcom/google/glass/companion/Proto$MultimediaMessage;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    return-object v0
.end method

.method public final getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public final getOpenEndedInputRequestG2C()Lcom/google/glass/companion/Proto$OpenEndedInputRequest;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    return-object v0
.end method

.method public final getOpenEndedInputResponseC2G()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    return-object v0
.end method

.method public final getPhotoG2C()Lcom/google/glass/companion/Proto$Photo;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    return-object v0
.end method

.method public final getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public final getSerialNumber()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1005
    .line 1006
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    .line 1007
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 1008
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1009
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 1010
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1012
    :cond_0
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1013
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 1014
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1016
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 1017
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 1018
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1020
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_4

    .line 1021
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 1022
    if-eqz v5, :cond_3

    .line 1023
    const/4 v6, 0x5

    .line 1024
    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1021
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1028
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v2, :cond_5

    .line 1029
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1030
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1032
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v2, :cond_6

    .line 1033
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1034
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1036
    :cond_6
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 1037
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 1038
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1040
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 1041
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 1042
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1044
    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v2, :cond_9

    .line 1045
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1046
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1048
    :cond_9
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_a

    .line 1049
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 1050
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1052
    :cond_a
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_b

    .line 1053
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 1054
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1056
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v2, :cond_c

    .line 1057
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1058
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1060
    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v2, :cond_d

    .line 1061
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1062
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1064
    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v2, :cond_e

    .line 1065
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1066
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1068
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v2, :cond_f

    .line 1069
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1070
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1072
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v2, :cond_11

    .line 1073
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_11

    aget-object v4, v2, v1

    .line 1074
    if-eqz v4, :cond_10

    .line 1075
    const/16 v5, 0x11

    .line 1076
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1073
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1080
    :cond_11
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v1, :cond_12

    .line 1081
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1082
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1084
    :cond_12
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v1, :cond_13

    .line 1085
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1086
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1088
    :cond_13
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v1, :cond_14

    .line 1089
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 1090
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1092
    :cond_14
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v1, :cond_15

    .line 1093
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 1094
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1096
    :cond_15
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v1, :cond_16

    .line 1097
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 1098
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1100
    :cond_16
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v1, :cond_17

    .line 1101
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 1102
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1104
    :cond_17
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v1, :cond_18

    .line 1105
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 1106
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1108
    :cond_18
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v1, :cond_19

    .line 1109
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 1110
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1112
    :cond_19
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v1, :cond_1a

    .line 1113
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 1114
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1116
    :cond_1a
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-eqz v1, :cond_1b

    .line 1117
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 1118
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1120
    :cond_1b
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-eqz v1, :cond_1c

    .line 1121
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 1122
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1124
    :cond_1c
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-eqz v1, :cond_1d

    .line 1125
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 1126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1128
    :cond_1d
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-eqz v1, :cond_1e

    .line 1129
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 1130
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1132
    :cond_1e
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v1, :cond_1f

    .line 1133
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 1134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1136
    :cond_1f
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-eqz v1, :cond_20

    .line 1137
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 1138
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1140
    :cond_20
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-eqz v1, :cond_21

    .line 1141
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 1142
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1144
    :cond_21
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-eqz v1, :cond_22

    .line 1145
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 1146
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1148
    :cond_22
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-eqz v1, :cond_23

    .line 1149
    const/16 v1, 0x23

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 1150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1152
    :cond_23
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-eqz v1, :cond_24

    .line 1153
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 1154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1156
    :cond_24
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-eqz v1, :cond_25

    .line 1157
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 1158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    :cond_25
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-eqz v1, :cond_26

    .line 1161
    const/16 v1, 0x26

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 1162
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1164
    :cond_26
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-eqz v1, :cond_27

    .line 1165
    const/16 v1, 0x27

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 1166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1168
    :cond_27
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-eqz v1, :cond_28

    .line 1169
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 1170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    :cond_28
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-eqz v1, :cond_29

    .line 1173
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 1174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1176
    :cond_29
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1177
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    .line 1178
    return v0
.end method

.method public final getSetWallpaperRequestC2G()Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    return-object v0
.end method

.method public final getSetWallpaperResponseG2C()Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    return-object v0
.end method

.method public final getSetupWifiC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetupWifiRequestG2C()Lcom/google/glass/companion/Proto$SetupWifiRequest;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    return-object v0
.end method

.method public final getTimeMillis()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide v0
.end method

.method public final getTimezoneC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateCredentialRequestG2C()Lcom/google/glass/companion/Proto$UpdateCredentialRequest;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    return-object v0
.end method

.method public final getUptimeMillis()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide v0
.end method

.method public final getUrlG2C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    return-object v0
.end method

.method public final getWallpaperC2G()Lcom/google/glass/companion/Proto$Wallpaper;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    return-object v0
.end method

.method public final getWallpaperInfoG2C()Lcom/google/glass/companion/Proto$WallpaperInfo;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    return-object v0
.end method

.method public final hasAndroidDeviceInfo()Z
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

.method public final hasApiRequestC2G()Z
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

.method public final hasApiResponseG2C()Z
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

.method public final hasCommand()Z
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

.method public final hasCompanionDeviceInfoC2G()Z
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

.method public final hasCompanionFeatureInfoC2G()Z
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

.method public final hasCompanionInfo()Z
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

.method public final hasError()Z
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

.method public final hasGetWallpaperInfoC2G()Z
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

.method public final hasGlassFeatureInfoG2C()Z
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

.method public final hasGlassInfoRequestC2G()Z
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

.method public final hasGlassInfoResponseG2C()Z
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

.method public final hasGlassSetupRequestC2G()Z
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

.method public final hasGlassSetupResponseG2C()Z
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

.method public final hasInputBoxRequestG2C()Z
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

.method public final hasInputBoxResponseC2G()Z
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

.method public final hasLocationMessageC2G()Z
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

.method public final hasLocationRequestG2C()Z
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

.method public final hasMessageC2G()Z
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

.method public final hasMotionC2G()Z
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

.method public final hasMultimediaMessage()Z
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

.method public final hasNavigationRequestC2G()Z
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

.method public final hasOpenEndedInputRequestG2C()Z
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

.method public final hasOpenEndedInputResponseC2G()Z
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

.method public final hasPhotoG2C()Z
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

.method public final hasScreenshot()Z
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

.method public final hasSerialNumber()Z
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

.method public final hasSetWallpaperRequestC2G()Z
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

.method public final hasSetWallpaperResponseG2C()Z
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

.method public final hasSetupWifiC2G()Z
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

.method public final hasSetupWifiRequestG2C()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTimeMillis()Z
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

.method public final hasTimezoneC2G()Z
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

.method public final hasUpdateCredentialRequestG2C()Z
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

.method public final hasUptimeMillis()Z
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

.method public final hasUrlG2C()Z
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

.method public final hasWallpaperC2G()Z
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

.method public final hasWallpaperInfoG2C()Z
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

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 812
    .line 813
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    add-int/lit16 v0, v0, 0x20f

    .line 814
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    add-int/2addr v0, v2

    .line 815
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 816
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 817
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v0, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    .line 829
    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 830
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 831
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 832
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 833
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 834
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 835
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 836
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 837
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v0, :cond_e

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 838
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 839
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v0, :cond_10

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 840
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v0, :cond_11

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 841
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v0, :cond_12

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    .line 842
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v0, :cond_13

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    .line 843
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v0, :cond_14

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    .line 844
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v0, :cond_15

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 845
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v0, :cond_16

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    .line 846
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v0, :cond_17

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    .line 847
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v0, :cond_18

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    .line 848
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v0, :cond_19

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    .line 849
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v0, :cond_1a

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    .line 850
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    .line 851
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    .line 852
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v0, :cond_1d

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    .line 853
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v0, :cond_1e

    move v0, v1

    :goto_18
    add-int/2addr v0, v2

    .line 854
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_19
    add-int/2addr v0, v2

    .line 855
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v0, :cond_20

    move v0, v1

    :goto_1a
    add-int/2addr v0, v2

    .line 856
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v0, :cond_21

    move v0, v1

    :goto_1b
    add-int/2addr v0, v2

    .line 857
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v0, :cond_22

    move v0, v1

    :goto_1c
    add-int/2addr v0, v2

    .line 858
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v0, :cond_23

    move v0, v1

    :goto_1d
    add-int/2addr v0, v2

    .line 859
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v0, :cond_24

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    .line 860
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v0, :cond_25

    move v0, v1

    :goto_1f
    add-int/2addr v0, v2

    .line 861
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v0, :cond_26

    move v0, v1

    :goto_20
    add-int/2addr v0, v2

    .line 862
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v0, :cond_27

    move v0, v1

    :goto_21
    add-int/2addr v0, v2

    .line 863
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v0, :cond_28

    move v0, v1

    :goto_22
    add-int/2addr v0, v2

    .line 864
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_29

    :goto_23
    add-int/2addr v0, v1

    .line 865
    return v0

    :cond_2
    move v2, v0

    move v0, v1

    .line 819
    :goto_24
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 820
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v1

    :goto_25
    add-int/2addr v2, v3

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 820
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_25

    :cond_4
    move v0, v1

    .line 825
    :goto_26
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 826
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v1

    :goto_27
    add-int/2addr v2, v3

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 826
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hashCode()I

    move-result v2

    goto :goto_27

    .line 829
    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationRequest;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 830
    :cond_7
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 831
    :cond_8
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    .line 832
    :cond_9
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 833
    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;->hashCode()I

    move-result v0

    goto/16 :goto_4

    .line 834
    :cond_b
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_5

    .line 835
    :cond_c
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    .line 836
    :cond_d
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;->hashCode()I

    move-result v0

    goto/16 :goto_7

    .line 837
    :cond_e
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Error;->hashCode()I

    move-result v0

    goto/16 :goto_8

    .line 838
    :cond_f
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->hashCode()I

    move-result v0

    goto/16 :goto_9

    .line 839
    :cond_10
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command;->hashCode()I

    move-result v0

    goto/16 :goto_a

    .line 840
    :cond_11
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->hashCode()I

    move-result v0

    goto/16 :goto_b

    .line 841
    :cond_12
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->hashCode()I

    move-result v0

    goto/16 :goto_c

    .line 842
    :cond_13
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$MotionEvent;->hashCode()I

    move-result v0

    goto/16 :goto_d

    .line 843
    :cond_14
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hashCode()I

    move-result v0

    goto/16 :goto_e

    .line 844
    :cond_15
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->hashCode()I

    move-result v0

    goto/16 :goto_f

    .line 845
    :cond_16
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;->hashCode()I

    move-result v0

    goto/16 :goto_10

    .line 846
    :cond_17
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;->hashCode()I

    move-result v0

    goto/16 :goto_11

    .line 847
    :cond_18
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->hashCode()I

    move-result v0

    goto/16 :goto_12

    .line 848
    :cond_19
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->hashCode()I

    move-result v0

    goto/16 :goto_13

    .line 849
    :cond_1a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;->hashCode()I

    move-result v0

    goto/16 :goto_14

    .line 850
    :cond_1b
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Photo;->hashCode()I

    move-result v0

    goto/16 :goto_15

    .line 851
    :cond_1c
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;->hashCode()I

    move-result v0

    goto/16 :goto_16

    .line 852
    :cond_1d
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->hashCode()I

    move-result v0

    goto/16 :goto_17

    .line 853
    :cond_1e
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->hashCode()I

    move-result v0

    goto/16 :goto_18

    .line 854
    :cond_1f
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->hashCode()I

    move-result v0

    goto/16 :goto_19

    .line 855
    :cond_20
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->hashCode()I

    move-result v0

    goto/16 :goto_1a

    .line 856
    :cond_21
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Wallpaper;->hashCode()I

    move-result v0

    goto/16 :goto_1b

    .line 857
    :cond_22
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;->hashCode()I

    move-result v0

    goto/16 :goto_1c

    .line 858
    :cond_23
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;->hashCode()I

    move-result v0

    goto/16 :goto_1d

    .line 859
    :cond_24
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$MultimediaMessage;->hashCode()I

    move-result v0

    goto/16 :goto_1e

    .line 860
    :cond_25
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->hashCode()I

    move-result v0

    goto/16 :goto_1f

    .line 861
    :cond_26
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->hashCode()I

    move-result v0

    goto/16 :goto_20

    .line 862
    :cond_27
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->hashCode()I

    move-result v0

    goto/16 :goto_21

    .line 863
    :cond_28
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$WallpaperInfo;->hashCode()I

    move-result v0

    goto/16 :goto_22

    .line 864
    :cond_29
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto/16 :goto_23
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1186
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1187
    sparse-switch v0, :sswitch_data_0

    .line 1191
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    .line 1195
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    :sswitch_0
    return-object p0

    .line 1202
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    goto :goto_0

    .line 1206
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 1207
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1211
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 1212
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1216
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 1217
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 1221
    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1222
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_3

    move v0, v1

    .line 1223
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1224
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v3, :cond_2

    .line 1225
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1227
    :cond_2
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1228
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 1229
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v3, v2, v0

    .line 1230
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1231
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v0, v0

    goto :goto_1

    .line 1234
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v3, v2, v0

    .line 1235
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1239
    :sswitch_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v0, :cond_5

    .line 1240
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1242
    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1246
    :sswitch_7
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v0, :cond_6

    .line 1247
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 1249
    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1253
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 1254
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1258
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 1259
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1263
    :sswitch_a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v0, :cond_7

    .line 1264
    new-instance v0, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 1266
    :cond_7
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1270
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 1271
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1275
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 1276
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 1280
    :sswitch_d
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v0, :cond_8

    .line 1281
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1283
    :cond_8
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1287
    :sswitch_e
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v0, :cond_9

    .line 1288
    new-instance v0, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 1290
    :cond_9
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1294
    :sswitch_f
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v0, :cond_a

    .line 1295
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 1297
    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1301
    :sswitch_10
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v0, :cond_b

    .line 1302
    new-instance v0, Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 1304
    :cond_b
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1308
    :sswitch_11
    const/16 v0, 0x8a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1309
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v0, :cond_d

    move v0, v1

    .line 1310
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 1311
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v3, :cond_c

    .line 1312
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1314
    :cond_c
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 1315
    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_e

    .line 1316
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v3, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v3, v2, v0

    .line 1317
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1318
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1309
    :cond_d
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v0, v0

    goto :goto_3

    .line 1321
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v3, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v3, v2, v0

    .line 1322
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1326
    :sswitch_12
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v0, :cond_f

    .line 1327
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 1329
    :cond_f
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1333
    :sswitch_13
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v0, :cond_10

    .line 1334
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 1336
    :cond_10
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1340
    :sswitch_14
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v0, :cond_11

    .line 1341
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 1343
    :cond_11
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1347
    :sswitch_15
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v0, :cond_12

    .line 1348
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 1350
    :cond_12
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1354
    :sswitch_16
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v0, :cond_13

    .line 1355
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 1357
    :cond_13
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1361
    :sswitch_17
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v0, :cond_14

    .line 1362
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 1364
    :cond_14
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1368
    :sswitch_18
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v0, :cond_15

    .line 1369
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 1371
    :cond_15
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1375
    :sswitch_19
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v0, :cond_16

    .line 1376
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 1378
    :cond_16
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1382
    :sswitch_1a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v0, :cond_17

    .line 1383
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 1385
    :cond_17
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1389
    :sswitch_1b
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-nez v0, :cond_18

    .line 1390
    new-instance v0, Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetupWifiRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 1392
    :cond_18
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1396
    :sswitch_1c
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-nez v0, :cond_19

    .line 1397
    new-instance v0, Lcom/google/glass/companion/Proto$Photo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Photo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    .line 1399
    :cond_19
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1403
    :sswitch_1d
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-nez v0, :cond_1a

    .line 1404
    new-instance v0, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$UpdateCredentialRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    .line 1406
    :cond_1a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1410
    :sswitch_1e
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-nez v0, :cond_1b

    .line 1411
    new-instance v0, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    .line 1413
    :cond_1b
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1417
    :sswitch_1f
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-nez v0, :cond_1c

    .line 1418
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 1420
    :cond_1c
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1424
    :sswitch_20
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-nez v0, :cond_1d

    .line 1425
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .line 1427
    :cond_1d
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1431
    :sswitch_21
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v0, :cond_1e

    .line 1432
    new-instance v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 1434
    :cond_1e
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1438
    :sswitch_22
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-nez v0, :cond_1f

    .line 1439
    new-instance v0, Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Wallpaper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    .line 1441
    :cond_1f
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1445
    :sswitch_23
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-nez v0, :cond_20

    .line 1446
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    .line 1448
    :cond_20
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1452
    :sswitch_24
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-nez v0, :cond_21

    .line 1453
    new-instance v0, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$OpenEndedInputResponse;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .line 1455
    :cond_21
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1459
    :sswitch_25
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-nez v0, :cond_22

    .line 1460
    new-instance v0, Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MultimediaMessage;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    .line 1462
    :cond_22
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1466
    :sswitch_26
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v0, :cond_23

    .line 1467
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 1469
    :cond_23
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1473
    :sswitch_27
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v0, :cond_24

    .line 1474
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 1476
    :cond_24
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1480
    :sswitch_28
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-nez v0, :cond_25

    .line 1481
    new-instance v0, Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    .line 1483
    :cond_25
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1487
    :sswitch_29
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-nez v0, :cond_26

    .line 1488
    new-instance v0, Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$WallpaperInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    .line 1490
    :cond_26
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1187
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
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public final setAndroidDeviceInfo(Lcom/google/glass/companion/Proto$AndroidDeviceInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setCompanionDeviceInfoC2G(Lcom/google/glass/companion/Proto$CompanionDeviceInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setCompanionFeatureInfoC2G(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setGetWallpaperInfoC2G(Lcom/google/glass/companion/Proto$GetWallpaperInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setGlassFeatureInfoG2C(Lcom/google/glass/companion/Proto$GlassFeatureInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setGlassInfoRequestC2G(Lcom/google/glass/companion/Proto$GlassInfoRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setGlassInfoResponseG2C(Lcom/google/glass/companion/Proto$GlassInfoResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setGlassSetupRequestC2G(Lcom/google/glass/companion/Proto$GlassSetupRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setGlassSetupResponseG2C(Lcom/google/glass/companion/Proto$GlassSetupResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setInputBoxRequestG2C(Lcom/google/glass/companion/Proto$InputBoxRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setInputBoxResponseC2G(Lcom/google/glass/companion/Proto$InputBoxResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setMessageC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setMotionC2G(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setMultimediaMessage(Lcom/google/glass/companion/Proto$MultimediaMessage;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setOpenEndedInputRequestG2C(Lcom/google/glass/companion/Proto$OpenEndedInputRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setOpenEndedInputResponseC2G(Lcom/google/glass/companion/Proto$OpenEndedInputResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setPhotoG2C(Lcom/google/glass/companion/Proto$Photo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setSerialNumber(I)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setSetWallpaperRequestC2G(Lcom/google/glass/companion/Proto$SetWallpaperRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setSetWallpaperResponseG2C(Lcom/google/glass/companion/Proto$SetWallpaperResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setSetupWifiC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setSetupWifiRequestG2C(Lcom/google/glass/companion/Proto$SetupWifiRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    .line 487
    return-object p0
.end method

.method public final setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setTimezoneC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setUpdateCredentialRequestG2C(Lcom/google/glass/companion/Proto$UpdateCredentialRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setUrlG2C(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setWallpaperC2G(Lcom/google/glass/companion/Proto$Wallpaper;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final setWallpaperInfoG2C(Lcom/google/glass/companion/Proto$WallpaperInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

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

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 870
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 871
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 872
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 874
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 875
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 877
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 878
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 880
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_4

    .line 881
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 882
    if-eqz v4, :cond_3

    .line 883
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 881
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v1, :cond_5

    .line 888
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 890
    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v1, :cond_6

    .line 891
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 893
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    .line 894
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 896
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 897
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 899
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v1, :cond_9

    .line 900
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 902
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    .line 903
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 905
    :cond_a
    iget v1, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_b

    .line 906
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 908
    :cond_b
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v1, :cond_c

    .line 909
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 911
    :cond_c
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v1, :cond_d

    .line 912
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 914
    :cond_d
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v1, :cond_e

    .line 915
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 917
    :cond_e
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v1, :cond_f

    .line 918
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 920
    :cond_f
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v1, :cond_11

    .line 921
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    .line 922
    if-eqz v3, :cond_10

    .line 923
    const/16 v4, 0x11

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 921
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 927
    :cond_11
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v0, :cond_12

    .line 928
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 930
    :cond_12
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v0, :cond_13

    .line 931
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 933
    :cond_13
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v0, :cond_14

    .line 934
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 936
    :cond_14
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v0, :cond_15

    .line 937
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 939
    :cond_15
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v0, :cond_16

    .line 940
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 942
    :cond_16
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v0, :cond_17

    .line 943
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 945
    :cond_17
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v0, :cond_18

    .line 946
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 948
    :cond_18
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v0, :cond_19

    .line 949
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 951
    :cond_19
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v0, :cond_1a

    .line 952
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 954
    :cond_1a
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    if-eqz v0, :cond_1b

    .line 955
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiRequestG2C_:Lcom/google/glass/companion/Proto$SetupWifiRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 957
    :cond_1b
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    if-eqz v0, :cond_1c

    .line 958
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->photoG2C_:Lcom/google/glass/companion/Proto$Photo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 960
    :cond_1c
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    if-eqz v0, :cond_1d

    .line 961
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->updateCredentialRequestG2C_:Lcom/google/glass/companion/Proto$UpdateCredentialRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 963
    :cond_1d
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    if-eqz v0, :cond_1e

    .line 964
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->androidDeviceInfo_:Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 966
    :cond_1e
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v0, :cond_1f

    .line 967
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionDeviceInfoC2G_:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 969
    :cond_1f
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    if-eqz v0, :cond_20

    .line 970
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionFeatureInfoC2G_:Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 972
    :cond_20
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-eqz v0, :cond_21

    .line 973
    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassFeatureInfoG2C_:Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 975
    :cond_21
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    if-eqz v0, :cond_22

    .line 976
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperC2G_:Lcom/google/glass/companion/Proto$Wallpaper;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 978
    :cond_22
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    if-eqz v0, :cond_23

    .line 979
    const/16 v0, 0x23

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputRequestG2C_:Lcom/google/glass/companion/Proto$OpenEndedInputRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 981
    :cond_23
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    if-eqz v0, :cond_24

    .line 982
    const/16 v0, 0x24

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->openEndedInputResponseC2G_:Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 984
    :cond_24
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    if-eqz v0, :cond_25

    .line 985
    const/16 v0, 0x25

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->multimediaMessage_:Lcom/google/glass/companion/Proto$MultimediaMessage;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 987
    :cond_25
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-eqz v0, :cond_26

    .line 988
    const/16 v0, 0x26

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperRequestC2G_:Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 990
    :cond_26
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-eqz v0, :cond_27

    .line 991
    const/16 v0, 0x27

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->setWallpaperResponseG2C_:Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 993
    :cond_27
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    if-eqz v0, :cond_28

    .line 994
    const/16 v0, 0x28

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->getWallpaperInfoC2G_:Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 996
    :cond_28
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    if-eqz v0, :cond_29

    .line 997
    const/16 v0, 0x29

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->wallpaperInfoG2C_:Lcom/google/glass/companion/Proto$WallpaperInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 999
    :cond_29
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1001
    return-void
.end method
