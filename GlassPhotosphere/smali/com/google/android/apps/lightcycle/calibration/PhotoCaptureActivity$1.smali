.class Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$1;
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
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$1;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$1;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$1;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    const-class v3, Lcom/google/android/apps/lightcycle/calibration/CalibrationPreferenceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
