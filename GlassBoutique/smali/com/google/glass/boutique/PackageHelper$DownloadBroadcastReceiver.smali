.class Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/PackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/PackageHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/boutique/PackageHelper;)V
    .locals 3

    .prologue
    .line 633
    iput-object p1, p0, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;->this$0:Lcom/google/glass/boutique/PackageHelper;

    .line 634
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/boutique/PackageHelper;Lcom/google/glass/boutique/PackageHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/boutique/PackageHelper;
    .param p2, "x1"    # Lcom/google/glass/boutique/PackageHelper$1;

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;-><init>(Lcom/google/glass/boutique/PackageHelper;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 662
    invoke-static {}, Lcom/google/glass/boutique/PackageHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 641
    const-string v4, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "extra_download_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 648
    .local v1, "downloadId":J
    const/4 v3, 0x0

    .line 649
    .local v3, "downloadResultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;->this$0:Lcom/google/glass/boutique/PackageHelper;

    invoke-static {v4}, Lcom/google/glass/boutique/PackageHelper;->access$600(Lcom/google/glass/boutique/PackageHelper;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 650
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;->this$0:Lcom/google/glass/boutique/PackageHelper;

    invoke-static {v4}, Lcom/google/glass/boutique/PackageHelper;->access$600(Lcom/google/glass/boutique/PackageHelper;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    move-object v3, v0

    .line 651
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    if-eqz v3, :cond_0

    .line 656
    invoke-static {}, Lcom/google/glass/boutique/PackageHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Download #%d has completed."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
