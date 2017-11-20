.class final Lcom/google/common/collect/ik;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ij;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ij;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/google/common/collect/ik;->b:Lcom/google/common/collect/ij;

    iput-object p2, p0, Lcom/google/common/collect/ik;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/google/common/collect/ik;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/google/common/collect/ik;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
