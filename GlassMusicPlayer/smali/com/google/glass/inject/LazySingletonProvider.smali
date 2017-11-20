.class public Lcom/google/glass/inject/LazySingletonProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# instance fields
.field private supplier:Lcom/google/common/base/aw;

.field private value:Ljava/lang/Object;

.field private final valueSupplier:Lcom/google/common/base/aw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/inject/LazySingletonProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/inject/LazySingletonProvider$1;-><init>(Lcom/google/glass/inject/LazySingletonProvider;)V

    iput-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->valueSupplier:Lcom/google/common/base/aw;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/inject/LazySingletonProvider;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/inject/LazySingletonProvider;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/glass/inject/LazySingletonProvider;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/inject/LazySingletonProvider;)Lcom/google/common/base/aw;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/aw;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->valueSupplier:Lcom/google/common/base/aw;

    invoke-virtual {p0, v0}, Lcom/google/glass/inject/LazySingletonProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lcom/google/common/base/aw;)V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    const-string v0, "null supplier"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/aw;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot initialize provider more than once!"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/aw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/aw;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/inject/LazySingletonProvider;->isTestInstanceSet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
