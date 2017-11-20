.class public Lcom/google/glass/sync/LocationSyncService;
.super Landroid/app/Service;
.source "LocationSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;
    }
.end annotation


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private syncAdapter:Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const-string v0, "glass_sync"

    .line 22
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind() entered [intent=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncService;->syncAdapter:Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate() entered"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    new-instance v0, Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;

    iget-object v1, p0, Lcom/google/glass/sync/LocationSyncService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/logging/FormattingLogger;)V

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncService;->syncAdapter:Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;

    .line 31
    return-void
.end method
