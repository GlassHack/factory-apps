.class final Lcom/google/common/collect/hb;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3014
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3015
    new-instance v0, Lcom/google/common/collect/hc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hc;-><init>(Lcom/google/common/collect/hb;)V

    iput-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    return-void
.end method

.method private a()Lcom/google/common/collect/hk;
    .locals 2

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3057
    iget-object v1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/google/common/collect/hk;)Z
    .locals 2

    .prologue
    .line 3046
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getPreviousEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3049
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getPreviousEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3050
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3052
    const/4 v0, 0x1

    return v0
.end method

.method private b()Lcom/google/common/collect/hk;
    .locals 2

    .prologue
    .line 3061
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3062
    iget-object v1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    if-ne v0, v1, :cond_0

    .line 3063
    const/4 v0, 0x0

    .line 3067
    :goto_0
    return-object v0

    .line 3066
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/hb;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3106
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    if-eq v0, v1, :cond_0

    .line 3107
    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v1

    .line 3108
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyEvictable(Lcom/google/common/collect/hk;)V

    move-object v0, v1

    .line 3110
    goto :goto_0

    .line 3112
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    iget-object v1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0, v1}, Lcom/google/common/collect/hk;->setNextEvictable(Lcom/google/common/collect/hk;)V

    .line 3113
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    iget-object v1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0, v1}, Lcom/google/common/collect/hk;->setPreviousEvictable(Lcom/google/common/collect/hk;)V

    .line 3114
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3085
    check-cast p1, Lcom/google/common/collect/hk;

    .line 3086
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

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
    .line 3091
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

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
    .line 3118
    new-instance v0, Lcom/google/common/collect/hd;

    invoke-direct {p0}, Lcom/google/common/collect/hb;->a()Lcom/google/common/collect/hk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/hd;-><init>(Lcom/google/common/collect/hb;Lcom/google/common/collect/hk;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3014
    check-cast p1, Lcom/google/common/collect/hk;

    invoke-direct {p0, p1}, Lcom/google/common/collect/hb;->a(Lcom/google/common/collect/hk;)Z

    move-result v0

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3014
    invoke-direct {p0}, Lcom/google/common/collect/hb;->a()Lcom/google/common/collect/hk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3014
    invoke-direct {p0}, Lcom/google/common/collect/hb;->b()Lcom/google/common/collect/hk;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3073
    check-cast p1, Lcom/google/common/collect/hk;

    .line 3074
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getPreviousEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    .line 3075
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v1

    .line 3076
    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 3077
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyEvictable(Lcom/google/common/collect/hk;)V

    .line 3079
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
    .line 3096
    const/4 v1, 0x0

    .line 3097
    iget-object v0, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/hb;->a:Lcom/google/common/collect/hk;

    if-eq v0, v2, :cond_0

    .line 3098
    add-int/lit8 v1, v1, 0x1

    .line 3097
    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNextEvictable()Lcom/google/common/collect/hk;

    move-result-object v0

    goto :goto_0

    .line 3100
    :cond_0
    return v1
.end method
