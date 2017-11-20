.class final Lcom/google/common/collect/iw;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/iv;


# direct methods
.method constructor <init>(Lcom/google/common/collect/iv;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/google/common/collect/iw;->b:Lcom/google/common/collect/iv;

    iput-object p2, p0, Lcom/google/common/collect/iw;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/google/common/collect/iw;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/google/common/collect/iw;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
