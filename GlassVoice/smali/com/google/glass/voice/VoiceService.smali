.class public Lcom/google/glass/voice/VoiceService;
.super Landroid/app/Service;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioLocked:Z

.field final binder:Landroid/os/IBinder;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final localeChangesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private mockAudio:[B

.field powerHelper:Lcom/google/glass/util/PowerHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

.field voiceEngine:Lcom/google/glass/voice/VoiceEngine;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Lcom/google/glass/voice/VoiceService$1;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "android.intent.action.SCREEN_ON"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceService$1;-><init>(Lcom/google/glass/voice/VoiceService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 69
    new-instance v0, Lcom/google/glass/voice/VoiceService$2;

    sget-object v1, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "localeChangesReceiver"

    .line 70
    invoke-static {v1, v2}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceService$2;-><init>(Lcom/google/glass/voice/VoiceService;Lcom/google/glass/logging/FormattingLogger;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->localeChangesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 236
    new-instance v0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    .line 246
    iput-boolean v4, p0, Lcom/google/glass/voice/VoiceService;->audioLocked:Z

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->onScreenOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    return-object v0
.end method

.method private acquireAudioLock()V
    .locals 3

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->openMicDuringScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceService;->audioLocked:Z

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Acquiring audio lock."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-static {}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->getInstance()Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/ConcurrentAudioInterface;

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->acquireLock()V

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceService;->audioLocked:Z

    goto :goto_0
.end method

.method private onScreenOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received screen on broadcast."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->acquireAudioLock()V

    .line 307
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->onScreenOn()V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received screen on broadcast, but screen was off, ignoring"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private openMicDuringScreenOn()Z
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->AVC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    return v0
.end method

.method private releaseAudioLock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 343
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->openMicDuringScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceService;->audioLocked:Z

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Releasing audio lock"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->getInstance()Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterfaceProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/ConcurrentAudioInterface;

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->releaseLock()V

    .line 350
    iput-boolean v3, p0, Lcom/google/glass/voice/VoiceService;->audioLocked:Z

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Current Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 363
    const-string v0, "VoiceInputCallbacks:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    new-instance v1, Lcom/google/glass/voice/VoiceService$3;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/VoiceService$3;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 370
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 371
    const-string v0, "VoiceServiceListeners:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    new-instance v1, Lcom/google/glass/voice/VoiceService$4;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/VoiceService$4;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 378
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 379
    const-string v0, "VoiceEngine State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p2}, Lcom/google/glass/voice/VoiceEngine;->dumpState(Ljava/io/PrintWriter;)V

    .line 385
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 386
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 387
    invoke-virtual {v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered()Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v3, 0x1

    .line 388
    invoke-virtual {v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Screen off receiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " registered: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; result extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 383
    :cond_0
    :try_start_1
    const-string v0, "[not connected to VoiceEngine]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 250
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 276
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-direct {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    .line 279
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 280
    new-instance v0, Lcom/google/glass/voice/VoiceEngine;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceEngine;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceServiceListener;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 281
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    .line 282
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->localeChangesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/voice/VoiceCommandService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 287
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->RVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 290
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 294
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->cleanupSynchronously()V

    .line 296
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->close()V

    .line 297
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->close()V

    .line 298
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 299
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->localeChangesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 300
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 301
    return-void
.end method

.method onLocaleChanged()V
    .locals 3

    .prologue
    .line 355
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Locale changed; scheduling unload of all recognizers."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->unloadAllConfigs()V

    .line 357
    return-void
.end method

.method onScreenOff()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received screen off broadcast, checking VoiceEngine state."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->onScreenOff()V

    .line 336
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceService;->releaseAudioLock()V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received screen off broadcast, but screen was on, ignoring"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x0

    .line 256
    sget-object v1, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStartCommand"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    .line 258
    .local v0, "old":[B
    if-eqz p1, :cond_0

    .line 259
    const-string v1, "mockAudio"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    .line 260
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    const-string v2, "disableTranscription"

    .line 261
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 260
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceEngine;->setTranscriptionDisabled(Z)V

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    if-eq v0, v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceEngine;->setMockAudio([B)V

    .line 270
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
