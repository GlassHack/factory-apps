.class public Lcom/google/glass/search/SearchApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "SearchApplication.java"


# static fields
.field private static final MAX_BITMAP_CACHE_SIZE_KB:I = 0x8000

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/SearchApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/search/SearchApplication;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, "applicationContext":Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/search/SearchApplication;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/google/glass/search/SearchApplication;

    .end local v0    # "applicationContext":Landroid/content/Context;
    return-object v0

    .line 42
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the SearchApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/search/SearchApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 56
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Lcom/google/glass/util/MemoryCachedBitmapFactory;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const v4, 0x8000

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/glass/util/MemoryCachedBitmapFactory;-><init>(Landroid/content/Context;III)V

    return-object v1
.end method

.method public isNavigationAllowed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isMulticastSupportedOnPairedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v0, v3

    .line 65
    .local v0, "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :goto_0
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/glass/location/LocationHelper;->isNavigationAllowed(Landroid/location/LocationManager;Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->ANA:Lcom/google/glass/util/Labs$Feature;

    .line 66
    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "isConnectedToCompanionOrPairedToMDNSDevice":Z
    :cond_3
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 50
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 51
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassApplication;->onTrimMemory(I)V

    .line 74
    const/16 v2, 0x14

    if-lt p1, v2, :cond_0

    .line 75
    sget-object v2, Lcom/google/glass/search/SearchApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not trimming memory for level %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v1, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v1}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 80
    .local v1, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 84
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/MemoryCachedBitmapFactory;

    .line 85
    .local v0, "bitmapFactory":Lcom/google/glass/util/MemoryCachedBitmapFactory;
    sget-object v2, Lcom/google/glass/search/SearchApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "System is running low on memory; clearing bitmap cache. Size: %d kB"

    new-array v4, v6, [Ljava/lang/Object;

    .line 86
    invoke-virtual {v0}, Lcom/google/glass/util/MemoryCachedBitmapFactory;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 85
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0}, Lcom/google/glass/util/MemoryCachedBitmapFactory;->clearCache()V

    .line 89
    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 90
    sget-object v2, Lcom/google/glass/search/SearchApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cleared caches in %dms."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
