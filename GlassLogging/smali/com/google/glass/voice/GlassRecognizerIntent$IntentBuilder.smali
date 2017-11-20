.class public Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
.super Ljava/lang/Object;
.source "GlassRecognizerIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/GlassRecognizerIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private allowScreenOff:Z

.field private config:Lcom/google/glass/voice/VoiceConfig;

.field private forcedTimeoutMs:Ljava/lang/Long;

.field private inputType:I

.field private isEmbeddedRecognition:Ljava/lang/Boolean;

.field private final listenerTag:Ljava/lang/String;

.field private localeBcp47:Ljava/lang/String;

.field private noSpeechDetectedTimeoutMs:Ljava/lang/Integer;

.field private partialResults:Ljava/lang/Boolean;

.field private phrases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private speechInputCompleteSilenceLengthMs:Ljava/lang/Integer;

.field private voiceCommands:[Ljava/lang/String;

.field private wantAudioData:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "listenerTag"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->listenerTag:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "voiceConfig"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    const-string v1, "listenerTag"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->speechInputCompleteSilenceLengthMs:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    const-string v1, "noSpeechDetectedTimeoutMs"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->noSpeechDetectedTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 77
    const-string v1, "forcedTimeoutMs"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->forcedTimeoutMs:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    const-string v1, "android.speech.extra.LANGUAGE"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->localeBcp47:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "embeddedRecognition"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->isEmbeddedRecognition:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    const-string v1, "wantAudioData"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->wantAudioData:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    const-string v1, "extraVoiceCommands"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->voiceCommands:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->partialResults:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    const-string v1, "allowScreenOff"

    iget-boolean v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->allowScreenOff:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string v1, "inputType"

    iget v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->inputType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "phrases"

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method public forcedTimeoutMs(J)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 1
    .param p1, "timeoutMs"    # J

    .prologue
    .line 120
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->forcedTimeoutMs:Ljava/lang/Long;

    .line 121
    return-object p0
.end method

.method public isEmbeddedRecognition(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 1
    .param p1, "isEmbedded"    # Z

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->isEmbeddedRecognition:Ljava/lang/Boolean;

    .line 129
    return-object p0
.end method

.method public localeBcp47(Ljava/lang/String;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 0
    .param p1, "localeBcp47"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->localeBcp47:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public noSpeechDetectedTimeoutMs(I)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 1
    .param p1, "timeoutMs"    # I

    .prologue
    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->noSpeechDetectedTimeoutMs:Ljava/lang/Integer;

    .line 112
    return-object p0
.end method

.method public partialResults(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 1
    .param p1, "partialResults"    # Z

    .prologue
    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->partialResults:Ljava/lang/Boolean;

    .line 161
    return-object p0
.end method

.method public setAllowScreenOff(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 0
    .param p1, "screenOff"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->allowScreenOff:Z

    .line 167
    return-object p0
.end method

.method public setInputType(I)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 0
    .param p1, "inputType"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->inputType:I

    .line 173
    return-object p0
.end method

.method public setPhrases(Ljava/util/ArrayList;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "phrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->phrases:Ljava/util/ArrayList;

    .line 179
    return-object p0
.end method

.method public setWantAudioData(Z)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 1
    .param p1, "wantAudioData"    # Z

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->wantAudioData:Ljava/lang/Boolean;

    .line 137
    return-object p0
.end method

.method public speechInputCompleteSilenceLengthMs(I)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 1
    .param p1, "silenceMs"    # I

    .prologue
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->speechInputCompleteSilenceLengthMs:Ljava/lang/Integer;

    .line 104
    return-object p0
.end method

.method public voiceCommands([Ljava/lang/String;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 0
    .param p1, "commands"    # [Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->voiceCommands:[Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public voiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;
    .locals 0
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->config:Lcom/google/glass/voice/VoiceConfig;

    .line 95
    return-object p0
.end method
