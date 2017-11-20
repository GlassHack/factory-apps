.class public Lcom/google/glass/sync/TimelineSyncStatusReceiver;
.super Ljava/lang/Object;
.source "TimelineSyncStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;,
        Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private lastItemId:Ljava/lang/String;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;-><init>(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    .line 29
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->broadcastLastItemIdToListeners()V

    return-void
.end method

.method private broadcastLastItemIdToListeners()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    .line 64
    .local v0, "listener":Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;->onItemSyncing(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "listener":Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;->onItemSyncing(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    .line 37
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->broadcastLastItemIdToListeners()V

    .line 43
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 48
    return-void
.end method
