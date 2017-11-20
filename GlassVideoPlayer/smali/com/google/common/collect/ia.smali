.class final Lcom/google/common/collect/ia;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/v;)V
    .locals 0

    .prologue
    .line 781
    iput-object p2, p0, Lcom/google/common/collect/ia;->a:Lcom/google/common/base/v;

    invoke-direct {p0, p1}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/common/collect/ia;->a:Lcom/google/common/base/v;

    invoke-interface {v0, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/google/common/collect/ia;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
