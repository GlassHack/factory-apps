.class final Lcom/google/common/collect/gk;
.super Lcom/google/common/collect/ch;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/gj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/gj;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/google/common/collect/gk;->b:Lcom/google/common/collect/gj;

    iput-object p2, p0, Lcom/google/common/collect/gk;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ch;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/common/collect/gk;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/gk;->b:Lcom/google/common/collect/gj;

    invoke-static {v1}, Lcom/google/common/collect/gj;->a(Lcom/google/common/collect/gj;)Lcom/google/common/collect/gf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->b(Ljava/util/Map$Entry;Lcom/google/common/collect/gf;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/common/collect/gk;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/common/collect/gk;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/google/common/collect/gk;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
