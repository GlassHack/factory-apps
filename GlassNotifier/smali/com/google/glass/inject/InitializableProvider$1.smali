.class Lcom/google/glass/inject/InitializableProvider$1;
.super Ljava/lang/Object;
.source "InitializableProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/inject/InitializableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/inject/InitializableProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/inject/InitializableProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/inject/InitializableProvider;

    .prologue
    .line 22
    .local p0, "this":Lcom/google/glass/inject/InitializableProvider$1;, "Lcom/google/glass/inject/InitializableProvider$1;"
    iput-object p1, p0, Lcom/google/glass/inject/InitializableProvider$1;->this$0:Lcom/google/glass/inject/InitializableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/google/glass/inject/InitializableProvider$1;, "Lcom/google/glass/inject/InitializableProvider$1;"
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider$1;->this$0:Lcom/google/glass/inject/InitializableProvider;

    invoke-static {v0}, Lcom/google/glass/inject/InitializableProvider;->access$000(Lcom/google/glass/inject/InitializableProvider;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Provider not initialized: cannot get value! [provider class=%s]"

    iget-object v2, p0, Lcom/google/glass/inject/InitializableProvider$1;->this$0:Lcom/google/glass/inject/InitializableProvider;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/google/glass/inject/InitializableProvider$1;->this$0:Lcom/google/glass/inject/InitializableProvider;

    invoke-static {v0}, Lcom/google/glass/inject/InitializableProvider;->access$000(Lcom/google/glass/inject/InitializableProvider;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
