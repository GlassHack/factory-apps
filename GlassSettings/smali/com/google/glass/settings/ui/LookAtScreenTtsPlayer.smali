.class public Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;
.super Ljava/lang/Object;
.source "LookAtScreenTtsPlayer.java"


# instance fields
.field private context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private ttsModule:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initListener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "completeListener"    # Landroid/speech/tts/UtteranceProgressListener;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    .line 30
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 31
    return-void
.end method


# virtual methods
.method public speak(Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;)V
    .locals 5
    .param p1, "instruction"    # Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    .prologue
    const/4 v4, 0x0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    invoke-virtual {p1}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->context:Landroid/content/Context;

    iget v3, p1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->spokenStringResource:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "ttsModule is a null pointer. Why call it to speak?"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 50
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->ttsModule:Landroid/speech/tts/TextToSpeech;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "ttsModule is a null pointer. Why call it to stop?"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
