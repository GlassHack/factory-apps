.class abstract Lcom/google/common/collect/iz;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2417
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b()Ljava/util/Set;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/google/common/collect/iz;->a:Ljava/util/Set;

    .line 2430
    if-nez v0, :cond_0

    .line 2431
    invoke-virtual {p0}, Lcom/google/common/collect/iz;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/iz;->a:Ljava/util/Set;

    .line 2433
    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/google/common/collect/iz;->b:Ljava/util/Set;

    .line 2441
    if-nez v0, :cond_0

    .line 2442
    new-instance v0, Lcom/google/common/collect/ja;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ja;-><init>(Lcom/google/common/collect/iz;)V

    iput-object v0, p0, Lcom/google/common/collect/iz;->b:Ljava/util/Set;

    .line 2449
    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/google/common/collect/iz;->c:Ljava/util/Collection;

    .line 2457
    if-nez v0, :cond_0

    .line 2458
    new-instance v0, Lcom/google/common/collect/jb;

    invoke-direct {v0, p0}, Lcom/google/common/collect/jb;-><init>(Lcom/google/common/collect/iz;)V

    iput-object v0, p0, Lcom/google/common/collect/iz;->c:Ljava/util/Collection;

    .line 2465
    :cond_0
    return-object v0
.end method
