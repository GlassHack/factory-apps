.class final Lcom/google/common/collect/cy;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/cx;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cx;)V
    .locals 1

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/common/collect/cy;->a:Lcom/google/common/collect/cx;

    iget-object v0, p1, Lcom/google/common/collect/cx;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/dc;-><init>(Lcom/google/common/collect/HashBiMap;)V

    .line 594
    return-void
.end method

.method private b(Lcom/google/common/collect/ct;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 591
    new-instance v0, Lcom/google/common/collect/cz;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cz;-><init>(Lcom/google/common/collect/cy;Lcom/google/common/collect/ct;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/common/collect/ct;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/google/common/collect/cy;->b(Lcom/google/common/collect/ct;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
