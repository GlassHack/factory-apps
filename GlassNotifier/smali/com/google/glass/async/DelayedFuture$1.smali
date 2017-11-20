.class Lcom/google/glass/async/DelayedFuture$1;
.super Ljava/lang/Object;
.source "DelayedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/async/DelayedFuture;->getAsync(Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

.field final synthetic val$defaultValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/glass/async/DelayedFuture;Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/async/DelayedFuture;

    .prologue
    .line 161
    .local p0, "this":Lcom/google/glass/async/DelayedFuture$1;, "Lcom/google/glass/async/DelayedFuture$1;"
    iput-object p2, p0, Lcom/google/glass/async/DelayedFuture$1;->val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

    iput-object p3, p0, Lcom/google/glass/async/DelayedFuture$1;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    .local p0, "this":Lcom/google/glass/async/DelayedFuture$1;, "Lcom/google/glass/async/DelayedFuture$1;"
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture$1;->val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

    iget-object v1, p0, Lcom/google/glass/async/DelayedFuture$1;->val$defaultValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;->onResultReady(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/glass/async/DelayedFuture$1;, "Lcom/google/glass/async/DelayedFuture$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/glass/async/DelayedFuture$1;->val$callback:Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/async/DelayedFuture$SimpleFutureCallback;->onResultReady(Ljava/lang/Object;)V

    .line 165
    return-void
.end method
