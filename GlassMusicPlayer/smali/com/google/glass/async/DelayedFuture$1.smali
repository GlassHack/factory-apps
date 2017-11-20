.class Lcom/google/glass/async/DelayedFuture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/e;


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/DelayedFuture;

.field final synthetic val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

.field final synthetic val$defaultValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/glass/async/DelayedFuture;Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/async/DelayedFuture$1;->this$0:Lcom/google/glass/async/DelayedFuture;

    iput-object p2, p0, Lcom/google/glass/async/DelayedFuture$1;->val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

    iput-object p3, p0, Lcom/google/glass/async/DelayedFuture$1;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture$1;->val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

    iget-object v1, p0, Lcom/google/glass/async/DelayedFuture$1;->val$defaultValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;->onResultReady(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture$1;->val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;->onResultReady(Ljava/lang/Object;)V

    .line 164
    return-void
.end method
