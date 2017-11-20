.class Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$1;
.super Ljava/lang/Object;
.source "DetermineFovActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$1;->this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$1;->this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->access$000(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;)V

    .line 82
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$1;->this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->access$000(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;)V

    .line 76
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 71
    return-void
.end method
