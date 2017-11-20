.class public final Lcom/google/android/shared/util/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConcurrentUtils"

.field private static sPrinter:Lcom/google/android/shared/util/DebugPrinter;

.field private static sPrinterAttached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/shared/util/DebugPrinter;

    invoke-direct {v0}, Lcom/google/android/shared/util/DebugPrinter;-><init>()V

    sput-object v0, Lcom/google/android/shared/util/ConcurrentUtils;->sPrinter:Lcom/google/android/shared/util/DebugPrinter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBackgroundThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 3
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setPriority(I)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method static createSafeExecutor(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "numThreads"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "removeIdleThreads"    # Z
    .param p4, "verbose"    # Z

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;-><init>(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)V

    return-object v0
.end method

.method public static createSafeSingleThreadedBackgroundExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "verbose"    # Z

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/android/shared/util/ConcurrentUtils;->createBackgroundThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    .line 106
    .local v3, "factory":Ljava/util/concurrent/ThreadFactory;
    new-instance v0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;-><init>(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)V

    return-object v0
.end method

.method public static createSafeSingleThreadedExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "verbose"    # Z

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/android/shared/util/ConcurrentUtils;->createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    .line 97
    .local v3, "factory":Ljava/util/concurrent/ThreadFactory;
    new-instance v0, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;-><init>(Ljava/lang/String;ILjava/util/concurrent/ThreadFactory;ZZ)V

    return-object v0
.end method

.method private static createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 3
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public static dumpUiTasks(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-boolean v0, Lcom/google/android/shared/util/ConcurrentUtils;->sPrinterAttached:Z

    if-eqz v0, :cond_0

    .line 726
    sget-object v0, Lcom/google/android/shared/util/ConcurrentUtils;->sPrinter:Lcom/google/android/shared/util/DebugPrinter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/shared/util/DebugPrinter;->dump(Ljava/lang/String;Ljava/util/List;)V

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    const-string v1, "All UI-thread tasks: logging disabled"

    invoke-static {p1, p0, v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static enableUiTaskLogging(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 712
    sget-object v0, Lcom/google/android/shared/util/ConcurrentUtils;->sPrinter:Lcom/google/android/shared/util/DebugPrinter;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 713
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/google/android/shared/util/ConcurrentUtils;->sPrinter:Lcom/google/android/shared/util/DebugPrinter;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 714
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/shared/util/ConcurrentUtils;->sPrinterAttached:Z

    .line 719
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 717
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/shared/util/ConcurrentUtils;->sPrinterAttached:Z

    goto :goto_0
.end method

.method static logOrDump(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "prefix"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/shared/util/ConcurrentUtils;->logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    .line 749
    return-void
.end method

.method static logOrDump(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "prefix"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "error"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "dumpMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 737
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 738
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :goto_0
    return-void

    .line 739
    :cond_0
    if-eqz p2, :cond_1

    .line 740
    const-string v0, "ConcurrentUtils"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p3, v1}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 742
    :cond_1
    const-string v0, "ConcurrentUtils"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p3, v1}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method
