.class public abstract Lcom/google/c/j/a/k;
.super Lcom/google/c/j/a/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/c/j/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/google/c/j/a/v;
.end method

.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/c/j/a/k;->a()Lcom/google/c/j/a/v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/c/j/a/v;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 48
    return-void
.end method

.method protected synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/c/j/a/k;->a()Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/c/j/a/k;->a()Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method
