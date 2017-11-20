.class Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "LocationSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/LocationSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationSyncAdapter"
.end annotation


# instance fields
.field private final handler:Lcom/google/glass/sync/LocationSyncHandler;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/logging/FormattingLogger;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentLogger"    # Lcom/google/glass/logging/FormattingLogger;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 46
    invoke-static {p2, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    invoke-static {}, Lcom/google/glass/sync/LocationSyncHandler$Provider;->getInstance()Lcom/google/glass/sync/LocationSyncHandler$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/sync/LocationSyncHandler$Provider;->get(Landroid/content/Context;)Lcom/google/glass/sync/LocationSyncHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;->handler:Lcom/google/glass/sync/LocationSyncHandler;

    .line 48
    return-void
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
    .line 53
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPerformSync() entered [account=%s, extras=%s, authority=%s, provider=%s, syncResult=%s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncService$LocationSyncAdapter;->handler:Lcom/google/glass/sync/LocationSyncHandler;

    invoke-virtual {v0, p2}, Lcom/google/glass/sync/LocationSyncHandler;->performLocationSync(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method
