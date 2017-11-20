.class Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SavedAudioSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/sync/SavedAudioSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedAudioSyncAdapter"
.end annotation


# static fields
.field private static final MINIMUM_SYNC_DELAY_SECONDS:I = 0x3c


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 54
    new-instance v0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    .line 55
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 56
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 57
    return-void
.end method

.method private isPowered()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 62
    invoke-static {}, Lcom/google/glass/voice/sync/SavedAudioSyncService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onPerformSync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->deleteOldAudio()V

    .line 64
    invoke-direct {p0}, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->isPowered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->syncSavedAudio()V

    .line 67
    :cond_0
    iget-wide v0, p5, Landroid/content/SyncResult;->delayUntil:J

    const-wide/16 v2, 0x3c

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p5, Landroid/content/SyncResult;->delayUntil:J

    .line 68
    return-void
.end method
