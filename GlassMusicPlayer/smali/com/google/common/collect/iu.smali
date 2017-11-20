.class final Lcom/google/common/collect/iu;
.super Lcom/google/common/collect/cl;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/it;


# direct methods
.method constructor <init>(Lcom/google/common/collect/it;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/google/common/collect/iu;->b:Lcom/google/common/collect/it;

    iput-object p2, p0, Lcom/google/common/collect/iu;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/cl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/google/common/collect/iu;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2312
    invoke-virtual {p0}, Lcom/google/common/collect/iu;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/google/common/collect/iu;->b:Lcom/google/common/collect/it;

    iget-object v0, v0, Lcom/google/common/collect/it;->b:Lcom/google/common/collect/is;

    iget-object v0, v0, Lcom/google/common/collect/is;->a:Lcom/google/common/collect/ir;

    iget-object v1, p0, Lcom/google/common/collect/iu;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ir;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 2321
    invoke-super {p0, p1}, Lcom/google/common/collect/cl;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
