.class final Lcom/google/common/collect/he;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3140
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3141
    new-instance v0, Lcom/google/common/collect/hf;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hf;-><init>(Lcom/google/common/collect/he;)V

    iput-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    return-void
.end method

.method private a()Lcom/google/common/collect/hk;
    .locals 2

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3191
    iget-object v1, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/google/common/collect/hk;)Z
    .locals 2

    .prologue
    .line 3180
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getPreviousExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3183
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getPreviousExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3184
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3186
    const/4 v0, 0x1

    return v0
.end method

.method private b()Lcom/google/common/collect/hk;
    .locals 2

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3196
    iget-object v1, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    if-ne v0, v1, :cond_0

    .line 3197
    const/4 v0, 0x0

    .line 3201
    :goto_0
    return-object v0

    .line 3200
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/he;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3240
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    if-eq v0, v1, :cond_0

    .line 3241
    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v1

    .line 3242
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/hk;)V

    move-object v0, v1

    .line 3244
    goto :goto_0

    .line 3246
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    iget-object v1, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0, v1}, Lcom/google/common/collect/hk;->setNextExpirable(Lcom/google/common/collect/hk;)V

    .line 3247
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    iget-object v1, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0, v1}, Lcom/google/common/collect/hk;->setPreviousExpirable(Lcom/google/common/collect/hk;)V

    .line 3248
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3219
    check-cast p1, Lcom/google/common/collect/hk;

    .line 3220
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 3252
    new-instance v0, Lcom/google/common/collect/hg;

    invoke-direct {p0}, Lcom/google/common/collect/he;->a()Lcom/google/common/collect/hk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/hg;-><init>(Lcom/google/common/collect/he;Lcom/google/common/collect/hk;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3140
    check-cast p1, Lcom/google/common/collect/hk;

    invoke-direct {p0, p1}, Lcom/google/common/collect/he;->a(Lcom/google/common/collect/hk;)Z

    move-result v0

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3140
    invoke-direct {p0}, Lcom/google/common/collect/he;->a()Lcom/google/common/collect/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3140
    invoke-direct {p0}, Lcom/google/common/collect/he;->b()Lcom/google/common/collect/hk;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3207
    check-cast p1, Lcom/google/common/collect/hk;

    .line 3208
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getPreviousExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3209
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v1

    .line 3210
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3211
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/hk;)V

    .line 3213
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 3230
    const/4 v1, 0x0

    .line 3231
    iget-object v0, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/he;->a:Lcom/google/common/collect/hk;

    if-eq v0, v2, :cond_0

    .line 3232
    add-int/lit8 v1, v1, 0x1

    .line 3231
    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextExpirable()Lcom/google/common/collect/hk;

    move-result-object v0

    goto :goto_0

    .line 3234
    :cond_0
    return v1
.end method
