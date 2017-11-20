.class final Lcom/google/common/collect/dp;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/common/collect/dp;->b:Lcom/google/common/collect/ImmutableMap$1MapViewOfValuesAsSingletonSets$1;

    iput-object p2, p0, Lcom/google/common/collect/dp;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/common/collect/dp;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 469
    new-instance v1, Lcom/google/common/collect/dq;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dq;-><init>(Lcom/google/common/collect/dp;Ljava/util/Map$Entry;)V

    return-object v1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/common/collect/dp;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/google/common/collect/dp;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
