.class Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;
.super Ljava/lang/Object;
.source "PanoramaCaptureActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->onDoneButtonPressed(Lcom/google/android/apps/lightcycle/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

.field final synthetic val$stitchingStartedCallback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->val$stitchingStartedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 414
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 419
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->access$100(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    .line 421
    .local v0, "previewFile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating preview stitch into file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 422
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PreviewStitch(Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "image/jpeg"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 431
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 438
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->val$stitchingStartedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->val$stitchingStartedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v1, v6}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 441
    :cond_0
    return-void
.end method
