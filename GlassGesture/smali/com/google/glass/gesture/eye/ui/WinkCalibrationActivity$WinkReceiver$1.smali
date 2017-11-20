.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;
.super Ljava/lang/Object;
.source "WinkCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    iget-object v1, v1, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-virtual {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    iget-object v2, v2, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    iget-object v3, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    iget-object v3, v3, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .line 135
    invoke-virtual {v3}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/gesture/R$string;->wink_calibration_success:I

    .line 136
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/gesture/R$drawable;->ic_done_50:I

    .line 137
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1$1;

    invoke-direct {v2, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1$1;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;)V

    .line 138
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 146
    .local v0, "dialog":Lcom/google/glass/widget/MessageDialog;
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    iget-object v1, v1, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    goto :goto_0
.end method
