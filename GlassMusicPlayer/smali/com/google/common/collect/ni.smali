.class final Lcom/google/common/collect/ni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/nh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/nh;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/common/collect/ni;->b:Lcom/google/common/collect/nh;

    iput-object p2, p0, Lcom/google/common/collect/ni;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/common/collect/ni;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 464
    new-instance v1, Lcom/google/common/collect/nj;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/nj;-><init>(Lcom/google/common/collect/ni;Ljava/util/Map$Entry;)V

    return-object v1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/common/collect/ni;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/google/common/collect/ni;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/common/collect/ni;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/ni;->b:Lcom/google/common/collect/nh;

    iget-object v0, v0, Lcom/google/common/collect/nh;->a:Lcom/google/common/collect/nf;

    invoke-virtual {v0}, Lcom/google/common/collect/nf;->c()V

    .line 486
    return-void
.end method
