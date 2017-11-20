.class public Lcom/google/glass/async/MainThreadExecutorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager$MainThreadExecutorHolder;->access$000()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static setMainThreadExecutorForTest(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 57
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p0}, Lcom/google/glass/async/MainThreadExecutorManager$MainThreadExecutorHolder;->access$002(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 59
    return-void
.end method
