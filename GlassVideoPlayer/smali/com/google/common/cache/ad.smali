.class Lcom/google/common/cache/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/y;


# instance fields
.field final g:Ljava/lang/Object;

.field final h:I

.field final i:Lcom/google/common/cache/y;

.field volatile j:Lcom/google/common/cache/ah;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V
    .locals 1
    .param p3    # Lcom/google/common/cache/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ad;->j:Lcom/google/common/cache/ah;

    .line 1032
    iput-object p1, p0, Lcom/google/common/cache/ad;->g:Ljava/lang/Object;

    .line 1033
    iput p2, p0, Lcom/google/common/cache/ad;->h:I

    .line 1034
    iput-object p3, p0, Lcom/google/common/cache/ad;->i:Lcom/google/common/cache/y;

    .line 1035
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 1

    .prologue
    .line 1044
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/google/common/cache/ad;->h:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/common/cache/ad;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/common/cache/ad;->i:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1052
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1086
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/cache/ah;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/common/cache/ad;->j:Lcom/google/common/cache/ah;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 1

    .prologue
    .line 1070
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessTime(J)V
    .locals 1

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1056
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1082
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1064
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 1

    .prologue
    .line 1090
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/cache/ah;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/google/common/cache/ad;->j:Lcom/google/common/cache/ah;

    .line 1105
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
