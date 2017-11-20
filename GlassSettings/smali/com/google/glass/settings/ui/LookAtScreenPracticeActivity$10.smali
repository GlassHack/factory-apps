.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$10;
.super Ljava/lang/Object;
.source "LookAtScreenPracticeActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->createTtsInitListener()Landroid/speech/tts/TextToSpeech$OnInitListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$10;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const-wide/16 v2, 0xfa

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 377
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$10;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$700(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to initialize tts listener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :goto_0
    return-void

    .line 370
    :pswitch_0
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$10;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$600(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$10;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$600(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
