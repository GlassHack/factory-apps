.class final Lcom/google/common/collect/dq;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/dp;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dp;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/common/collect/dq;->b:Lcom/google/common/collect/dp;

    iput-object p2, p0, Lcom/google/common/collect/dq;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method

.method private a()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/common/collect/dq;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/common/collect/dq;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/google/common/collect/dq;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
