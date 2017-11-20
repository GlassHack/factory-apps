.class public Lcom/google/glass/barcode/BarcodeScanner;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/barcode/BarcodeScanner$1;,
        Lcom/google/glass/barcode/BarcodeScanner$Builder;,
        Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;,
        Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;,
        Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;
    }
.end annotation


# instance fields
.field private barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

.field private final cameraClient:Lcom/google/glass/camera/CameraClientV1;

.field private final cameraFrameModulus:I

.field final cameraListener:Lcom/google/glass/camera/CameraListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private firstPreviewFrameTimeNanos:J

.field private final listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private previewFrameCount:I

.field private final scanTimeoutNanos:J

.field private scanning:Z

.field private shouldIgnorePreviewFrames:Z

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraFrameModulus"    # I
    .param p3, "scanTimeoutNanos"    # J
    .param p5, "listener"    # Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p7, "cameraManager"    # Lcom/google/android/glass/media/CameraManager;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 72
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;-><init>(Lcom/google/glass/barcode/BarcodeScanner;Lcom/google/glass/barcode/BarcodeScanner$1;)V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraListener:Lcom/google/glass/camera/CameraListener;

    .line 155
    iput p2, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraFrameModulus:I

    .line 156
    iput-wide p3, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanTimeoutNanos:J

    .line 157
    iput-object p5, p0, Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    .line 158
    iput-object p6, p0, Lcom/google/glass/barcode/BarcodeScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 159
    new-instance v0, Lcom/google/glass/camera/CameraClientV1;

    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraListener:Lcom/google/glass/camera/CameraListener;

    invoke-direct {v0, p1, p7, v1, p6}, Lcom/google/glass/camera/CameraClientV1;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/barcode/BarcodeScanner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .param p6, "x4"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p7, "x5"    # Lcom/google/android/glass/media/CameraManager;
    .param p8, "x6"    # Lcom/google/glass/barcode/BarcodeScanner$1;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/google/glass/barcode/BarcodeScanner;-><init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/barcode/BarcodeScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/barcode/BarcodeScanner;ZLcom/google/android/libraries/barhopper/Barcode;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/barcode/BarcodeScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/camera/CameraClientV1;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/barcode/BarcodeScanner;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/glass/barcode/BarcodeScanner;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraFrameModulus:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/barcode/BarcodeScanner;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanTimeoutNanos:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getMillisSinceFirstPreview()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 225
    iget-wide v2, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 229
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p2, "eventData"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private logFailure()V
    .locals 6

    .prologue
    .line 206
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "m"

    .line 207
    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->getMillisSinceFirstPreview()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "f"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 206
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private logSuccess(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 8
    .param p1, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    .line 216
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "m"

    .line 218
    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->getMillisSinceFirstPreview()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "f"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "s"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    .line 220
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "b"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 221
    invoke-virtual {p1}, Lcom/google/android/libraries/barhopper/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 217
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 4

    .prologue
    .line 278
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    const/4 v1, 0x1

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method

.method private stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V
    .locals 4
    .param p1, "successfulScan"    # Z
    .param p2, "barcode"    # Lcom/google/android/libraries/barhopper/Barcode;

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    if-eqz v0, :cond_1

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0, p2}, Lcom/google/glass/barcode/BarcodeScanner;->logSuccess(Lcom/google/android/libraries/barhopper/Barcode;)V

    .line 200
    :goto_0
    iput-boolean v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    .line 202
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->stopPreview()V

    .line 203
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->logFailure()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Duplicate stopScanning calls."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getListenerForTest()Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 284
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    return-object v0
.end method

.method public setViewfinder(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "viewfinder"    # Landroid/view/TextureView;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/CameraClientV1;->setViewfinder(Landroid/view/TextureView;)V

    .line 164
    return-void
.end method

.method public startScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Duplicate startScanning calls."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    .line 174
    invoke-static {}, Lcom/google/glass/barcode/BarcodeRecognizerProvider;->getInstance()Lcom/google/glass/barcode/BarcodeRecognizerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/barcode/BarcodeRecognizerProvider;->get()Lcom/google/glass/barcode/BarcodeRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    .line 177
    iput v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    .line 179
    iput-boolean v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    .line 182
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->startPreview()V

    .line 183
    return-void
.end method

.method public stopScanning()V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V

    .line 187
    return-void
.end method
