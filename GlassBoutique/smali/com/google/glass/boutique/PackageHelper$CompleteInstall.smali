.class Lcom/google/glass/boutique/PackageHelper$CompleteInstall;
.super Ljava/lang/Object;
.source "PackageHelper.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/PackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompleteInstall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final creationTimeMs:J

.field private final packageName:Ljava/lang/String;

.field private final requestStartTimeUs:J

.field final synthetic this$0:Lcom/google/glass/boutique/PackageHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/boutique/PackageHelper;Ljava/lang/String;J)V
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "requestStartTimeUs"    # J

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->this$0:Lcom/google/glass/boutique/PackageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->packageName:Ljava/lang/String;

    .line 570
    iput-wide p3, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->requestStartTimeUs:J

    .line 571
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->creationTimeMs:J

    .line 572
    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/boutique/PackageHelper$CompleteInstall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/PackageHelper$CompleteInstall;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private getTimeToDownloadStartMs(J)J
    .locals 4
    .param p1, "referencePointMs"    # J

    .prologue
    .line 623
    iget-wide v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->requestStartTimeUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->requestStartTimeUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long v0, p1, v0

    goto :goto_0
.end method


# virtual methods
.method public apply(Ljava/lang/Long;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 19
    .param p1, "downloadId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->this$0:Lcom/google/glass/boutique/PackageHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->creationTimeMs:J

    move-wide/from16 v17, v0

    .line 578
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->getTimeToDownloadStartMs(J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    .line 576
    invoke-virtual/range {v3 .. v10}, Lcom/google/glass/boutique/PackageHelper;->logInstallEvent(Ljava/lang/String;JJJ)V

    .line 581
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to fetch remote package. Aborting installation."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v14

    .line 619
    :goto_0
    return-object v14

    .line 585
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->this$0:Lcom/google/glass/boutique/PackageHelper;

    .line 586
    invoke-static {v3}, Lcom/google/glass/boutique/PackageHelper;->access$200(Lcom/google/glass/boutique/PackageHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    .line 587
    .local v5, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v16

    .line 588
    .local v16, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/google/glass/boutique/PackageHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Downloaded file: %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v16, v6, v17

    invoke-interface {v3, v4, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    .line 591
    .local v15, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->this$0:Lcom/google/glass/boutique/PackageHelper;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/google/glass/boutique/PackageHelper;->access$400(Lcom/google/glass/boutique/PackageHelper;Ljava/lang/String;)J

    move-result-wide v12

    .line 592
    .local v12, "downloadStartMs":J
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long v9, v3, v12

    .line 594
    .local v9, "downloadDurationMs":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->getTimeToDownloadStartMs(J)J

    move-result-wide v7

    .line 596
    .local v7, "timeToDownloadStartMs":J
    new-instance v3, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v3}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v11

    .line 597
    .local v11, "installStopwatch":Lcom/google/glass/time/Stopwatch;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->this$0:Lcom/google/glass/boutique/PackageHelper;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/glass/boutique/PackageHelper;->installPackage(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v14

    .line 600
    .local v14, "installFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall$1;-><init>(Lcom/google/glass/boutique/PackageHelper$CompleteInstall;Landroid/app/DownloadManager;Ljava/lang/Long;JJLcom/google/glass/time/Stopwatch;)V

    invoke-static {v14, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 563
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/glass/boutique/PackageHelper$CompleteInstall;->apply(Ljava/lang/Long;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
