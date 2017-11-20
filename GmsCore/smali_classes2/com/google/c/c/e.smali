.class public abstract Lcom/google/c/c/e;
.super Lcom/google/c/c/ek;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/c/c/ek;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/c/c/e;->a:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/c/c/e;->a:Ljava/lang/Object;

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
    .line 72
    invoke-virtual {p0}, Lcom/google/c/c/e;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/e;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v1, p0, Lcom/google/c/c/e;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/c/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/c/c/e;->a:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/c/c/e;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/c/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/c/c/e;->a:Ljava/lang/Object;

    throw v0
.end method
