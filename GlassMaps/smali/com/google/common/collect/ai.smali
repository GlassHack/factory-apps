.class public abstract Lcom/google/common/collect/ai;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/common/collect/ai;->a:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/collect/ai;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/common/collect/ai;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ai;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v1, p0, Lcom/google/common/collect/ai;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ai;->a:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/ai;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ai;->a:Ljava/lang/Object;

    throw v0
.end method
