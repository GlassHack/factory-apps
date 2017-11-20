.class final Lcom/google/common/collect/ju;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/google/common/collect/ju;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/common/collect/ju;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/common/collect/ju;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/google/common/collect/ju;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
