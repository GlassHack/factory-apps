.class public Lcom/google/glass/setup/BarcodeScanActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BarcodeScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/BarcodeScanActivity$2;
    }
.end annotation


# static fields
.field private static final BARCODE_SCAN_TIMEOUT_NANOS:J

.field private static final CAMERA_FRAME_MODULUS:I = 0x4

.field public static final EXTRA_ERROR:Ljava/lang/String; = "return_error"

.field public static final EXTRA_ERROR_SECONDARY:Ljava/lang/String; = "return_error_secondary"


# instance fields
.field private barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/setup/BarcodeScanActivity;->BARCODE_SCAN_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/BarcodeScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/setup/BarcodeScanActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/setup/BarcodeScanActivity;Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/BarcodeScanActivity;
    .param p1, "x1"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/setup/BarcodeScanActivity;->handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method private handleBarcode(Lcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 10
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    const/16 v7, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    iget-object v0, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    .line 112
    .local v0, "barcodeValue":Ljava/lang/String;
    iget v6, p1, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    if-eq v6, v7, :cond_1

    .line 113
    iget-object v6, p0, Lcom/google/glass/setup/BarcodeScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Not a QR code. Format: %s,  Value: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p1, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object v0, v8, v5

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_0
    :goto_0
    return v4

    .line 117
    :cond_1
    iget v6, p1, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    if-ne v6, v7, :cond_2

    .line 118
    iget-object v6, p0, Lcom/google/glass/setup/BarcodeScanActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Attempted to setup device from a wifi barcode."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/setup/BarcodeScanActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v6

    sget-object v7, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v6, v7}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 120
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v2, "errorIntent":Landroid/content/Intent;
    const-string v6, "return_error"

    sget v7, Lcom/google/glass/setup/R$string;->unexpected_wifi_barcode:I

    invoke-virtual {p0, v7}, Lcom/google/glass/setup/BarcodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v6, "return_error_secondary"

    sget v7, Lcom/google/glass/setup/R$string;->unexpected_wifi_barcode_secondary:I

    .line 123
    invoke-virtual {p0, v7}, Lcom/google/glass/setup/BarcodeScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v4, v2}, Lcom/google/glass/setup/BarcodeScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/setup/BarcodeScanActivity;->finish()V

    move v4, v5

    .line 126
    goto :goto_0

    .line 129
    .end local v2    # "errorIntent":Landroid/content/Intent;
    :cond_2
    invoke-static {v0}, Lcom/google/glass/util/SetupHelper;->parseBarcodeValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 130
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/glass/setup/BarcodeScanActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v6}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 132
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v3, "returnIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/google/glass/setup/BarcodeScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v4, p0, Lcom/google/glass/setup/BarcodeScanActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->SETUP_BARCODE_SCANNED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v4, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/setup/BarcodeScanActivity;->finish()V

    move v4, v5

    .line 137
    goto :goto_0
.end method


# virtual methods
.method getBarcodeScannerForTest()Lcom/google/glass/barcode/BarcodeScanner;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/setup/BarcodeScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    return-object v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/google/glass/barcode/BarcodeScanner;->newBuilder()Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->withCameraFrameModulus(I)Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v0

    sget-wide v1, Lcom/google/glass/setup/BarcodeScanActivity;->BARCODE_SCAN_TIMEOUT_NANOS:J

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->withScanTimeoutNanos(J)Lcom/google/glass/barcode/BarcodeScanner$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/setup/BarcodeScanActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/setup/BarcodeScanActivity$1;-><init>(Lcom/google/glass/setup/BarcodeScanActivity;)V

    iget-object v2, p0, Lcom/google/glass/setup/BarcodeScanActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 84
    invoke-static {}, Lcom/google/glass/camera/CameraManagerProvider;->getInstance()Lcom/google/glass/camera/CameraManagerProvider;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/camera/CameraManagerProvider;->from(Landroid/content/Context;)Lcom/google/android/glass/media/CameraManager;

    move-result-object v3

    .line 58
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/glass/barcode/BarcodeScanner$Builder;->build(Landroid/content/Context;Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;)Lcom/google/glass/barcode/BarcodeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/BarcodeScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    .line 85
    iget-object v1, p0, Lcom/google/glass/setup/BarcodeScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    sget v0, Lcom/google/glass/setup/R$id;->viewfinder:I

    invoke-virtual {p0, v0}, Lcom/google/glass/setup/BarcodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/google/glass/barcode/BarcodeScanner;->setViewfinder(Landroid/view/TextureView;)V

    .line 86
    return-void
.end method

.method protected onPauseInternal()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/setup/BarcodeScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning()V

    .line 102
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 103
    return-void
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 96
    iget-object v0, p0, Lcom/google/glass/setup/BarcodeScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeScanner;->startScanning()V

    .line 97
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lcom/google/glass/setup/R$layout;->qr_scan:I

    return v0
.end method

.method setBarcodeScannerForTest(Lcom/google/glass/barcode/BarcodeScanner;)V
    .locals 0
    .param p1, "barcodeScanner"    # Lcom/google/glass/barcode/BarcodeScanner;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/setup/BarcodeScanActivity;->barcodeScanner:Lcom/google/glass/barcode/BarcodeScanner;

    .line 151
    return-void
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
