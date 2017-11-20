.class Lcom/google/glass/inject/InitializableProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/inject/InitializableProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/inject/InitializableProvider;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/inject/InitializableProvider$1;->this$0:Lcom/google/glass/inject/InitializableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider$1;->this$0:Lcom/google/glass/inject/InitializableProvider;

    invoke-static {v0}, Lcom/google/glass/inject/InitializableProvider;->access$000(Lcom/google/glass/inject/InitializableProvider;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Provider not initialized: cannot get value! [class=%s]"

    new-array v1, v1, [Ljava/lang/Object;

    const-class v4, Lcom/google/glass/inject/InitializableProvider;

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v2

    .line 25
    invoke-static {v0, v3, v1}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider$1;->this$0:Lcom/google/glass/inject/InitializableProvider;

    invoke-static {v0}, Lcom/google/glass/inject/InitializableProvider;->access$000(Lcom/google/glass/inject/InitializableProvider;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 25
    goto :goto_0
.end method
