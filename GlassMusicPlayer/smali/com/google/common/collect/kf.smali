.class final Lcom/google/common/collect/kf;
.super Lcom/google/common/collect/iz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/google/common/collect/kf;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/iz;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/google/common/collect/kf;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1298
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/google/common/collect/kf;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1304
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final b()Ljava/util/Set;
    .locals 2

    .prologue
    .line 1284
    new-instance v0, Lcom/google/common/collect/kg;

    iget-object v1, p0, Lcom/google/common/collect/kf;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/kg;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/google/common/collect/kf;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/google/common/collect/kf;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/google/common/collect/kf;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
