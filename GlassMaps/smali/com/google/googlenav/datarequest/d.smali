.class public interface abstract Lcom/google/googlenav/datarequest/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getQueueTime()Ljava/lang/Long;
.end method

.method public abstract getRequestType()I
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isForeground()Z
.end method

.method public abstract isImmediate()Z
.end method

.method public abstract isSubmission()Z
.end method

.method public abstract onServerFailure()V
.end method

.method public abstract readResponseData(Ljava/io/DataInput;)Z
.end method

.method public abstract retryOnFailure()Z
.end method

.method public abstract setQueueTime(Ljava/lang/Long;)V
.end method

.method public abstract usesShortbreadToken()Z
.end method

.method public abstract writeRequestData(Ljava/io/DataOutput;)V
.end method
