.class Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;
.super Ljava/lang/Object;
.source "LookAtScreenCalibrationActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->createTtsInitListener()Landroid/speech/tts/TextToSpeech$OnInitListener;
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
    .line 364
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const-wide/16 v2, 0x5dc

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 376
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->access$200(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "TextToSpeech failed to initialize."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->access$300(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    .line 381
    :goto_0
    return-void

    .line 369
    :pswitch_0
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    iget-object v1, v1, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->firstLookAtScreenState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    iget-object v1, v1, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->firstLookAtScreenState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
