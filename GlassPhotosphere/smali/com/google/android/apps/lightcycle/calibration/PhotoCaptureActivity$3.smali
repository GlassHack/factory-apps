.class Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;
.super Ljava/lang/Object;
.source "PhotoCaptureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 100
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->access$100(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->access$100(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;

    .line 107
    .local v1, "resolution":Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->access$000(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 108
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    iget v2, v1, Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;->width:I

    iget v3, v1, Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 109
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->access$000(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 110
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity$3;->this$0:Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;

    invoke-static {v2, p3}, Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;->access$202(Lcom/google/android/apps/lightcycle/calibration/PhotoCaptureActivity;I)I

    .line 112
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    .end local v1    # "resolution":Lcom/google/android/apps/lightcycle/calibration/SelectableResolution;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
