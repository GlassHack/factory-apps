.class public Lcom/google/glass/inject/Provider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private testInstance:Ljava/lang/Object;

.field private testInstanceSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearTestInstance()V
    .locals 1

    .prologue
    .line 35
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

.method protected declared-synchronized get(Lcom/google/common/base/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
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
    invoke-interface {p1}, Lcom/google/common/base/av;->get()Ljava/lang/Object;
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

    .prologue
    .line 22
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
