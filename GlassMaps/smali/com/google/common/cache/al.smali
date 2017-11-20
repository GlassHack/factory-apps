.class Lcom/google/common/cache/al;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/y;


# instance fields
.field final g:I

.field final h:Lcom/google/common/cache/y;

.field volatile i:Lcom/google/common/cache/ah;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1302
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1367
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/al;->i:Lcom/google/common/cache/ah;

    .line 1303
    iput p3, p0, Lcom/google/common/cache/al;->g:I

    .line 1304
    iput-object p4, p0, Lcom/google/common/cache/al;->h:Lcom/google/common/cache/y;

    .line 1305
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 1

    .prologue
    .line 1314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1378
    iget v0, p0, Lcom/google/common/cache/al;->g:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/google/common/cache/al;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/google/common/cache/al;->h:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1330
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/cache/ah;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/common/cache/al;->i:Lcom/google/common/cache/ah;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 1

    .prologue
    .line 1340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessTime(J)V
    .locals 1

    .prologue
    .line 1318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/cache/ah;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/google/common/cache/al;->i:Lcom/google/common/cache/ah;

    .line 1375
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1

    .prologue
    .line 1344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
