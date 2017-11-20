.class Lcom/google/common/collect/Maps$UnmodifiableBiMap;
.super Lcom/google/common/collect/ck;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/az;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/az;

.field inverse:Lcom/google/common/collect/az;

.field final unmodifiableMap:Ljava/util/Map;

.field transient values:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/az;Lcom/google/common/collect/az;)V
    .locals 1
    .param p2    # Lcom/google/common/collect/az;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/google/common/collect/ck;-><init>()V

    .line 1203
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    .line 1204
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/az;

    .line 1205
    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/az;

    .line 1206
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inverse()Lcom/google/common/collect/az;
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/az;

    .line 1219
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/az;

    invoke-interface {v1}, Lcom/google/common/collect/az;->inverse()Lcom/google/common/collect/az;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lcom/google/common/collect/az;Lcom/google/common/collect/az;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->inverse:Lcom/google/common/collect/az;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    .line 1226
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->delegate:Lcom/google/common/collect/az;

    invoke-interface {v0}, Lcom/google/common/collect/az;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
