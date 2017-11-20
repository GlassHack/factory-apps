.class Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$2;
.super Ljava/lang/Object;
.source "PhotoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$2;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$2;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->access$000(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$2;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 96
    return-void
.end method
