.class public Lcom/google/glass/voice/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Lcom/google/glass/voice/GrammarStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;,
        Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;
    }
.end annotation


# static fields
.field private static final MSG_RESAMPLED_AUDIO_DATA:I = 0x4

.field private static final MSG_VOICE_COMMAND:I = 0x2

.field private static final MSG_VOICE_CONFIG_CHANGED:I = 0x6

.field private static final ON_VOICE_COMMAND_HANDLE_TIMEOUT_MS:J = 0x7d0L

.field private static final VOICE_SERVICE:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private volatile currentVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field volatile expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final grammarLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/GrammarLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final inputListener:Lcom/google/glass/voice/VoiceListener;

.field private final loadedConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field final voiceHandler:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

.field private final voiceServiceListener:Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

.field private final voiceServiceListenerAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wantAudioData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.voice"

    const-string v2, "com.google.glass.voice.VoiceService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/voice/VoiceListener;

    .prologue
    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/voice/VoiceListener;
    .param p3, "serviceExtras"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/google/glass/voice/VoiceInputHelper$1;

    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceInputHelper$1;-><init>(Lcom/google/glass/voice/VoiceInputHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;-><init>(Lcom/google/glass/voice/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceListenerAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    .line 247
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    .line 186
    iput-object p2, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    .line 188
    invoke-static {}, Lcom/google/glass/voice/VoiceServiceConnection$Provider;->getInstance()Lcom/google/glass/voice/VoiceServiceConnection$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceServiceConnection$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceServiceConnection;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    .line 189
    invoke-static {}, Lcom/google/glass/util/PowerHelperProvider;->getInstance()Lcom/google/glass/util/PowerHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/PowerHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 191
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceServiceConnection;->isBindCalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/glass/voice/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceServiceConnection;->isBindCalled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    sget-object v0, Lcom/google/glass/voice/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Binding VoiceService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 200
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/voice/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;
    .param p1, "x1"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/voice/VoiceInputHelper;->currentVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/voice/VoiceInputHelper$LocalVoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceInputHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceListenerAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceInputHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->wantAudioData:Z

    return v0
.end method

.method private getResultingConfig(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 8
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v3}, Lcom/google/glass/voice/VoiceListener;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Listener is not running, ignoring voiceCommand"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const/4 v1, 0x0

    .line 385
    :goto_0
    return-object v1

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Voice command triggered"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    const/4 v3, 0x4

    sget-object v4, Lcom/google/glass/voice/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xf

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Voice command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v3, p1}, Lcom/google/glass/voice/VoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 379
    .local v1, "resultingConfig":Lcom/google/glass/voice/VoiceConfig;
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 380
    .local v0, "handled":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 381
    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v2}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    goto :goto_0

    .end local v0    # "handled":Z
    :cond_1
    move v0, v2

    .line 379
    goto :goto_1

    .line 383
    .restart local v0    # "handled":Z
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Voice command not handled"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private listenerLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;
    .locals 1
    .param p1, "grammarLoader"    # Lcom/google/glass/voice/GrammarLoader;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-object p0
.end method

.method public varargs addGrammarLoaders([Lcom/google/glass/voice/GrammarLoader;)V
    .locals 3
    .param p1, "grammarLoaders"    # [Lcom/google/glass/voice/GrammarLoader;

    .prologue
    .line 208
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 209
    .local v0, "grammarLoader":Lcom/google/glass/voice/GrammarLoader;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "grammarLoader":Lcom/google/glass/voice/GrammarLoader;
    :cond_0
    return-void
.end method

.method public dispatchResampledAudioData([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring resampledAudioData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/voice/VoiceListener;->onResampledAudioData([BII)Z

    goto :goto_0
.end method

.method public dispatchVoiceCommand(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)V
    .locals 1
    .param p1, "commandEvent"    # Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 366
    invoke-static {p1}, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->access$1100(Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceInputHelper;->getResultingConfig(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceInputHelper$VoiceCommandEvent;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 367
    return-void
.end method

.method public dispatchVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceConfigChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->inputListener:Lcom/google/glass/voice/VoiceListener;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/glass/voice/VoiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V

    goto :goto_0
.end method

.method public getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getSpeechLevel()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceServiceConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Trying to get speech level before VoiceService connected."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :goto_0
    return v1

    .line 328
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceServiceConnection;->getBinder()Lcom/google/glass/voice/IVoiceService;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/voice/IVoiceService;->getSpeechLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to get speech level"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->currentVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public loadConfig(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phrases"    # [Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0, p2}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    .line 251
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    new-instance v2, Lcom/google/glass/voice/VoiceInputHelper$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/glass/voice/VoiceInputHelper$3;-><init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 262
    return-object v0
.end method

.method public registerGrammarLoaders()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/GrammarLoader;

    .line 345
    .local v0, "grammarLoader":Lcom/google/glass/voice/GrammarLoader;
    invoke-virtual {v0}, Lcom/google/glass/voice/GrammarLoader;->registerForUpdates()V

    goto :goto_0

    .line 347
    .end local v0    # "grammarLoader":Lcom/google/glass/voice/GrammarLoader;
    :cond_0
    return-void
.end method

.method public reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceInputHelper;->getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 268
    .local v0, "loadedConfig":Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p2, v0}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Lcom/google/glass/voice/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Asked to reload identical config, ignoring."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    .end local v0    # "loadedConfig":Lcom/google/glass/voice/VoiceConfig;
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "loadedConfig":Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    new-instance v2, Lcom/google/glass/voice/VoiceInputHelper$4;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/google/glass/voice/VoiceInputHelper$4;-><init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    move-object v0, p2

    .line 285
    goto :goto_0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    new-instance v1, Lcom/google/glass/voice/VoiceInputHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceInputHelper$2;-><init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public setWantAudioData(Z)V
    .locals 0
    .param p1, "wantAudioData"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceInputHelper;->wantAudioData:Z

    .line 341
    return-void
.end method

.method public unloadConfig(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceInputHelper;->getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 296
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "No config to unload named %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/voice/VoiceServiceConnection;

    new-instance v2, Lcom/google/glass/voice/VoiceInputHelper$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/glass/voice/VoiceInputHelper$5;-><init>(Lcom/google/glass/voice/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unregisterGrammarLoaders()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/google/glass/voice/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/GrammarLoader;

    .line 351
    .local v0, "grammarLoader":Lcom/google/glass/voice/GrammarLoader;
    invoke-virtual {v0}, Lcom/google/glass/voice/GrammarLoader;->unregisterForUpdates()V

    goto :goto_0

    .line 353
    .end local v0    # "grammarLoader":Lcom/google/glass/voice/GrammarLoader;
    :cond_0
    return-void
.end method
