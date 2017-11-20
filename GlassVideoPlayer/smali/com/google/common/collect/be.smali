.class final Lcom/google/common/collect/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ai;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/bd;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bd;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/common/collect/be;->b:Lcom/google/common/collect/bd;

    iput-object p2, p0, Lcom/google/common/collect/be;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/common/collect/be;->b:Lcom/google/common/collect/bd;

    iget-object v0, v0, Lcom/google/common/collect/bd;->b:Lcom/google/common/base/ai;

    invoke-interface {v0, p1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/be;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
