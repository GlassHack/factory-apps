.class public Lcom/google/glass/voice/GlassRecognitionService;
.super Landroid/speech/RecognitionService;
.source "GlassRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/GlassRecognitionService$6;
    }
.end annotation


# static fields
.field private static final LISTENER_TAG:Ljava/lang/String; = "GlassRecognitionService"

.field private static final MSG_UPDATE_RMS:I = 0x0

.field private static final RMS_REPORT_INTERVAL_MS:J = 0x32L


# instance fields
.field private enableOpenEndedInputEvents:Z

.field private enablePartialResults:Z

.field private final handler:Landroid/os/Handler;

.field private isListening:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private recognitionListenerCallback:Landroid/speech/RecognitionService$Callback;

.field voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener$Stub;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/speech/RecognitionService;-><init>()V

    .line 31
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 61
    new-instance v0, Lcom/google/glass/voice/GlassRecognitionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/GlassRecognitionService$1;-><init>(Lcom/google/glass/voice/GlassRecognitionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->handler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/google/glass/voice/GlassRecognitionService$2;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.glass.voice"

    const-string v3, "com.google.glass.voice.VoiceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/GlassRecognitionService$2;-><init>(Lcom/google/glass/voice/GlassRecognitionService;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 116
    new-instance v0, Lcom/google/glass/voice/GlassRecognitionService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/GlassRecognitionService$3;-><init>(Lcom/google/glass/voice/GlassRecognitionService;)V

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;

    .line 128
    new-instance v0, Lcom/google/glass/voice/GlassRecognitionService$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/GlassRecognitionService$4;-><init>(Lcom/google/glass/voice/GlassRecognitionService;)V

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/GlassRecognitionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/GlassRecognitionService;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->isListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/GlassRecognitionService;)Landroid/speech/RecognitionService$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/GlassRecognitionService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->recognitionListenerCallback:Landroid/speech/RecognitionService$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/GlassRecognitionService;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/GlassRecognitionService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/glass/voice/GlassRecognitionService;->captureResults([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private attachCallback(Landroid/content/Intent;)V
    .locals 8
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 292
    iget-object v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-nez v4, :cond_0

    .line 293
    iget-object v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "attachCallback: voiceServiceBinder is null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :goto_0
    return-void

    .line 297
    :cond_0
    if-nez p1, :cond_1

    .line 298
    iget-object v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No recognizer intent given, falling back to empty intent."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "recognizerIntent":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 302
    .restart local p1    # "recognizerIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassRecognitionService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 305
    :try_start_0
    const-string v4, "listenerTag"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 306
    const-string v4, "listenerTag"

    iget-object v5, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener$Stub;

    .line 307
    invoke-virtual {v5}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 306
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    :cond_2
    const-string v4, "extraVoiceCommands"

    .line 311
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 312
    .local v2, "voiceCommandsProvided":Z
    const-string/jumbo v4, "voiceConfig"

    .line 313
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    .line 314
    .local v3, "voiceConfigProvided":Z
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 316
    const-string v4, "embeddedRecognition"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 318
    .local v1, "embeddedRequested":Z
    const-string/jumbo v5, "voiceConfig"

    if-eqz v1, :cond_4

    sget-object v4, Lcom/google/glass/voice/OpenEndedMode;->EMBEDDED_ONLY:Lcom/google/glass/voice/OpenEndedMode;

    .line 319
    :goto_1
    invoke-static {v4}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    .line 318
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 323
    .end local v1    # "embeddedRequested":Z
    :cond_3
    const-string v4, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v5, 0x0

    .line 324
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->enablePartialResults:Z

    .line 325
    const-string v4, "enableOpenEndedInputEvents"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->enableOpenEndedInputEvents:Z

    .line 328
    iget-object v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v4, p1}, Lcom/google/glass/voice/IVoiceService;->startListening(Landroid/content/Intent;)V

    .line 329
    iget-object v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v5, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;

    invoke-interface {v4, v5}, Lcom/google/glass/voice/IVoiceService;->addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 330
    iget-object v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v5, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener$Stub;

    invoke-interface {v4, v5}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v2    # "voiceCommandsProvided":Z
    .end local v3    # "voiceConfigProvided":Z
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "RemoteException!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "embeddedRequested":Z
    .restart local v2    # "voiceCommandsProvided":Z
    .restart local v3    # "voiceConfigProvided":Z
    :cond_4
    :try_start_1
    sget-object v4, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static varargs captureResults([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "results"    # [Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "results_recognition"

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 288
    return-object v0
.end method

.method private detachCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "detachCallback: voiceServiceBinder is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :goto_0
    return-void

    .line 343
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback$Stub;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 344
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    const-string v2, "GlassRecognitionService"

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->stopListening(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener$Stub;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "RemoteException!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/speech/RecognitionService;->attachBaseContext(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method deliverEvent(Landroid/speech/RecognitionService$Callback;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 7
    .param p1, "callback"    # Landroid/speech/RecognitionService$Callback;
    .param p2, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    iget-boolean v3, p0, Lcom/google/glass/voice/GlassRecognitionService;->enableOpenEndedInputEvents:Z

    if-eqz v3, :cond_1

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "openEndedInputEvent"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    invoke-virtual {p1, v0}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V

    .line 227
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 188
    :cond_1
    sget-object v3, Lcom/google/glass/voice/GlassRecognitionService$6;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_1
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/speech/RecognitionService$Callback;->readyForSpeech(Landroid/os/Bundle;)V

    goto :goto_0

    .line 203
    :pswitch_3
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Landroid/speech/RecognitionService$Callback;->error(I)V

    goto :goto_0

    .line 206
    :pswitch_4
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {p2, v4}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/google/glass/voice/GlassRecognitionService;->captureResults([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 207
    .local v2, "results":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p1, v2}, Landroid/speech/RecognitionService$Callback;->results(Landroid/os/Bundle;)V

    goto :goto_0

    .line 211
    .end local v2    # "results":Landroid/os/Bundle;
    :pswitch_5
    iget-boolean v3, p0, Lcom/google/glass/voice/GlassRecognitionService;->enablePartialResults:Z

    if-eqz v3, :cond_0

    .line 212
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "stableText"

    .line 213
    invoke-virtual {p2, v4}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/google/glass/voice/GlassRecognitionService;->captureResults([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 214
    .local v1, "partialResults":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p1, v1}, Landroid/speech/RecognitionService$Callback;->partialResults(Landroid/os/Bundle;)V

    goto :goto_0

    .line 219
    .end local v1    # "partialResults":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p1}, Landroid/speech/RecognitionService$Callback;->endOfSpeech()V

    goto :goto_0

    .line 222
    :pswitch_7
    invoke-virtual {p1}, Landroid/speech/RecognitionService$Callback;->beginningOfSpeech()V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCancel(Landroid/speech/RecognitionService$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/speech/RecognitionService$Callback;

    .prologue
    const/4 v2, 0x0

    .line 278
    iput-boolean v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->isListening:Z

    .line 279
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCancel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->recognitionListenerCallback:Landroid/speech/RecognitionService$Callback;

    .line 282
    invoke-direct {p0}, Lcom/google/glass/voice/GlassRecognitionService;->detachCallback()V

    .line 283
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/speech/RecognitionService;->onCreate()V

    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 166
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iput-boolean v3, p0, Lcom/google/glass/voice/GlassRecognitionService;->isListening:Z

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->recognitionListenerCallback:Landroid/speech/RecognitionService$Callback;

    .line 173
    invoke-direct {p0}, Lcom/google/glass/voice/GlassRecognitionService;->detachCallback()V

    .line 174
    iget-object v0, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 176
    invoke-super {p0}, Landroid/speech/RecognitionService;->onDestroy()V

    .line 177
    return-void
.end method

.method protected onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .locals 6
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroid/speech/RecognitionService$Callback;

    .prologue
    const/4 v5, 0x0

    .line 231
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onStartListening: voiceServiceBinder is null.  Queueing recognizer intent."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    new-instance v3, Lcom/google/glass/voice/GlassRecognitionService$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/glass/voice/GlassRecognitionService$5;-><init>(Lcom/google/glass/voice/GlassRecognitionService;Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/util/SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 256
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onStartListening"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->isListening:Z

    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    const-string v3, "GlassRecognitionService"

    invoke-interface {v2, v3}, Lcom/google/glass/voice/IVoiceService;->stopListening(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_1
    iput-object p2, p0, Lcom/google/glass/voice/GlassRecognitionService;->recognitionListenerCallback:Landroid/speech/RecognitionService$Callback;

    .line 251
    invoke-direct {p0, p1}, Lcom/google/glass/voice/GlassRecognitionService;->attachCallback(Landroid/content/Intent;)V

    .line 253
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->handler:Landroid/os/Handler;

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 255
    .local v1, "scheduledMessage":Landroid/os/Message;
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 246
    .end local v1    # "scheduledMessage":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "RemoteException!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onStopListening(Landroid/speech/RecognitionService$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/speech/RecognitionService$Callback;

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStopListening: voiceServiceBinder is null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :goto_0
    return-void

    .line 265
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/voice/GlassRecognitionService;->isListening:Z

    .line 266
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1}, Lcom/google/glass/voice/IVoiceService;->endpointNetworkRecognizer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/voice/GlassRecognitionService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "RemoteException!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
