.class final Lcom/google/common/collect/ip;
.super Lcom/google/common/collect/ir;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/az;


# instance fields
.field private final g:Lcom/google/common/collect/az;


# direct methods
.method constructor <init>(Lcom/google/common/collect/az;Lcom/google/common/base/aj;)V
    .locals 3

    .prologue
    .line 2210
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ir;-><init>(Ljava/util/Map;Lcom/google/common/base/aj;)V

    .line 2211
    new-instance v0, Lcom/google/common/collect/ip;

    invoke-interface {p1}, Lcom/google/common/collect/az;->inverse()Lcom/google/common/collect/az;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/ip;->a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/ip;-><init>(Lcom/google/common/collect/az;Lcom/google/common/base/aj;Lcom/google/common/collect/az;)V

    iput-object v0, p0, Lcom/google/common/collect/ip;->g:Lcom/google/common/collect/az;

    .line 2213
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/az;Lcom/google/common/base/aj;Lcom/google/common/collect/az;)V
    .locals 0

    .prologue
    .line 2217
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ir;-><init>(Ljava/util/Map;Lcom/google/common/base/aj;)V

    .line 2218
    iput-object p3, p0, Lcom/google/common/collect/ip;->g:Lcom/google/common/collect/az;

    .line 2219
    return-void
.end method

.method private static a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;
    .locals 1

    .prologue
    .line 2201
    new-instance v0, Lcom/google/common/collect/iq;

    invoke-direct {v0, p0}, Lcom/google/common/collect/iq;-><init>(Lcom/google/common/base/aj;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/google/common/collect/ip;->a:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/az;

    return-object v0
.end method

.method public final forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/google/common/collect/ip;->b:Lcom/google/common/base/aj;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 2227
    invoke-virtual {p0}, Lcom/google/common/collect/ip;->a()Lcom/google/common/collect/az;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/az;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final inverse()Lcom/google/common/collect/az;
    .locals 1

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/google/common/collect/ip;->g:Lcom/google/common/collect/az;

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2196
    invoke-virtual {p0}, Lcom/google/common/collect/ip;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/google/common/collect/ip;->g:Lcom/google/common/collect/az;

    invoke-interface {v0}, Lcom/google/common/collect/az;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
