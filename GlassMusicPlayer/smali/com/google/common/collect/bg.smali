.class final Lcom/google/common/collect/bg;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Lcom/google/common/base/w;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/w;)V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 286
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/bg;->a:Ljava/util/Collection;

    .line 287
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/w;

    iput-object v0, p0, Lcom/google/common/collect/bg;->b:Lcom/google/common/base/w;

    .line 288
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/common/collect/bg;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 293
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/common/collect/bg;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/common/collect/bg;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bg;->b:Lcom/google/common/base/w;

    invoke-static {v0, v1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Lcom/google/common/base/w;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/collect/bg;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
