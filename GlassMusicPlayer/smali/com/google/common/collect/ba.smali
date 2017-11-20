.class final Lcom/google/common/collect/ba;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableList;

.field private final transient b:[I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    .line 54
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [I

    .line 55
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    aput v1, v2, v0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 58
    add-int/lit8 v0, v1, 0x1

    aget v3, v2, v0

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/common/b/a;->b(II)I

    move-result v0

    aput v0, v2, v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cartesian product too large; must have size at most Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object v2, p0, Lcom/google/common/collect/ba;->b:[I

    .line 65
    return-void
.end method

.method private a(II)I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/collect/ba;->b:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    div-int v1, p1, v0

    iget-object v0, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v1, v0

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/ba;II)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ba;->a(II)I

    move-result v0

    return v0
.end method

.method private a(I)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/common/collect/ba;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(II)I

    .line 74
    new-instance v0, Lcom/google/common/collect/CartesianList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CartesianList$1;-><init>(Lcom/google/common/collect/ba;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/ba;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 41
    new-instance v1, Lcom/google/common/collect/dm;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/dm;-><init>(I)V

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 49
    :goto_1
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/common/collect/dm;->b(Ljava/lang/Object;)Lcom/google/common/collect/dm;

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lcom/google/common/collect/ba;

    invoke-virtual {v1}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ba;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_1
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 114
    :goto_0
    return v0

    .line 103
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 108
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    .line 110
    iget-object v3, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 111
    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/common/collect/ba;->a(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 119
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v2

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v1, v2

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 127
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 130
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 131
    if-ne v5, v2, :cond_3

    move v1, v2

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr v0, v5

    move v1, v0

    .line 135
    goto :goto_1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 141
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v2

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v1, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 149
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 152
    invoke-interface {v0, v5}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    .line 153
    if-ne v5, v2, :cond_3

    move v1, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr v0, v5

    move v1, v0

    .line 157
    goto :goto_1
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/common/collect/ba;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
