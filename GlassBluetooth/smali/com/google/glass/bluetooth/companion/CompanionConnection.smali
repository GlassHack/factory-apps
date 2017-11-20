.class Lcom/google/glass/bluetooth/companion/CompanionConnection;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;,
        Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;,
        Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;
    }
.end annotation


# static fields
.field private static final OUTPUT_BUFFER_SIZE_BYTES:I = 0x10000

.field private static final PERMISSION_COMPANION:Ljava/lang/String; = "com.google.glass.bluetooth.permission.COMPANION"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final batteryPowerStateReceiver:Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;

.field private final broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field private final envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

.field private volatile eventInjector:Lcom/google/glass/bluetooth/companion/EventInjector;

.field private final inStream:Ljava/io/InputStream;

.field private volatile isClosed:Z

.field private final outStream:Ljava/io/OutputStream;

.field private final socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

.field private socketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

.field private streamingThread:Lcom/google/glass/bluetooth/companion/StreamingThread;

.field private final streamingThreadLock:Ljava/lang/Object;

.field private final timeZoneUtil:Lcom/google/glass/util/TimeZoneUtil;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/TimeZoneUtil;Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 7
    .param p1, "timeZoneUtil"    # Lcom/google/glass/util/TimeZoneUtil;
    .param p2, "socketServer"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p3, "socketWrapper"    # Lcom/google/glass/bluetooth/BluetoothSocket;

    .prologue
    const/4 v6, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v6, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->isClosed:Z

    .line 97
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->streamingThreadLock:Ljava/lang/Object;

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "tmpIn":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 111
    .local v3, "tmpOut":Ljava/io/OutputStream;
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->timeZoneUtil:Lcom/google/glass/util/TimeZoneUtil;

    .line 113
    invoke-virtual {p2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/util/BatteryHelperProvider;->getInstance()Lcom/google/glass/util/BatteryHelperProvider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/util/BatteryHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 116
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .line 117
    iput-object p3, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    .line 119
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 120
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 125
    :goto_0
    iput-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    .line 126
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/high16 v5, 0x10000

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    .line 127
    new-instance v4, Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    invoke-direct {v4, v5}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    .line 129
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 131
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 132
    new-instance v4, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    invoke-direct {v4, v5}, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;-><init>(Lcom/google/glass/bluetooth/companion/EnvelopeSender;)V

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->batteryPowerStateReceiver:Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;

    .line 134
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;->getInstance()Lcom/google/glass/wallpaper/WallpaperHelper$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/wallpaper/WallpaperHelper;

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;

    .line 135
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to get BluetoothSocket input/output streams."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Lcom/google/glass/bluetooth/companion/EnvelopeSender;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    return-object v0
.end method

.method private handleCommand(I)V
    .locals 2
    .param p1, "command"    # I

    .prologue
    .line 651
    if-nez p1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothSocket;->getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->unpair(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/companion/DebugConnectivityChecker;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 655
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/companion/DebugConnectivityChecker;->stop(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleError(I)V
    .locals 9
    .param p1, "error"    # I

    .prologue
    .line 667
    packed-switch p1, :pswitch_data_0

    .line 677
    sget-object v4, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Not handling error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :goto_0
    return-void

    .line 669
    :pswitch_0
    sget v1, Lcom/google/glass/bluetooth/R$string;->error_google_voice_out_of_date:I

    .line 670
    .local v1, "messageId":I
    sget v3, Lcom/google/glass/bluetooth/R$string;->error_google_voice_out_of_date_tip:I

    .line 680
    .local v3, "subMessageId":I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, "subMessage":Ljava/lang/String;
    new-instance v4, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0, v2}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "messageId":I
    .end local v2    # "subMessage":Ljava/lang/String;
    .end local v3    # "subMessageId":I
    :pswitch_1
    sget v1, Lcom/google/glass/bluetooth/R$string;->error_google_voice_not_installed:I

    .line 674
    .restart local v1    # "messageId":I
    sget v3, Lcom/google/glass/bluetooth/R$string;->error_google_voice_not_installed_tip:I

    .line 675
    .restart local v3    # "subMessageId":I
    goto :goto_1

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleGlassInfo(Lcom/google/glass/companion/Proto$GlassInfoRequest;)V
    .locals 7
    .param p1, "glassInfoRequest"    # Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .prologue
    const-wide/16 v5, 0x1

    .line 433
    new-instance v1, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    .line 435
    .local v1, "glassInfoResponse":Lcom/google/glass/companion/Proto$GlassInfoResponse;
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hasRequestBatteryLevel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/BatteryHelper;->getChargePercent()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setBatteryLevel(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hasRequestStorageInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    invoke-virtual {v1, v5, v6}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setExternalStorageTotalBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 443
    invoke-virtual {v1, v5, v6}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setExternalStorageAvailableBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 446
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hasRequestDeviceName()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 447
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothAdapter;->hasBluetoothAdapter()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 448
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setDeviceName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 452
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hasRequestSoftwareVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    const-string v4, "ro.build.version.glass"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setSoftwareVersion(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 457
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hasRequestNeedSetup()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 458
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/util/SetupHelper;->isDeviceSetup(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setNeedSetup(Z)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 461
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hasRequestScreenDimensions()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 462
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 463
    .local v2, "screenPt":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .line 464
    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 465
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 466
    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setGlassScreenWidthPixels(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 467
    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setGlassScreenHeightPixels(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 470
    .end local v2    # "screenPt":Landroid/graphics/Point;
    .end local v3    # "windowManager":Landroid/view/WindowManager;
    :cond_5
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 471
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setGlassInfoResponseG2C(Lcom/google/glass/companion/Proto$GlassInfoResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 472
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    invoke-virtual {v4, v0}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->sendEnvelopeAsync(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 473
    return-void

    .line 458
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleInputBoxResponse(Lcom/google/glass/companion/Proto$InputBoxResponse;)V
    .locals 1
    .param p1, "inputBoxResponse"    # Lcom/google/glass/companion/Proto$InputBoxResponse;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/glass/companion/CompanionInputBoxResponseHandler;->handleResponse(Landroid/content/Context;Lcom/google/glass/companion/Proto$InputBoxResponse;)Lcom/google/glass/companion/CompanionInputBoxResponseHandler;

    .line 477
    return-void
.end method

.method private handleNotificationsList(Lcom/google/glass/companion/Proto$Notification;)V
    .locals 4
    .param p1, "notification"    # Lcom/google/glass/companion/Proto$Notification;

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.companion.ACTION_NOTIFICATIONS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "notification_update_bytes"

    .line 383
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .line 385
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.google.glass.bluetooth.permission.COMPANION"

    .line 386
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method private handleOpenEndedInputResponse(Lcom/google/glass/companion/Proto$OpenEndedInputResponse;)V
    .locals 4
    .param p1, "inputResponse"    # Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.companion.OPEN_ENDED_INPUT_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "open_ended_response_bytes"

    .line 483
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/hidden/HiddenUserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.google.glass.bluetooth.permission.COMPANION"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private handleScreenshotRequest(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    .line 607
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->streamingThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->isClosed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 609
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Can\'t start screenshot since the connection is not running."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    monitor-exit v1

    .line 634
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->streamingThread:Lcom/google/glass/bluetooth/companion/StreamingThread;

    if-eqz v0, :cond_3

    .line 613
    if-eqz p1, :cond_1

    .line 614
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "streamingThread is already running."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    monitor-exit v1

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 618
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->eventInjector:Lcom/google/glass/bluetooth/companion/EventInjector;

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->eventInjector:Lcom/google/glass/bluetooth/companion/EventInjector;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/EventInjector;->notifyScreenshareEnd()V

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->streamingThread:Lcom/google/glass/bluetooth/companion/StreamingThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/StreamingThread;->close()V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->streamingThread:Lcom/google/glass/bluetooth/companion/StreamingThread;

    .line 624
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->stopScreencastAndRestorePairing()V

    .line 633
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 626
    :cond_3
    if-nez p1, :cond_4

    .line 627
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "streamingThread is already stopped."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    monitor-exit v1

    goto :goto_0

    .line 631
    :cond_4
    new-instance v0, Lcom/google/glass/bluetooth/companion/StreamingThread;

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/google/glass/bluetooth/companion/StreamingThread;-><init>(Landroid/content/Context;Lcom/google/glass/bluetooth/companion/StreamingThread$ScreenShotListener;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->streamingThread:Lcom/google/glass/bluetooth/companion/StreamingThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private handleTimelineItemResponse(Lcom/google/glass/companion/Proto$TimelineItemResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .prologue
    .line 584
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getId()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getSyncStatus()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    const/4 v3, 0x1

    .line 585
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/companion/CompanionTimelineUtils;->updateCompanionSyncStatus(Ljava/lang/String;ILcom/google/glass/timeline/TimelineItemDatabaseHelper;Z)V

    .line 588
    :cond_0
    return-void
.end method

.method private processTimelineItemReponse(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 4
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 499
    iget-object v1, p1, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 501
    .local v0, "response":Lcom/google/glass/companion/Proto$TimelineItemResponse;
    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleTimelineItemResponse(Lcom/google/glass/companion/Proto$TimelineItemResponse;)V

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v0    # "response":Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_0
    return-void
.end method

.method private processTimelineItems(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 4
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 490
    iget-object v1, p1, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    iget-object v2, p1, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 492
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleTimelineItemFromCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    return-void
.end method

.method private setupGlass(Lcom/google/glass/companion/Proto$GlassSetupRequest;)V
    .locals 8
    .param p1, "setupRequest"    # Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .prologue
    .line 390
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 391
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v5

    const-string v6, "android"

    const/4 v7, 0x0

    .line 392
    invoke-interface {v5, v6, v7}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "authToken":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/util/SetupHelper;->isDeviceSetup(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 396
    new-instance v4, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v4}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    .line 397
    .local v4, "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setSetupStatus(I)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 398
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 399
    .local v2, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v2, v4}, Lcom/google/glass/companion/Proto$Envelope;->setGlassSetupResponseG2C(Lcom/google/glass/companion/Proto$GlassSetupResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 400
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    invoke-virtual {v5, v2}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->sendEnvelopeAsync(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 406
    .end local v2    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v4    # "response":Lcom/google/glass/companion/Proto$GlassSetupResponse;
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.google.glass.companion.SETUP_GLASS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "setup_string"

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->getSetupString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v5, "com.google.glass.bluetooth.permission.COMPANION"

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupGlassWifi(Ljava/lang/String;)V
    .locals 6
    .param p1, "wifiInfo"    # Ljava/lang/String;

    .prologue
    .line 594
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "setting up Glass wifi ..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 596
    .local v0, "context":Landroid/content/Context;
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v3}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_BroadcastWakeLock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.glass.companion.SETUP_WIFI"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "wifi_setup_string"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v3, "com.google.glass.bluetooth.permission.COMPANION"

    invoke-static {v0, v1, v3, v2}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private showMessageFromCompanion(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 422
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Companion gave us a message to show: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionConnection$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionConnection$2;-><init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method private startNavigationFromCompanion(Lcom/google/glass/companion/Proto$NavigationRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/google/glass/companion/Proto$NavigationRequest;

    .prologue
    .line 409
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Companion is starting navigation to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$NavigationRequest;->getUri()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionConnection$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionConnection$1;-><init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Lcom/google/glass/companion/Proto$NavigationRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->close()V

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleScreenshotRequest(Z)V

    .line 202
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->eventInjector:Lcom/google/glass/bluetooth/companion/EventInjector;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->eventInjector:Lcom/google/glass/bluetooth/companion/EventInjector;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/companion/EventInjector;->close(Landroid/content/Context;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 206
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 208
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->batteryPowerStateReceiver:Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->isClosed:Z

    goto :goto_0
.end method

.method getConnectedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothSocket;->getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getEnvelopeSender()Lcom/google/glass/bluetooth/companion/EnvelopeSender;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    return-object v0
.end method

.method handleTimelineItemFromCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 5
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 575
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;-><init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 576
    .local v0, "runnable":Lcom/google/glass/bluetooth/companion/CompanionConnection$CompanionTimelineItemRunnable;
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 577
    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->executeIfNotQueued(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "TimelineItem [%s] from Companion is already being handled, skipping request."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    :cond_0
    return-void
.end method

.method public handshake()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 138
    sget-object v5, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Handshaking (version %d) with client.."

    new-array v7, v10, [Ljava/lang/Object;

    sget v8, Lcom/google/glass/companion/CompanionConstants;->VERSION:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v5, Lcom/google/glass/bluetooth/companion/EventInjector;

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/bluetooth/companion/EventInjector;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->eventInjector:Lcom/google/glass/bluetooth/companion/EventInjector;

    .line 141
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 142
    .local v2, "outEnvelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-static {v2}, Lcom/google/glass/companion/CompanionMessagingUtil;->fillAndroidDeviceInfo(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 143
    new-instance v1, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;-><init>()V

    .line 144
    .local v1, "glassFeatureInfo":Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->WP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->setIsWallpaperFeatureEnabled(Z)Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 145
    invoke-virtual {v2, v1}, Lcom/google/glass/companion/Proto$Envelope;->setGlassFeatureInfoG2C(Lcom/google/glass/companion/Proto$GlassFeatureInfo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 147
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    invoke-static {v2, v5}, Lcom/google/glass/protobuf/DelimitedProtoIo;->writeDelimitedTo(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;)V

    .line 148
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 150
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    .line 151
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    invoke-static {v0, v5}, Lcom/google/glass/protobuf/DelimitedProtoIo;->parseDelimitedFrom(Lcom/google/protobuf/nano/MessageNano;Ljava/io/InputStream;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    .line 152
    .restart local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    if-nez v0, :cond_0

    .line 153
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to parse handshake envelope."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_0
    iget v4, v0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    .line 157
    .local v4, "version":I
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v5, v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setRemoteVersion(I)V

    .line 158
    sget v5, Lcom/google/glass/companion/CompanionConstants;->VERSION:I

    if-eq v4, v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    sget v6, Lcom/google/glass/companion/CompanionConstants;->VERSION:I

    invoke-virtual {v5, v6, v4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyVersionMismatch(II)V

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasTimezoneC2G()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2G()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "timezone":Ljava/lang/String;
    sget-object v5, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Companion gave us timezone: %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->timeZoneUtil:Lcom/google/glass/util/TimeZoneUtil;

    invoke-virtual {v5, v3}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZoneByCompanion(Ljava/lang/String;)V

    .line 168
    .end local v3    # "timezone":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionDeviceInfoC2G()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionDeviceInfoC2G()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setCompanionDeviceInfo(Lcom/google/glass/companion/Proto$CompanionDeviceInfo;)V

    .line 172
    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasAndroidDeviceInfo()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 173
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getAndroidDeviceInfo()Lcom/google/glass/companion/Proto$AndroidDeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$AndroidDeviceInfo;->getSdkVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setCompanionAndroidSDKVersion(I)V

    .line 178
    :goto_0
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionFeatureInfoC2G()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionFeatureInfoC2G()Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->resetCompanionFeatureInfo(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V

    .line 184
    :goto_1
    sget-object v5, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Client is running version %d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->batteryPowerStateReceiver:Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 187
    return-void

    .line 175
    :cond_4
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setCompanionAndroidSDKVersion(I)V

    goto :goto_0

    .line 181
    :cond_5
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->resetCompanionFeatureInfo(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V

    goto :goto_1
.end method

.method public onNewScreenShot([BZ)V
    .locals 6
    .param p1, "newScreen"    # [B
    .param p2, "isScreenOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 638
    if-nez p1, :cond_0

    .line 639
    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "streamingThread provide null data"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    :cond_0
    new-instance v1, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    .line 643
    .local v1, "screenShot":Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$ScreenShot;->setScreenshotBytesG2C([B)Lcom/google/glass/companion/Proto$ScreenShot;

    .line 644
    invoke-virtual {v1, p2}, Lcom/google/glass/companion/Proto$ScreenShot;->setIsScreenOnG2C(Z)Lcom/google/glass/companion/Proto$ScreenShot;

    .line 645
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 646
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope;

    .line 647
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->getEnvelopeSender()Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->sendOrUpdateEnvelopeAsync(ILcom/google/glass/companion/Proto$Envelope;)V

    .line 648
    return-void
.end method

.method run()V
    .locals 22

    .prologue
    .line 218
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->isClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 220
    :try_start_0
    new-instance v6, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    .line 221
    .local v6, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->inStream:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/google/glass/protobuf/DelimitedProtoIo;->parseDelimitedFrom(Lcom/google/protobuf/nano/MessageNano;Ljava/io/InputStream;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v6

    .end local v6    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    check-cast v6, Lcom/google/glass/companion/Proto$Envelope;

    .line 222
    .restart local v6    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    if-nez v6, :cond_1

    .line 223
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Could not parse Envelope"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v6    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    :catch_0
    move-exception v5

    .line 374
    .local v5, "e":Ljava/io/IOException;
    sget-object v18, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Error parsing Companion envelope"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v5, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    return-void

    .line 226
    .restart local v6    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 228
    .local v15, "timestamp":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v18, "Envelope received"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .local v10, "logMsg":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x23

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v19, ", Glass time = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getTimeMillis()J

    move-result-wide v18

    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v21, 0x26

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v21, ", Envelope time = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, v6, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 232
    const-string v18, ", Has TimelineItem"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->processTimelineItems(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 236
    :cond_2
    iget-object v0, v6, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 237
    const-string v18, ", Has TimelineItemResponse"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->processTimelineItemReponse(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 241
    :cond_3
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasMotionC2G()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 242
    const-string v18, ", Has MotionEvent"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->eventInjector:Lcom/google/glass/bluetooth/companion/EventInjector;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getMotionC2G()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/glass/bluetooth/companion/EventInjector;->sendMotionEvent(Lcom/google/glass/companion/Proto$MotionEvent;)V

    .line 246
    :cond_4
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 247
    const-string v18, ", Has Location"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->handleLocationEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 251
    :cond_5
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasMessageC2G()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 252
    const-string v18, ", Has message"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getMessageC2G()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->showMessageFromCompanion(Ljava/lang/String;)V

    .line 256
    :cond_6
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasTimezoneC2G()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 257
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getTimezoneC2G()Ljava/lang/String;

    move-result-object v17

    .line 258
    .local v17, "timezone":Ljava/lang/String;
    sget-object v18, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Companion changed timezone: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->timeZoneUtil:Lcom/google/glass/util/TimeZoneUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZoneByCompanion(Ljava/lang/String;)V

    .line 262
    .end local v17    # "timezone":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasNavigationRequestC2G()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 263
    const-string v18, ", Has Navigation Request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->startNavigationFromCompanion(Lcom/google/glass/companion/Proto$NavigationRequest;)V

    .line 267
    :cond_8
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasSetupWifiC2G()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 268
    const-string v18, ", Has SetupWifi Request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getSetupWifiC2G()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->setupGlassWifi(Ljava/lang/String;)V

    .line 272
    :cond_9
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 273
    const-string v18, ", Has companion info Request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->handleCompanionInfoEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 277
    :cond_a
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionDeviceInfoC2G()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 278
    const-string v18, ", Has companion device info"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->handleCompanionDeviceInfoEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 282
    :cond_b
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasScreenshot()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 283
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v13

    .line 284
    .local v13, "screenShot":Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-virtual {v13}, Lcom/google/glass/companion/Proto$ScreenShot;->hasStartScreenshotRequestC2G()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 285
    const-string v18, ", Has start screencast Request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleScreenshotRequest(Z)V

    .line 291
    :cond_c
    invoke-virtual {v13}, Lcom/google/glass/companion/Proto$ScreenShot;->getStopScreenshotRequestC2G()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 292
    const-string v18, ", Has stop screencast Request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleScreenshotRequest(Z)V

    .line 297
    .end local v13    # "screenShot":Lcom/google/glass/companion/Proto$ScreenShot;
    :cond_d
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasCommand()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 298
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getCommand()Lcom/google/glass/companion/Proto$Command;

    move-result-object v4

    .line 299
    .local v4, "command":Lcom/google/glass/companion/Proto$Command;
    const-class v18, Lcom/google/glass/companion/Proto$Command$CommandType;

    iget v0, v4, Lcom/google/glass/companion/Proto$Command;->command:I

    move/from16 v19, v0

    .line 300
    invoke-static/range {v18 .. v19}, Lcom/google/glass/protobuf/ProtoEnumUtils;->getEnumName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, "name":Ljava/lang/String;
    const-string v18, ", Has command [)"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget v0, v4, Lcom/google/glass/companion/Proto$Command;->command:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleCommand(I)V

    .line 305
    .end local v4    # "command":Lcom/google/glass/companion/Proto$Command;
    .end local v11    # "name":Ljava/lang/String;
    :cond_e
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasError()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 306
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getError()Lcom/google/glass/companion/Proto$Error;

    move-result-object v18

    move-object/from16 v0, v18

    iget v7, v0, Lcom/google/glass/companion/Proto$Error;->type:I

    .line 307
    .local v7, "error":I
    const-string v18, ", Has error ["

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleError(I)V

    .line 311
    .end local v7    # "error":I
    :cond_f
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasApiRequestC2G()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 312
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v12

    .line 313
    .local v12, "request":Lcom/google/glass/companion/Proto$ApiRequest;
    const-string v18, ", Has api request of type "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    sget-object v18, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "Companion api is not supported"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .end local v12    # "request":Lcom/google/glass/companion/Proto$ApiRequest;
    :cond_10
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasGlassInfoRequestC2G()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 318
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getGlassInfoRequestC2G()Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleGlassInfo(Lcom/google/glass/companion/Proto$GlassInfoRequest;)V

    .line 319
    const-string v18, ", Has GlassInfo request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_11
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasInputBoxResponseC2G()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 323
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getInputBoxResponseC2G()Lcom/google/glass/companion/Proto$InputBoxResponse;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleInputBoxResponse(Lcom/google/glass/companion/Proto$InputBoxResponse;)V

    .line 324
    const-string v18, ", Has input box Response"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_12
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasOpenEndedInputResponseC2G()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 328
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getOpenEndedInputResponseC2G()Lcom/google/glass/companion/Proto$OpenEndedInputResponse;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleOpenEndedInputResponse(Lcom/google/glass/companion/Proto$OpenEndedInputResponse;)V

    .line 329
    const-string v18, ", Has OpenEndedInputResponse"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_13
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasGlassSetupRequestC2G()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 333
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getGlassSetupRequestC2G()Lcom/google/glass/companion/Proto$GlassSetupRequest;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->setupGlass(Lcom/google/glass/companion/Proto$GlassSetupRequest;)V

    .line 334
    const-string v18, ", Has Glass Setup Request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_14
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionFeatureInfoC2G()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionFeatureInfoC2G()Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->handleCompanionFeatureInfo(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V

    .line 339
    const-string v18, ", Has Companion feature info data"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_15
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasSetWallpaperRequestC2G()Z

    move-result v18

    if-eqz v18, :cond_16

    sget-object v18, Lcom/google/glass/util/Labs$Feature;->WP:Lcom/google/glass/util/Labs$Feature;

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 343
    const-string v18, ", Has Set Wallpaper Request"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getSetWallpaperRequestC2G()Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    move-result-object v14

    .line 345
    .local v14, "setWallpaperRequest":Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;

    move-object/from16 v18, v0

    new-instance v19, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;

    .line 346
    invoke-virtual {v14}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->getId()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/bluetooth/companion/CompanionConnection$WallpaperCallbackWithRequestId;-><init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;ILcom/google/glass/bluetooth/companion/CompanionConnection$1;)V

    invoke-virtual {v14}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->getWallpaper()Lcom/google/glass/companion/Proto$Media;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/companion/Proto$Media;->getBytes()[B

    move-result-object v20

    .line 345
    invoke-virtual/range {v18 .. v20}, Lcom/google/glass/wallpaper/WallpaperHelper;->saveWallpaper(Lcom/google/glass/wallpaper/WallpaperCallback;[B)V

    .line 349
    .end local v14    # "setWallpaperRequest":Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    :cond_16
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasGetWallpaperInfoC2G()Z

    move-result v18

    if-eqz v18, :cond_18

    sget-object v18, Lcom/google/glass/util/Labs$Feature;->WP:Lcom/google/glass/util/Labs$Feature;

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 350
    const-string v18, ", Has Get WallpaperInfo"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getGetWallpaperInfoC2G()Lcom/google/glass/companion/Proto$GetWallpaperInfo;

    move-result-object v8

    .line 352
    .local v8, "getWallpaperInfo":Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.google.glass.action.GET_WALLPAPER_INFO_RECEIVED"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->hasSha1HashCode()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 354
    const-string v18, "sha1_hash_code_key"

    .line 355
    invoke-virtual {v8}, Lcom/google/glass/companion/Proto$GetWallpaperInfo;->getSha1HashCode()[B

    move-result-object v19

    .line 354
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 357
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;->socketServer:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    .end local v8    # "getWallpaperInfo":Lcom/google/glass/companion/Proto$GetWallpaperInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_18
    sget-object v18, Lcom/google/glass/util/Labs$Feature;->MMS:Lcom/google/glass/util/Labs$Feature;

    invoke-static/range {v18 .. v18}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasMultimediaMessage()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 361
    const-string v18, ", Has MMS"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 363
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v18

    new-instance v19, Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;

    .line 364
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getMultimediaMessage()Lcom/google/glass/companion/Proto$MultimediaMessage;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/glass/bluetooth/companion/CompanionConnection$MultimediaMessageRunnable;-><init>(Lcom/google/glass/bluetooth/companion/CompanionConnection;Lcom/google/glass/companion/Proto$MultimediaMessage;)V

    .line 363
    invoke-interface/range {v18 .. v19}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 367
    :cond_19
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->hasNotificationC2G()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 368
    invoke-virtual {v6}, Lcom/google/glass/companion/Proto$Envelope;->getNotificationC2G()Lcom/google/glass/companion/Proto$Notification;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handleNotificationsList(Lcom/google/glass/companion/Proto$Notification;)V

    .line 369
    const-string v18, ", Has Notification"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1a
    sget-object v18, Lcom/google/glass/bluetooth/companion/CompanionConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    invoke-interface/range {v18 .. v20}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
