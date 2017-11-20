.class final Lcom/google/common/collect/nn;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/nm;


# direct methods
.method constructor <init>(Lcom/google/common/collect/nm;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/google/common/collect/nn;->a:Lcom/google/common/collect/nm;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 995
    new-instance v0, Lcom/google/common/collect/ImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/nn;->a:Lcom/google/common/collect/nm;

    iget-object v1, v1, Lcom/google/common/collect/nm;->a:Lcom/google/common/collect/nl;

    iget-object v1, v1, Lcom/google/common/collect/nl;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 991
    invoke-direct {p0, p1}, Lcom/google/common/collect/nn;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
