.class public Lcom/google/glass/voice/VoiceServiceConnection;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.voice"

    const-string v2, "com.google.glass.voice.VoiceService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    .line 15
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized getBinder()Lcom/google/glass/voice/IVoiceService;
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceServiceConnection;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/voice/VoiceServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public declared-synchronized onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "VoiceService connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {p2}, Lcom/google/glass/voice/IVoiceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceServiceConnection;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "VoiceService disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceServiceConnection;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
