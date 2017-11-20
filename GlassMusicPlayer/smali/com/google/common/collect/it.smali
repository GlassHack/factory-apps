.class final Lcom/google/common/collect/it;
.super Lcom/google/common/collect/ol;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/is;


# direct methods
.method constructor <init>(Lcom/google/common/collect/is;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/google/common/collect/it;->b:Lcom/google/common/collect/is;

    iput-object p2, p0, Lcom/google/common/collect/it;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ol;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/google/common/collect/it;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2312
    new-instance v1, Lcom/google/common/collect/iu;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/iu;-><init>(Lcom/google/common/collect/it;Ljava/util/Map$Entry;)V

    return-object v1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/google/common/collect/it;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2304
    invoke-direct {p0}, Lcom/google/common/collect/it;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
