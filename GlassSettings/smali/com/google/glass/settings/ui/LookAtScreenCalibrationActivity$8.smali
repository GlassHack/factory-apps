.class Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "LookAtScreenCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->createTtsCompleteListener()Landroid/speech/tts/UtteranceProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$1;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$2;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 422
    return-void
.end method
