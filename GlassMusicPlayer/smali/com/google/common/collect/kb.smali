.class final Lcom/google/common/collect/kb;
.super Lcom/google/common/collect/ks;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/ka;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ka;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/google/common/collect/kb;->b:Lcom/google/common/collect/ka;

    iput-object p2, p0, Lcom/google/common/collect/kb;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ks;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/google/common/collect/kb;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/common/collect/kb;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
