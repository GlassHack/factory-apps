.class Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
.super Lcom/google/glass/voice/IVoiceService$Stub;
.source "VoiceService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceServiceBinder"
.end annotation


# instance fields
.field private final lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/voice/VoiceService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceService;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceService$Stub;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 224
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    check-cast p1, Ljava/lang/String;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    .end local p1    # "target":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private getNeverMindVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .param p1, "originalConfig"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v3, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Ok glass config; not adding never mind"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .end local p1    # "originalConfig":Lcom/google/glass/voice/VoiceConfig;
    :goto_0
    return-object p1

    .line 182
    .restart local p1    # "originalConfig":Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Adding never mind"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceConfig;-><init>(Lcom/google/glass/voice/VoiceConfig;)V

    .line 184
    .local v0, "neverMindConfig":Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "originalConfigPhrases":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 189
    .local v1, "neverMindConfigPhrases":[Ljava/lang/String;
    array-length v3, v2

    iget-object v4, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    .line 190
    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$string;->voice_label_never_mind:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setCustomPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-object p1, v0

    .line 192
    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/glass/voice/IVoiceServiceListener;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->register(Landroid/os/IInterface;)Z

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lcom/google/glass/voice/IVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to update listener tag."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .param p1, "voiceInputCallback"    # Lcom/google/glass/voice/network/IVoiceInputCallback;

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->register(Landroid/os/IInterface;)Z

    .line 200
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->endpointNetworkRecognizer()V

    .line 212
    return-void
.end method

.method public getSpeechLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->getSpeechLevelSource()Lcom/google/glass/voice/network/SpeechLevelSource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->getSpeechLevelSource()Lcom/google/glass/voice/network/SpeechLevelSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/network/SpeechLevelSource;->getSpeechLevel()I

    move-result v0

    goto :goto_0
.end method

.method public loadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .param p1, "configToLoad"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->loadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 155
    return-void
.end method

.method public reloadConfig(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .param p1, "configToLoad"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "configToUnload"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->loadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 160
    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 163
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/voice/IVoiceServiceListener;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceService;->access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->unregister(Landroid/os/IInterface;)Z

    .line 99
    return-void
.end method

.method public removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .param p1, "voiceInputCallback"    # Lcom/google/glass/voice/network/IVoiceInputCallback;

    .prologue
    .line 204
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->unregister(Landroid/os/IInterface;)Z

    .line 207
    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .locals 9
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 103
    const-string v4, "RecognizerIntent is null."

    invoke-static {v4, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "#startListening. RecognizerIntent=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 107
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "RecognizerIntent.extras cannot be null"

    invoke-static {v4, v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-class v4, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 110
    const-string v4, "listenerTag"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "listenerTag":Ljava/lang/String;
    const-string v4, "listenerTag cannot be null"

    invoke-direct {p0, v2, v4}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v4, "voiceConfig"

    .line 114
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 116
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4, v0}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "setting voiceconfig to OFF in startListening. Ignore."

    invoke-static {v4, v5}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 123
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->VMNM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    new-instance v4, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    invoke-direct {v4, v2}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->getNeverMindVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->voiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/GlassRecognizerIntent$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v4, p1}, Lcom/google/glass/voice/VoiceEngine;->startListening(Landroid/content/Intent;)V

    .line 131
    const-string/jumbo v4, "wantAudioData"

    .line 132
    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 133
    .local v3, "wantAudioData":Z
    iget-object v4, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v4, v4, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v4, v3}, Lcom/google/glass/voice/VoiceEngine;->setWantAudioData(Z)V

    .line 134
    return-void
.end method

.method public stopListening(Ljava/lang/String;)V
    .locals 4
    .param p1, "listenerTag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "#stopListening"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-string v0, "listenerTag cannot be null"

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->lastSetConfigListenerTag:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/google/glass/voice/VoiceService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring setConfig(OFF) because a more recent listener is using VoiceService"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->clear()V

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->stopListening()V

    goto :goto_0
.end method

.method public unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .param p1, "configToUnload"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 167
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->this$0:Lcom/google/glass/voice/VoiceService;

    iget-object v0, v0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 170
    return-void
.end method
