.class final Lcom/google/common/collect/cv;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/cu;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cu;)V
    .locals 1

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cu;

    iget-object v0, p1, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/dc;-><init>(Lcom/google/common/collect/HashBiMap;)V

    .line 440
    return-void
.end method

.method private b(Lcom/google/common/collect/ct;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/google/common/collect/cw;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cw;-><init>(Lcom/google/common/collect/cv;Lcom/google/common/collect/ct;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/common/collect/ct;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/google/common/collect/cv;->b(Lcom/google/common/collect/ct;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
