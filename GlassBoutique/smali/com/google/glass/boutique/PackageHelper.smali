.class public Lcom/google/glass/boutique/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/PackageHelper$GlasswareKey;,
        Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;,
        Lcom/google/glass/boutique/PackageHelper$CompleteInstall;
    }
.end annotation


# static fields
.field static final CACHE_FILE_FORMAT:Ljava/lang/String; = "glassware_%d_%d_%s_%d"

.field static final CACHE_FILE_PATTERN:Ljava/util/regex/Pattern;

.field static final CACHE_FILE_PREFIX:Ljava/lang/String; = "glassware_"

.field public static final INVALID_REQUEST_TIME:J = -0x1L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final downloadReceiver:Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;

.field private final downloadResultFutures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 65
    const-string v0, "glassware_(-?\\d*)_(\\d*)_[a-zA-Z0-9\\-]+_(\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/PackageHelper;->CACHE_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;-><init>(Lcom/google/glass/boutique/PackageHelper;Lcom/google/glass/boutique/PackageHelper$1;)V

    iput-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->downloadReceiver:Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/google/glass/boutique/PackageHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 81
    const-string v0, "connectivity"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 83
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->downloadReceiver:Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/boutique/PackageHelper;J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/PackageHelper;
    .param p1, "x1"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/glass/boutique/PackageHelper;->connectToFetch(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/boutique/PackageHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/PackageHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/boutique/PackageHelper;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/boutique/PackageHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/PackageHelper;->getStartTimestampFromFilename(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/glass/boutique/PackageHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/PackageHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    return-object v0
.end method

.method private connectToFetch(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "downloadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 428
    .local v0, "resultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    monitor-enter v2

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    monitor-exit v2

    .line 431
    return-object v0

    .line 430
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNewDestinationUri(JI)Landroid/net/Uri;
    .locals 6
    .param p1, "glasswareId"    # J
    .param p3, "version"    # I

    .prologue
    .line 521
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 522
    .local v0, "basePath":Landroid/net/Uri;
    const-string v1, "glassware_%d_%d_%s_%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 523
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 524
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 523
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getStartTimestampFromFilename(Ljava/lang/String;)J
    .locals 8
    .param p1, "localFile"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 136
    sget-object v4, Lcom/google/glass/boutique/PackageHelper;->CACHE_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 137
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    :goto_0
    return-wide v2

    .line 142
    :cond_0
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error parsing local file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public broadcastInstallIntent(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 439
    iget-object v5, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 440
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.google.android.glass.APP_INSTALLED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, "intent":Landroid/content/Intent;
    const/16 v5, 0x20

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 444
    .local v4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 446
    .local v0, "activityName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 447
    .local v3, "receiver":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 448
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 449
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 454
    .end local v3    # "receiver":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    iget-object v5, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    sget-object v5, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Broadcasting intent %s for package %s to %s."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object p1, v7, v9

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_2
    sget-object v5, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Not broadcasting intent for package %s installation."

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method buildRequest(Landroid/net/Uri;JI)Landroid/app/DownloadManager$Request;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "glasswareId"    # J
    .param p4, "version"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 494
    if-nez p1, :cond_0

    .line 497
    sget-object v3, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request URI can not be null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 514
    :goto_0
    return-object v1

    .line 500
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 504
    .local v1, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v1, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 506
    invoke-direct {p0, p2, p3, p4}, Lcom/google/glass/boutique/PackageHelper;->getNewDestinationUri(JI)Landroid/net/Uri;

    move-result-object v0

    .line 507
    .local v0, "destination":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 510
    sget-object v3, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Destination URI can not be null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 511
    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    goto :goto_0
.end method

.method public cleanupDownloadedFiles()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 467
    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/boutique/BootDownloadCleaner;->cleanupDownloadFiles(Landroid/content/Context;)V

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, "numDeletedFiles":I
    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 474
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "glassware_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 475
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 476
    add-int/lit8 v1, v1, 0x1

    .line 473
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-lez v1, :cond_2

    .line 481
    sget-object v2, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Deleted %d downloaded file(s)."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    :cond_2
    return-void
.end method

.method fetch(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 402
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 403
    .local v1, "remoteUri":Landroid/net/Uri;
    sget-object v3, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Fetching resource: %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v3, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    const-string v4, "download"

    .line 406
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 410
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getGlasswareId()J

    move-result-wide v3

    .line 411
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getVersionNumber()I

    move-result v5

    .line 408
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/glass/boutique/PackageHelper;->buildRequest(Landroid/net/Uri;JI)Landroid/app/DownloadManager$Request;

    move-result-object v2

    .line 414
    .local v2, "request":Landroid/app/DownloadManager$Request;
    if-nez v2, :cond_0

    .line 415
    sget-object v3, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to fetch: %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 422
    :goto_0
    return-object v3

    .line 421
    :cond_0
    iget-object v4, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    monitor-enter v4

    .line 422
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/google/glass/boutique/PackageHelper;->connectToFetch(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getActiveDownloads()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/boutique/PackageHelper$GlasswareKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 158
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 160
    .local v1, "activeDownloads":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/boutique/PackageHelper$GlasswareKey;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    const-string v16, "download"

    .line 161
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 163
    .local v3, "downloadManager":Landroid/app/DownloadManager;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 164
    .local v8, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v15, Landroid/app/DownloadManager$Query;

    invoke-direct {v15}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v15}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 166
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_6

    .line 167
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    .end local v8    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v9, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_1
    const-string v15, "local_filename"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 170
    .local v4, "fileNameIndex":I
    const-string v15, "_id"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 171
    .local v7, "idIndex":I
    const-string v15, "status"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 173
    .local v14, "statusIndex":I
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 174
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 175
    .local v12, "localFileName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 176
    sget-object v15, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v16, "Got null local file while building active downloads [id=%d]"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 177
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    .line 176
    invoke-interface/range {v15 .. v17}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v4    # "fileNameIndex":I
    .end local v7    # "idIndex":I
    .end local v12    # "localFileName":Ljava/lang/String;
    .end local v14    # "statusIndex":I
    :catchall_0
    move-exception v15

    move-object v8, v9

    .end local v9    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    if-eqz v2, :cond_1

    .line 198
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v15

    .line 181
    .end local v8    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "fileNameIndex":I
    .restart local v7    # "idIndex":I
    .restart local v9    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v12    # "localFileName":Ljava/lang/String;
    .restart local v14    # "statusIndex":I
    :cond_2
    :try_start_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v11, "localFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/glass/boutique/PackageHelper;->getKeyFromFilename(Ljava/lang/String;)Lcom/google/glass/boutique/PackageHelper$GlasswareKey;

    move-result-object v10

    .line 184
    .local v10, "key":Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
    if-eqz v10, :cond_0

    .line 185
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 186
    .local v5, "id":J
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 187
    .local v13, "status":I
    const/4 v15, 0x2

    if-eq v13, v15, :cond_3

    const/16 v15, 0x8

    if-ne v13, v15, :cond_4

    .line 189
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v1, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v5    # "id":J
    .end local v10    # "key":Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
    .end local v11    # "localFile":Ljava/io/File;
    .end local v12    # "localFileName":Ljava/lang/String;
    .end local v13    # "status":I
    :cond_5
    move-object v8, v9

    .line 197
    .end local v4    # "fileNameIndex":I
    .end local v7    # "idIndex":I
    .end local v9    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "statusIndex":I
    .restart local v8    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    if-eqz v2, :cond_7

    .line 198
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 203
    .restart local v5    # "id":J
    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v17, 0x0

    aput-wide v5, v15, v17

    invoke-virtual {v3, v15}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_2

    .line 206
    .end local v5    # "id":J
    :cond_8
    return-object v1

    .line 197
    :catchall_1
    move-exception v15

    goto :goto_1
.end method

.method public getInstalledPackageList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v4, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 375
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 376
    .local v3, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 377
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 378
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 379
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v3
.end method

.method getKeyFromFilename(Ljava/lang/String;)Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
    .locals 10
    .param p1, "localFile"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 118
    sget-object v6, Lcom/google/glass/boutique/PackageHelper;->CACHE_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 119
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    :goto_0
    return-object v5

    .line 124
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 125
    .local v1, "glasswareId":J
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 126
    .local v4, "version":I
    new-instance v6, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;

    invoke-direct {v6, v1, v2, v4}, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;-><init>(JI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 127
    .end local v1    # "glasswareId":J
    .end local v4    # "version":I
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error parsing local file from active download list: %s"

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getLoggingConnectivity()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 529
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 531
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 532
    const-string v1, "4"

    .line 538
    :goto_0
    return-object v1

    .line 533
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 534
    const-string v1, "1"

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 536
    const-string v1, "2"

    goto :goto_0

    .line 538
    :cond_2
    const-string v1, "3"

    goto :goto_0
.end method

.method public getPackageVersion(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    :goto_0
    return-object v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installPackage(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "localUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    const-string v1, "localUri can not be null"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Installing a new package."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 308
    .local v0, "resultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/glass/boutique/PackageHelper$3;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/boutique/PackageHelper$3;-><init>(Lcom/google/glass/boutique/PackageHelper;Lcom/google/common/util/concurrent/SettableFuture;)V

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/glass/hidden/HiddenPackageManager;->installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/glass/hidden/HiddenPackageManager$PackageInstallObserver;I)V

    .line 319
    return-object v0
.end method

.method public installRemotePackage(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Ljava/util/Map;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 15
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/boutique/PackageHelper$GlasswareKey;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "mutableActiveDownloads":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/glass/boutique/PackageHelper$GlasswareKey;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 228
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    const-string v2, "download"

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/DownloadManager;

    .line 231
    .local v8, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasLastModifiedTimestampUs()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v5, -0x1

    .line 234
    .local v5, "requestStartTimeUs":J
    :goto_0
    new-instance v10, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/google/glass/boutique/PackageHelper$GlasswareKey;-><init>(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)V

    .line 236
    .local v10, "key":Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 237
    .local v3, "downloadId":Ljava/lang/Long;
    if-eqz v3, :cond_5

    .line 241
    new-instance v1, Lcom/google/glass/boutique/PackageHelper$1;

    move-object v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/glass/boutique/PackageHelper$1;-><init>(Lcom/google/glass/boutique/PackageHelper;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;J)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 250
    invoke-virtual {v1, v2, v4}, Lcom/google/glass/boutique/PackageHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 255
    .local v11, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    aput-wide v13, v2, v4

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v7

    .line 257
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 259
    .local v12, "status":I
    const/16 v1, 0x8

    if-ne v12, v1, :cond_4

    .line 261
    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/util/concurrent/SettableFuture;

    .line 263
    .local v9, "downloadResultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    if-eqz v9, :cond_0

    .line 265
    :try_start_2
    invoke-virtual {v9, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    .end local v9    # "downloadResultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    .end local v12    # "status":I
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 295
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v11    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;"
    :cond_1
    :goto_2
    return-object v11

    .line 232
    .end local v3    # "downloadId":Ljava/lang/Long;
    .end local v5    # "requestStartTimeUs":J
    .end local v10    # "key":Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getLastModifiedTimestampUs()J

    move-result-wide v5

    goto :goto_0

    .line 263
    .restart local v3    # "downloadId":Ljava/lang/Long;
    .restart local v5    # "requestStartTimeUs":J
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "key":Lcom/google/glass/boutique/PackageHelper$GlasswareKey;
    .restart local v11    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;"
    .restart local v12    # "status":I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    .end local v12    # "status":I
    :catchall_1
    move-exception v1

    if-eqz v7, :cond_3

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 267
    .restart local v12    # "status":I
    :cond_4
    const/4 v1, 0x2

    if-eq v12, v1, :cond_0

    .line 269
    :try_start_5
    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 270
    :try_start_6
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/util/concurrent/SettableFuture;

    .line 271
    .restart local v9    # "downloadResultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 272
    if-eqz v9, :cond_0

    .line 273
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v9, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 271
    .end local v9    # "downloadResultFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 286
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v11    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Integer;>;"
    .end local v12    # "status":I
    :cond_5
    new-instance v1, Lcom/google/glass/boutique/PackageHelper$2;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v0, v5, v6}, Lcom/google/glass/boutique/PackageHelper$2;-><init>(Lcom/google/glass/boutique/PackageHelper;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;J)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 295
    invoke-virtual {v1, v2, v4}, Lcom/google/glass/boutique/PackageHelper$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v11, v1

    goto :goto_2
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/google/glass/boutique/PackageHelper;->getPackageVersion(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logInstallEvent(Ljava/lang/String;JJJ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeToDownloadStartMs"    # J
    .param p4, "downloadTimeMs"    # J
    .param p6, "installTimeMs"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 548
    const-string v1, "s"

    .line 550
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "d"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 552
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "i"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 554
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "c"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 556
    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageHelper;->getLoggingConnectivity()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "p"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p1, v3, v4

    .line 548
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "event":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/boutique/PackageHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_INSTALLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public onCancel()V
    .locals 4

    .prologue
    .line 104
    iget-object v3, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    monitor-enter v3

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 106
    .local v1, "leftovers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;>;"
    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->downloadResultFutures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 107
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 109
    .local v0, "leftover":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    goto :goto_0

    .line 107
    .end local v0    # "leftover":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;"
    .end local v1    # "leftovers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 111
    .restart local v1    # "leftovers":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Long;>;>;"
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->downloadReceiver:Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/boutique/PackageHelper$DownloadBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageHelper;->onCancel()V

    .line 93
    return-void
.end method

.method protected uninstallPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/glass/boutique/PackageHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/glass/hidden/HiddenPackageManager;->uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;J)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestStartTimeUs"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 326
    sget-object v6, Lcom/google/glass/boutique/PackageHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Uninstalling %s."

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 328
    .local v1, "nowMs":J
    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-nez v6, :cond_0

    const-wide/16 v3, -0x3

    .line 332
    .local v3, "timeToUninstallStartMs":J
    :goto_0
    new-instance v6, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v6}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v5

    .line 333
    .local v5, "uninstallStopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {p0, p1}, Lcom/google/glass/boutique/PackageHelper;->uninstallPackage(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 336
    const-string v6, "s"

    .line 338
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "u"

    aput-object v9, v8, v10

    .line 340
    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    const-string v10, "c"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 342
    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageHelper;->getLoggingConnectivity()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "p"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object p1, v8, v9

    .line 336
    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "event":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/boutique/PackageHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->GLASSWARE_UNINSTALLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v6, v7, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 346
    return-void

    .line 328
    .end local v0    # "event":Ljava/lang/String;
    .end local v3    # "timeToUninstallStartMs":J
    .end local v5    # "uninstallStopwatch":Lcom/google/glass/time/Stopwatch;
    :cond_0
    const-wide/16 v6, 0x3e8

    div-long v6, p2, v6

    sub-long v3, v1, v6

    goto :goto_0
.end method
