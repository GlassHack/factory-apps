.class public interface abstract Lcom/google/android/apps/lightcycle/util/ProgressCallback;
.super Ljava/lang/Object;
.source "ProgressCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDone(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onNewProgressMessage(Ljava/lang/String;)V
.end method
