.class public abstract Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.super Lcom/google/android/shared/util/NamedCallable;
.source "BaseRequestBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/shared/util/NamedCallable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 17
    .local p0, "this":Lcom/google/android/speech/network/request/BaseRequestBuilderTask;, "Lcom/google/android/speech/network/request/BaseRequestBuilderTask<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/shared/util/NamedCallable;-><init>(Ljava/lang/String;[I)V

    .line 18
    iput-object p1, p0, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;->mTag:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/google/android/speech/network/request/BaseRequestBuilderTask;, "Lcom/google/android/speech/network/request/BaseRequestBuilderTask<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 28
    .local v1, "start":J
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;->build()Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "request":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 34
    return-object v0
.end method
