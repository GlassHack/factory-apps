.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "LookAtScreenPracticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->createTtsCompleteListener()Landroid/speech/tts/UtteranceProgressListener;
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
    .line 397
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$1;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11$2;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 412
    return-void
.end method
