.class Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;
.super Lcom/google/glass/camera/CameraListener;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/barcode/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarcodeCameraListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/barcode/BarcodeScanner;


# direct methods
.method private constructor <init>(Lcom/google/glass/barcode/BarcodeScanner;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-direct {p0}, Lcom/google/glass/camera/CameraListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/barcode/BarcodeScanner;Lcom/google/glass/barcode/BarcodeScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/barcode/BarcodeScanner;
    .param p2, "x1"    # Lcom/google/glass/barcode/BarcodeScanner$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;-><init>(Lcom/google/glass/barcode/BarcodeScanner;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v0}, Lcom/google/glass/barcode/BarcodeScanner;->access$700(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    move-result-object v0

    sget-object v1, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->CAMERA:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    invoke-interface {v0, v1}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;->onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V

    .line 137
    return-void
.end method

.method public onPreviewFrame([BJ)V
    .locals 5
    .param p1, "frame"    # [B
    .param p2, "captureTimeNanos"    # J

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$100(Lcom/google/glass/barcode/BarcodeScanner;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$200(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/camera/CameraClientV1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/camera/CameraClientV1;->recyclePreviewFrame([B)V

    .line 132
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$300(Lcom/google/glass/barcode/BarcodeScanner;)I

    move-result v1

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1, p2, p3}, Lcom/google/glass/barcode/BarcodeScanner;->access$402(Lcom/google/glass/barcode/BarcodeScanner;J)J

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$308(Lcom/google/glass/barcode/BarcodeScanner;)I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v2}, Lcom/google/glass/barcode/BarcodeScanner;->access$500(Lcom/google/glass/barcode/BarcodeScanner;)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$200(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/camera/CameraClientV1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/camera/CameraClientV1;->recyclePreviewFrame([B)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$400(Lcom/google/glass/barcode/BarcodeScanner;)J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-object v3, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v3}, Lcom/google/glass/barcode/BarcodeScanner;->access$600(Lcom/google/glass/barcode/BarcodeScanner;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$700(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    move-result-object v1

    sget-object v2, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->TIMEOUT:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    invoke-interface {v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;->onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V

    .line 96
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$200(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/camera/CameraClientV1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/camera/CameraClientV1;->recyclePreviewFrame([B)V

    goto :goto_0

    .line 102
    :cond_3
    sget-object v0, Lcom/google/glass/camera/CameraUtils;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 103
    .local v0, "previewSize":Lcom/google/glass/camera/Size;
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/barcode/BarcodeScanner;->access$102(Lcom/google/glass/barcode/BarcodeScanner;Z)Z

    .line 105
    new-instance v2, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener$1;-><init>(Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener;[BLcom/google/glass/camera/Size;)V

    .line 131
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 130
    invoke-virtual {v2, v1, v3}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeCameraListener$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
