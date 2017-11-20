.class public Lcom/google/android/shared/util/GlassConcurrentUtils;
.super Ljava/lang/Object;
.source "GlassConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/GlassConcurrentUtils$GlassSafeScheduledThreadPoolExecutor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static createSafeExecutor(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)Lcom/google/android/shared/util/GlassConcurrentUtils$GlassSafeScheduledThreadPoolExecutor;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "numThreads"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "removeIdleThreads"    # Z
    .param p4, "verbose"    # Z

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/shared/util/GlassConcurrentUtils$GlassSafeScheduledThreadPoolExecutor;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/util/GlassConcurrentUtils$GlassSafeScheduledThreadPoolExecutor;-><init>(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)V

    return-object v0
.end method
