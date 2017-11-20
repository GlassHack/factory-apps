.class public Lcom/google/glass/inject/InitializableProvider;
.super Lcom/google/glass/inject/Provider;
.source "InitializableProvider.java"


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
    .line 14
    .local p0, "this":Lcom/google/glass/inject/InitializableProvider;, "Lcom/google/glass/inject/InitializableProvider<TV;>;"
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 22
    new-instance v0, Lcom/google/glass/inject/InitializableProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/inject/InitializableProvider$1;-><init>(Lcom/google/glass/inject/InitializableProvider;)V

    iput-object v0, p0, Lcom/google/glass/inject/InitializableProvider;->valueSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/inject/InitializableProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/inject/InitializableProvider;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider;->value:Ljava/lang/Object;

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
    .line 57
    .local p0, "this":Lcom/google/glass/inject/InitializableProvider;, "Lcom/google/glass/inject/InitializableProvider<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider;->valueSupplier:Lcom/google/common/base/Supplier;

    invoke-virtual {p0, v0}, Lcom/google/glass/inject/InitializableProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;
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

.method public declared-synchronized init(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/glass/inject/InitializableProvider;, "Lcom/google/glass/inject/InitializableProvider<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    const-string v0, "null value"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot initialize provider more than once!"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/google/glass/inject/InitializableProvider;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/google/glass/inject/InitializableProvider;, "Lcom/google/glass/inject/InitializableProvider<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/inject/InitializableProvider;->isTestInstanceSet()Z
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
