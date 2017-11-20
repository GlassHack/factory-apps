.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$7;
.super Ljava/lang/Object;
.source "WinkCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startBackgroundVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$7;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$7;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 380
    return-void
.end method
