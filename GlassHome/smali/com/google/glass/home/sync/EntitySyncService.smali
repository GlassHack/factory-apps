.class public Lcom/google/glass/home/sync/EntitySyncService;
.super Landroid/app/Service;
.source "EntitySyncService.java"


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field private static syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncService;->syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/EntitySyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    sget-object v1, Lcom/google/glass/home/sync/EntitySyncService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncService;->syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/google/glass/home/sync/EntitySyncAdapter;

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/glass/home/sync/EntitySyncAdapter;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;Z)V

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncService;->syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;

    .line 27
    :cond_0
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
