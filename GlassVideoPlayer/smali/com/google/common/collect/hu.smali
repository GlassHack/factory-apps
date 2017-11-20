.class Lcom/google/common/collect/hu;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hk;


# instance fields
.field final a:I

.field final b:Lcom/google/common/collect/hk;

.field volatile c:Lcom/google/common/collect/hs;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/hk;)V
    .locals 1
    .param p4    # Lcom/google/common/collect/hk;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1374
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1431
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/hs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hu;->c:Lcom/google/common/collect/hs;

    .line 1375
    iput p3, p0, Lcom/google/common/collect/hu;->a:I

    .line 1376
    iput-object p4, p0, Lcom/google/common/collect/hu;->b:Lcom/google/common/collect/hk;

    .line 1377
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 1386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lcom/google/common/collect/hu;->a:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/google/common/collect/hu;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/google/common/collect/hu;->b:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1402
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/hs;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/google/common/collect/hu;->c:Lcom/google/common/collect/hs;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1

    .prologue
    .line 1390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 1416
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 1398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 1424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 1406
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/hs;)V
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/common/collect/hu;->c:Lcom/google/common/collect/hs;

    .line 1439
    iput-object p1, p0, Lcom/google/common/collect/hu;->c:Lcom/google/common/collect/hs;

    .line 1440
    invoke-interface {v0, p1}, Lcom/google/common/collect/hs;->a(Lcom/google/common/collect/hs;)V

    .line 1441
    return-void
.end method
