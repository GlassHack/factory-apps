.class public Lcom/google/glass/voice/sync/SavedAudioSyncService;
.super Landroid/app/Service;
.source "SavedAudioSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;
    }
.end annotation


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static syncAdapter:Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncService;->syncAdapter:Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    sget-object v1, Lcom/google/glass/voice/sync/SavedAudioSyncService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncService;->syncAdapter:Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/voice/sync/SavedAudioSyncService;->syncAdapter:Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;

    .line 35
    :cond_0
    monitor-exit v1

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
