.class public Lcom/google/android/shared/util/GlassConcurrentUtils$GlassSafeScheduledThreadPoolExecutor;
.super Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;
.source "GlassConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/GlassConcurrentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlassSafeScheduledThreadPoolExecutor"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numThreads"    # I
    .param p3, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .param p4, "removeIdleThreads"    # Z
    .param p5, "verbose"    # Z

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;-><init>(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)V

    .line 36
    return-void
.end method


# virtual methods
.method public getMaxThreads()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;->getMaxThreads()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
