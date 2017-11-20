.class Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;
.super Ljava/lang/Object;
.source "PackageHelper.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->apply(Ljava/lang/Long;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

.field final synthetic val$downloadDurationMs:J

.field final synthetic val$downloadId:Ljava/lang/Long;

.field final synthetic val$downloadManager:Landroid/app/DownloadManager;

.field final synthetic val$installStopwatch:Lcom/google/glass/time/Stopwatch;

.field final synthetic val$timeToDownloadStartMs:J


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/PackageHelper$CompleteInstall;Landroid/app/DownloadManager;Ljava/lang/Long;JJLcom/google/glass/time/Stopwatch;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->this$1:Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    iput-object p2, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadManager:Landroid/app/DownloadManager;

    iput-object p3, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadId:Ljava/lang/Long;

    iput-wide p4, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$timeToDownloadStartMs:J

    iput-wide p6, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadDurationMs:J

    iput-object p8, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$installStopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 604
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->this$1:Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    iget-object v0, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->this$0:Lcom/google/glass/boutique/PackageHelper;

    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->this$1:Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    .line 605
    invoke-static {v1}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->access$500(Lcom/google/glass/boutique/PackageHelper$CompleteInstall;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$timeToDownloadStartMs:J

    iget-wide v4, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadDurationMs:J

    const-wide/16 v6, -0x1

    .line 604
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/boutique/PackageHelper;->logInstallEvent(Ljava/lang/String;JJJ)V

    .line 608
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 613
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->this$1:Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    iget-object v0, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->this$0:Lcom/google/glass/boutique/PackageHelper;

    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->this$1:Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    .line 614
    invoke-static {v1}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->access$500(Lcom/google/glass/boutique/PackageHelper$CompleteInstall;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$timeToDownloadStartMs:J

    iget-wide v4, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$downloadDurationMs:J

    iget-object v6, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->val$installStopwatch:Lcom/google/glass/time/Stopwatch;

    .line 616
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    .line 613
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/boutique/PackageHelper;->logInstallEvent(Ljava/lang/String;JJJ)V

    .line 617
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 600
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
