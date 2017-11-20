.class final Lcom/google/common/util/concurrent/Futures$CallbackListener;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final callback:Lcom/google/common/util/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<-TV;>;"
        }
    .end annotation
.end field

.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CallbackListener;, "Lcom/google/common/util/concurrent/Futures$CallbackListener<TV;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p2, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    .line 1219
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    .line 1220
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1226
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CallbackListener;, "Lcom/google/common/util/concurrent/Futures$CallbackListener<TV;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 1237
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v1}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1238
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1230
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1233
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1242
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CallbackListener;, "Lcom/google/common/util/concurrent/Futures$CallbackListener<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
