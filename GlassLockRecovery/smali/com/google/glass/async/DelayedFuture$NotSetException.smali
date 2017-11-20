.class public Lcom/google/glass/async/DelayedFuture$NotSetException;
.super Ljava/util/concurrent/ExecutionException;
.source "DelayedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/async/DelayedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotSetException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 192
    const-string v0, "Neither the callback nor the future is set"

    invoke-direct {p0, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;)V

    .line 193
    return-void
.end method
