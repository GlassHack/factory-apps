.class public Lcom/google/glass/inject/LazySingletonProvider;
.super Lcom/google/glass/inject/Provider;
.source "LazySingletonProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/glass/inject/Provider",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private supplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final valueSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/google/glass/inject/LazySingletonProvider;, "Lcom/google/glass/inject/LazySingletonProvider<TV;>;"
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/inject/LazySingletonProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/inject/LazySingletonProvider$1;-><init>(Lcom/google/glass/inject/LazySingletonProvider;)V

    iput-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->valueSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/inject/LazySingletonProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/inject/LazySingletonProvider;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/inject/LazySingletonProvider;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/inject/LazySingletonProvider;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/glass/inject/LazySingletonProvider;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/inject/LazySingletonProvider;)Lcom/google/common/base/Supplier;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/inject/LazySingletonProvider;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/Supplier;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/glass/inject/LazySingletonProvider;, "Lcom/google/glass/inject/LazySingletonProvider<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->valueSupplier:Lcom/google/common/base/Supplier;

    invoke-virtual {p0, v0}, Lcom/google/glass/inject/LazySingletonProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;
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

.method public declared-synchronized init(Lcom/google/common/base/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/glass/inject/LazySingletonProvider;, "Lcom/google/glass/inject/LazySingletonProvider<TV;>;"
    .local p1, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TV;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "null supplier"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/Supplier;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot initialize provider more than once!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/Supplier;
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

.method public declared-synchronized initIfNeeded(Lcom/google/common/base/Supplier;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/glass/inject/LazySingletonProvider;, "Lcom/google/glass/inject/LazySingletonProvider<TV;>;"
    .local p1, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/inject/LazySingletonProvider;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 76
    :goto_0
    monitor-exit p0

    return v0

    .line 75
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/glass/inject/LazySingletonProvider;->init(Lcom/google/common/base/Supplier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/google/glass/inject/LazySingletonProvider;, "Lcom/google/glass/inject/LazySingletonProvider<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider;->supplier:Lcom/google/common/base/Supplier;

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
