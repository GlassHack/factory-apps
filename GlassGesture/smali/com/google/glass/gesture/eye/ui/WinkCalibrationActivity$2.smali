.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$2;
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
    .line 242
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$2;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$2;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    sget v1, Lcom/google/glass/gesture/R$string;->wink_calibration_timeout_failure:I

    invoke-static {v0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$1600(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;I)V

    .line 246
    return-void
.end method
