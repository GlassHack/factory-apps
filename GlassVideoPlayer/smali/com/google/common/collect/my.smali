.class final Lcom/google/common/collect/my;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ai;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/mw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mw;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/common/collect/my;->b:Lcom/google/common/collect/mw;

    iput-object p2, p0, Lcom/google/common/collect/my;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/common/collect/my;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 752
    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/my;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method
