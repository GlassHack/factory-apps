.class final Lcom/google/common/collect/ih;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ol;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ol;)V
    .locals 0

    .prologue
    .line 2672
    iput-object p1, p0, Lcom/google/common/collect/ih;->a:Lcom/google/common/collect/ol;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/google/common/collect/ih;->a:Lcom/google/common/collect/ol;

    invoke-virtual {v0}, Lcom/google/common/collect/ol;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/google/common/collect/ih;->a:Lcom/google/common/collect/ol;

    invoke-virtual {v0}, Lcom/google/common/collect/ol;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
