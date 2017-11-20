.class Lcom/google/glass/inject/LazySingletonProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/inject/LazySingletonProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/inject/LazySingletonProvider;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    iget-object v3, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    monitor-enter v3

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    invoke-static {v2}, Lcom/google/glass/inject/LazySingletonProvider;->access$000(Lcom/google/glass/inject/LazySingletonProvider;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    invoke-static {v0}, Lcom/google/glass/inject/LazySingletonProvider;->access$000(Lcom/google/glass/inject/LazySingletonProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3

    .line 46
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    invoke-static {v2}, Lcom/google/glass/inject/LazySingletonProvider;->access$100(Lcom/google/glass/inject/LazySingletonProvider;)Lcom/google/common/base/av;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    const-string v4, "Provider not initialized: cannot get value! [class=%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-class v7, Lcom/google/glass/inject/LazySingletonProvider;

    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 41
    invoke-static {v2, v4, v5}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v2, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    iget-object v4, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    invoke-static {v4}, Lcom/google/glass/inject/LazySingletonProvider;->access$100(Lcom/google/glass/inject/LazySingletonProvider;)Lcom/google/common/base/av;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/glass/inject/LazySingletonProvider;->access$002(Lcom/google/glass/inject/LazySingletonProvider;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v2, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    invoke-static {v2}, Lcom/google/glass/inject/LazySingletonProvider;->access$000(Lcom/google/glass/inject/LazySingletonProvider;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_2
    const-string v1, "Supplier returned a null value. [class=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-class v5, Lcom/google/glass/inject/LazySingletonProvider;

    .line 45
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    .line 44
    invoke-static {v0, v1, v2}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/inject/LazySingletonProvider$1;->this$0:Lcom/google/glass/inject/LazySingletonProvider;

    invoke-static {v0}, Lcom/google/glass/inject/LazySingletonProvider;->access$000(Lcom/google/glass/inject/LazySingletonProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    move v2, v1

    .line 41
    goto :goto_1

    :cond_2
    move v0, v1

    .line 44
    goto :goto_2
.end method
