.class final Lcom/google/common/collect/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/gl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/gl;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/common/collect/gm;->b:Lcom/google/common/collect/gl;

    iput-object p2, p0, Lcom/google/common/collect/gm;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/common/collect/gm;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/common/collect/gm;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/google/common/collect/gm;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/common/collect/gm;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 553
    return-void
.end method
