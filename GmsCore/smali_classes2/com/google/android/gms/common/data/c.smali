.class public final Lcom/google/android/gms/common/data/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected final a:Lcom/google/android/gms/common/data/b;

.field protected b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/b;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/b;

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->a:Lcom/google/android/gms/common/data/b;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/data/c;->b:I

    .line 23
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/gms/common/data/c;->b:I

    iget-object v1, p0, Lcom/google/android/gms/common/data/c;->a:Lcom/google/android/gms/common/data/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/b;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/c;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot advance the iterator beyond "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/common/data/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->a:Lcom/google/android/gms/common/data/b;

    iget v1, p0, Lcom/google/android/gms/common/data/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/data/c;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove elements from a DataBufferIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
