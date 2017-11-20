.class final Lcom/google/common/collect/mt;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/ms;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ms;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/google/common/collect/mt;->b:Lcom/google/common/collect/ms;

    iput-object p2, p0, Lcom/google/common/collect/mt;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/mt;->b:Lcom/google/common/collect/ms;

    iget-object v1, v1, Lcom/google/common/collect/ms;->b:Lcom/google/common/collect/mq;

    iget-object v1, v1, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/common/collect/mt;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/mt;->b:Lcom/google/common/collect/ms;

    iget-object v1, v1, Lcom/google/common/collect/ms;->b:Lcom/google/common/collect/mq;

    iget-object v1, v1, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
