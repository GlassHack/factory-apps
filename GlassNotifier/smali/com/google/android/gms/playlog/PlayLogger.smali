.class public Lcom/google/android/gms/playlog/PlayLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/playlog/PlayLogger$LogSource;,
        Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;
    }
.end annotation


# instance fields
.field private final aHX:Lcom/google/android/gms/internal/su;

.field private aHY:Lcom/google/android/gms/internal/ss;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSource"    # I
    .param p3, "listener"    # Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/playlog/PlayLogger;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSource"    # I
    .param p3, "uploadAccountName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/playlog/PlayLogger;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSource"    # I
    .param p3, "uploadAccountName"    # Ljava/lang/String;
    .param p4, "loggingId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    .prologue
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/playlog/PlayLogger;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSource"    # I
    .param p3, "uploadAccountName"    # Ljava/lang/String;
    .param p4, "loggingId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;
    .param p6, "logAndroidId"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ss;

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ss;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    new-instance v0, Lcom/google/android/gms/internal/su;

    new-instance v1, Lcom/google/android/gms/internal/sr;

    invoke-direct {v1, p5}, Lcom/google/android/gms/internal/sr;-><init>(Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/su;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/sr;)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "PlayLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCacheCapacity()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/su;->getCacheCapacity()I

    move-result v0

    return v0
.end method

.method public getCacheSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/su;->getCacheSize()I

    move-result v0

    return v0
.end method

.method public getUploadAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v0, v0, Lcom/google/android/gms/internal/ss;->aIl:Ljava/lang/String;

    return-object v0
.end method

.method public isCacheEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/su;->isCacheEmpty()Z

    move-result v0

    return v0
.end method

.method public isCacheFull()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/su;->isCacheFull()Z

    move-result v0

    return v0
.end method

.method public varargs logEvent(JLjava/lang/String;[B[Ljava/lang/String;)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sourceExtensionBytes"    # [B
    .param p5, "extras"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    iget-object v7, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    new-instance v1, Lcom/google/android/gms/internal/so;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/so;-><init>(JLjava/lang/String;[B[Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/su;->b(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V

    return-void
.end method

.method public varargs logEvent(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "sourceExtensionBytes"    # [B
    .param p3, "extras"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/playlog/PlayLogger;->logEvent(JLjava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method

.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "extras"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/playlog/PlayLogger;->logEvent(Ljava/lang/String;[B[Ljava/lang/String;)V

    return-void
.end method

.method public logProtoEvent(Ljava/lang/Object;)V
    .locals 2
    .param p1, "protoEvent"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a ClientAnalytics.LogEvent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    iget-object v1, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    check-cast p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    .end local p1    # "protoEvent":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/su;->b(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    return-void
.end method

.method public setCacheCapacity(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/su;->setCacheCapacity(I)V

    return-void
.end method

.method public setIsAllowToLogAndroidId(Z)Lcom/google/android/gms/playlog/PlayLogger;
    .locals 7
    .param p1, "logAndroidId"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ss;->aIn:Z

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ss;

    iget-object v1, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v1, v1, Lcom/google/android/gms/internal/ss;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget v2, v2, Lcom/google/android/gms/internal/ss;->aIj:I

    iget-object v3, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget v3, v3, Lcom/google/android/gms/internal/ss;->aIk:I

    iget-object v4, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v4, v4, Lcom/google/android/gms/internal/ss;->aIl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v5, v5, Lcom/google/android/gms/internal/ss;->aIm:Ljava/lang/String;

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ss;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    :cond_0
    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/gms/playlog/PlayLogger;
    .locals 7
    .param p1, "loggingId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v0, v0, Lcom/google/android/gms/internal/ss;->aIm:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ss;

    iget-object v1, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v1, v1, Lcom/google/android/gms/internal/ss;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget v2, v2, Lcom/google/android/gms/internal/ss;->aIj:I

    iget-object v3, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget v3, v3, Lcom/google/android/gms/internal/ss;->aIk:I

    iget-object v4, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v4, v4, Lcom/google/android/gms/internal/ss;->aIl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ss;->aIn:Z

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ss;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    :cond_0
    return-object p0
.end method

.method public setUploadAccountName(Ljava/lang/String;)Lcom/google/android/gms/playlog/PlayLogger;
    .locals 7
    .param p1, "uploadAccountName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v0, v0, Lcom/google/android/gms/internal/ss;->aIl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ss;

    iget-object v1, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v1, v1, Lcom/google/android/gms/internal/ss;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget v2, v2, Lcom/google/android/gms/internal/ss;->aIj:I

    iget-object v3, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget v3, v3, Lcom/google/android/gms/internal/ss;->aIk:I

    iget-object v4, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-object v5, v4, Lcom/google/android/gms/internal/ss;->aIm:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    iget-boolean v6, v4, Lcom/google/android/gms/internal/ss;->aIn:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ss;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHY:Lcom/google/android/gms/internal/ss;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/su;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/playlog/PlayLogger;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/su;->stop()V

    return-void
.end method
