.class final Lcom/google/common/collect/gh;
.super Lcom/google/common/collect/cl;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/gf;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/common/collect/gh;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/gh;->b:Lcom/google/common/collect/gf;

    invoke-direct {p0}, Lcom/google/common/collect/cl;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/common/collect/gh;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/google/common/collect/gi;

    invoke-direct {v1, p0}, Lcom/google/common/collect/gi;-><init>(Lcom/google/common/collect/gh;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/common/collect/gh;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/common/collect/gh;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/common/collect/gh;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
