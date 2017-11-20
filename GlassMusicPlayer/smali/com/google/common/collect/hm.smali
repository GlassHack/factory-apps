.class Lcom/google/common/collect/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hk;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field final c:Lcom/google/common/collect/hk;

.field volatile d:Lcom/google/common/collect/hs;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/hs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hm;->d:Lcom/google/common/collect/hs;

    .line 893
    iput-object p1, p0, Lcom/google/common/collect/hm;->a:Ljava/lang/Object;

    .line 894
    iput p2, p0, Lcom/google/common/collect/hm;->b:I

    .line 895
    iput-object p3, p0, Lcom/google/common/collect/hm;->c:Lcom/google/common/collect/hk;

    .line 896
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 905
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/google/common/collect/hm;->b:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/common/collect/hm;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/common/collect/hm;->c:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 931
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 913
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 939
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 921
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/hs;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/common/collect/hm;->d:Lcom/google/common/collect/hs;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1

    .prologue
    .line 909
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 935
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 917
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 943
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/hk;)V
    .locals 1

    .prologue
    .line 925
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/hs;)V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/common/collect/hm;->d:Lcom/google/common/collect/hs;

    .line 958
    iput-object p1, p0, Lcom/google/common/collect/hm;->d:Lcom/google/common/collect/hs;

    .line 959
    invoke-interface {v0, p1}, Lcom/google/common/collect/hs;->a(Lcom/google/common/collect/hs;)V

    .line 960
    return-void
.end method
