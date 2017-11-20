.class Lcom/google/common/collect/ir;
.super Lcom/google/common/collect/ii;
.source "SourceFile"


# instance fields
.field final d:Ljava/util/Set;

.field e:Ljava/util/Set;

.field f:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/aj;)V
    .locals 2

    .prologue
    .line 2283
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ii;-><init>(Ljava/util/Map;Lcom/google/common/base/aj;)V

    .line 2284
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ir;->b:Lcom/google/common/base/aj;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/aj;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ir;->d:Ljava/util/Set;

    .line 2285
    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 2

    .prologue
    .line 2338
    new-instance v0, Lcom/google/common/collect/iv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/iv;-><init>(Lcom/google/common/collect/ir;Lcom/google/common/collect/ia;)V

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/google/common/collect/ir;->e:Ljava/util/Set;

    .line 2292
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/is;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/is;-><init>(Lcom/google/common/collect/ir;Lcom/google/common/collect/ia;)V

    iput-object v0, p0, Lcom/google/common/collect/ir;->e:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/google/common/collect/ir;->f:Ljava/util/Set;

    .line 2334
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/ir;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ir;->f:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
