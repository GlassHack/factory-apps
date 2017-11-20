.class final Lcom/google/common/collect/mx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aj;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/google/common/collect/mw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mw;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/google/common/collect/mx;->b:Lcom/google/common/collect/mw;

    iput-object p2, p0, Lcom/google/common/collect/mx;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/common/collect/mx;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 740
    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/mx;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method
