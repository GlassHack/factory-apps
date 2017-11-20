.class public Lcom/google/glass/barcode/BarcodeScanner$Builder;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/barcode/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final cameraFrameModulus:I

.field private final scanTimeoutNanos:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0
    .param p1, "cameraFrameModulus"    # I
    .param p2, "scanTimeoutNanos"    # J

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    .line 255
    iput-wide p2, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    .line 256
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;)Lcom/google/glass/barcode/BarcodeScanner;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p4, "cameraManager"    # Lcom/google/android/glass/media/CameraManager;

    .prologue
    .line 268
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner;

    iget v2, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    iget-wide v3, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    const/4 v8, 0x0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/barcode/BarcodeScanner;-><init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/barcode/BarcodeScanner$1;)V

    return-object v0
.end method

.method public withCameraFrameModulus(I)Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 3
    .param p1, "cameraFrameModulus"    # I

    .prologue
    .line 259
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    iget-wide v1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method

.method public withScanTimeoutNanos(J)Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 2
    .param p1, "scanTimeoutNanos"    # J

    .prologue
    .line 263
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    iget v1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    invoke-direct {v0, v1, p1, p2}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method
