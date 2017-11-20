.class final Lcom/google/common/collect/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hs;


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/common/collect/bk;->a:Ljava/lang/Throwable;

    .line 212
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)Lcom/google/common/collect/hs;
    .locals 0

    .prologue
    .line 223
    return-object p0
.end method

.method public final a(Lcom/google/common/collect/hs;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/collect/bk;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method
