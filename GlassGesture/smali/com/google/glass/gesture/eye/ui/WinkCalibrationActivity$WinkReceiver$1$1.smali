.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WinkCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;


# direct methods
.method constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1$1;->this$2:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1$1;->this$2:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;

    iget-object v0, v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    iget-object v0, v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-virtual {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->finish()V

    .line 143
    return-void
.end method
