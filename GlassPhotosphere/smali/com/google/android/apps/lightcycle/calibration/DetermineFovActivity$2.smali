.class Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$2;
.super Ljava/lang/Object;
.source "DetermineFovActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$2;->this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$2;->this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$2;->this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    invoke-static {v1, p2}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->access$200(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->access$102(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;F)F

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity$2;->this$0:Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;->access$000(Lcom/google/android/apps/lightcycle/calibration/DetermineFovActivity;)V

    .line 99
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 92
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 89
    return-void
.end method
