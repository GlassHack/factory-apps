.class final Lcom/google/common/collect/hz;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3617
    iput-object p1, p0, Lcom/google/common/collect/hz;->c:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    .line 3618
    iput-object p2, p0, Lcom/google/common/collect/hz;->a:Ljava/lang/Object;

    .line 3619
    iput-object p3, p0, Lcom/google/common/collect/hz;->b:Ljava/lang/Object;

    .line 3620
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3635
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 3636
    check-cast p1, Ljava/util/Map$Entry;

    .line 3637
    iget-object v1, p0, Lcom/google/common/collect/hz;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/hz;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3639
    :cond_0
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/google/common/collect/hz;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/google/common/collect/hz;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/google/common/collect/hz;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/hz;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/google/common/collect/hz;->c:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/hz;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3651
    iput-object p1, p0, Lcom/google/common/collect/hz;->b:Ljava/lang/Object;

    .line 3652
    return-object v0
.end method
