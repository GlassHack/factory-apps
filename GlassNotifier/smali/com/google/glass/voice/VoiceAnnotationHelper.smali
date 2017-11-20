.class public Lcom/google/glass/voice/VoiceAnnotationHelper;
.super Ljava/lang/Object;
.source "VoiceAnnotationHelper.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public getAnnotationIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "with_audio_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    return-object v0
.end method

.method public getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 64
    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    .line 65
    sget-object v2, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Response was not OK, means transcription failed or was cancelled."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-object v1

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    sget-object v2, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Data intent was null."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    sget-object v2, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Results are empty."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAudioData(ILandroid/content/Intent;)[B
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 84
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 85
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Response was not OK, means transcription failed or was cancelled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-object v0

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Data intent was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "audio_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public startAnnotationForResult(IZLjava/lang/String;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "wantAudioData"    # Z
    .param p3, "promptMsg"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 47
    .local v2, "triggerTimeMillis":J
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "trigger_time"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    const-string v1, "trigger_method"

    const/16 v4, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "with_audio_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const-string v1, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v4, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    invoke-virtual {v1, v4, v0, p1}, Lcom/google/glass/util/IntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 55
    return-void
.end method
