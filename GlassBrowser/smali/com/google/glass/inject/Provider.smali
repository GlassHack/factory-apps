.class public Lcom/google/glass/inject/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private testInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private testInstanceSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/google/glass/inject/Provider;, "Lcom/google/glass/inject/Provider<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearTestInstance()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/google/glass/inject/Provider;, "Lcom/google/glass/inject/Provider<TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/inject/Provider;->testInstanceSet:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/inject/Provider;->testInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/glass/inject/Provider;, "Lcom/google/glass/inject/Provider<TV;>;"
    .local p1, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/inject/Provider;->testInstanceSet:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/glass/inject/Provider;->testInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isTestInstanceSet()Z
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/google/glass/inject/Provider;, "Lcom/google/glass/inject/Provider<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/inject/Provider;->testInstanceSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTestInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/google/glass/inject/Provider;, "Lcom/google/glass/inject/Provider<TV;>;"
    .local p1, "testInstance":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/inject/Provider;->testInstanceSet:Z

    .line 26
    iput-object p1, p0, Lcom/google/glass/inject/Provider;->testInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
