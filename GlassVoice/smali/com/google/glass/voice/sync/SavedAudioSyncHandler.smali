.class public Lcom/google/glass/voice/sync/SavedAudioSyncHandler;
.super Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;
.source "SavedAudioSyncHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->TAG:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->context:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    new-instance v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v1, p1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 28
    return-void
.end method


# virtual methods
.method public deleteOldAudio()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;->deleteOldAudio(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public syncSavedAudio()V
    .locals 6

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v2, p0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getEnabledStorageLabs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/logging/audio/SavedAudioStorage;->uploadStoredAudio(Landroid/content/Context;Ljava/util/List;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->handleSuccess()V
    :try_end_0
    .catch Lcom/google/glass/logging/audio/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lcom/google/glass/logging/audio/SyncFailedException;
    sget-object v1, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    sget-object v2, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Syncing saved audio to S3 failed"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v1, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->handleFail(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    goto :goto_0
.end method
