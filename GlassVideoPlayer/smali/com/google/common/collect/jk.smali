.class final Lcom/google/common/collect/jk;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/jj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jj;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/google/common/collect/jk;->b:Lcom/google/common/collect/jj;

    iput-object p2, p0, Lcom/google/common/collect/jk;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/google/common/collect/jk;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/google/common/collect/jk;->b:Lcom/google/common/collect/jj;

    iget-object v0, v0, Lcom/google/common/collect/jj;->a:Lcom/google/common/collect/ji;

    iget-object v0, v0, Lcom/google/common/collect/ji;->a:Lcom/google/common/collect/jh;

    iget-object v0, v0, Lcom/google/common/collect/jh;->b:Lcom/google/common/collect/io;

    iget-object v1, p0, Lcom/google/common/collect/jk;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/jk;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/io;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
