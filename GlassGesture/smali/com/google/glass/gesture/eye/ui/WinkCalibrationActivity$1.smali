.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;
.super Ljava/lang/Object;
.source "WinkCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
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
    .line 233
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1800(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    .line 237
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1400(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1900(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2000()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void
.end method
