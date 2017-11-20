.class abstract Lcom/google/c/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/ci;
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:I

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Collection;

.field private transient e:Ljava/util/Collection;

.field private transient f:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 120
    iput-object p1, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/google/c/c/m;I)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/c/c/m;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/c/c/m;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/c/c/m;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/c/c/m;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/m;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcom/google/c/c/ae;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/c/c/ae;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/z;)V

    .line 371
    :goto_0
    return-object v0

    .line 366
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 367
    new-instance v0, Lcom/google/c/c/ad;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/c/c/ad;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 368
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 369
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/c/c/m;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_2
    new-instance v0, Lcom/google/c/c/z;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/c/c/z;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/c/c/z;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 88
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)Ljava/util/List;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/google/c/c/m;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)Ljava/util/List;
    .locals 1

    .prologue
    .line 377
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/c/c/w;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/c/c/w;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/c/ab;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/c/c/ab;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/c/c/m;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/c/c/m;)I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/c/c/m;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/c/c/m;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/c/c/m;I)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/c/c/m;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/c/c/m;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/c/c/m;)I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/c/c/m;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/c/c/m;->b:I

    return v0
.end method

.method private f(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1022
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1023
    iget v0, p0, Lcom/google/c/c/m;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/c/c/m;->b:I

    :cond_0
    move v0, v1

    move v1, v0

    .line 1025
    :goto_0
    return v1

    .line 1016
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1014
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method abstract a()Ljava/util/Collection;
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 194
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 183
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/m;->a()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget v0, p0, Lcom/google/c/c/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/c/m;->b:I

    .line 205
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 307
    invoke-virtual {p0}, Lcom/google/c/c/m;->a()Ljava/util/Collection;

    move-result-object v1

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget v2, p0, Lcom/google/c/c/m;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/c/c/m;->b:I

    .line 312
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 315
    :cond_0
    instance-of v0, v1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, v1, Ljava/util/Set;

    if-eqz v0, :cond_2

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, v1, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/google/c/c/m;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 223
    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    if-eqz v1, :cond_1

    .line 229
    iget v2, p0, Lcom/google/c/c/m;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/c/c/m;->b:I

    .line 230
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    .line 234
    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 351
    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/google/c/c/m;->a()Ljava/util/Collection;

    move-result-object v0

    .line 354
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/c/c/m;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 335
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/c/m;->b:I

    .line 339
    return-void
.end method

.method public e()Ljava/util/Set;
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/c/c/m;->c:Ljava/util/Set;

    .line 867
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/c/c/y;

    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/y;-><init>(Lcom/google/c/c/m;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/c/c/m;->c:Ljava/util/Set;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/c/c/u;

    iget-object v1, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/u;-><init>(Lcom/google/c/c/m;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1352
    if-ne p1, p0, :cond_0

    .line 1353
    const/4 v0, 0x1

    .line 1359
    :goto_0
    return v0

    .line 1355
    :cond_0
    instance-of v0, p1, Lcom/google/c/c/ci;

    if-eqz v0, :cond_1

    .line 1356
    check-cast p1, Lcom/google/c/c/ci;

    .line 1357
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/c/c/ci;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/c/c/m;->d:Ljava/util/Collection;

    .line 1038
    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lcom/google/c/c/n;

    invoke-direct {v0, p0}, Lcom/google/c/c/n;-><init>(Lcom/google/c/c/m;)V

    iput-object v0, p0, Lcom/google/c/c/m;->d:Ljava/util/Collection;

    .line 1045
    :cond_0
    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/google/c/c/m;->e:Ljava/util/Collection;

    .line 1069
    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/c/c/dm;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/c/c/o;

    invoke-direct {v0, p0}, Lcom/google/c/c/o;-><init>(Lcom/google/c/c/m;)V

    :goto_0
    iput-object v0, p0, Lcom/google/c/c/m;->e:Ljava/util/Collection;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/c/c/p;

    invoke-direct {v0, p0}, Lcom/google/c/c/p;-><init>(Lcom/google/c/c/m;)V

    goto :goto_0
.end method

.method final h()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1104
    new-instance v0, Lcom/google/c/c/t;

    invoke-direct {v0, p0}, Lcom/google/c/c/t;-><init>(Lcom/google/c/c/m;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/c/c/m;->f:Ljava/util/Map;

    .line 1158
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/c/c/x;

    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/x;-><init>(Lcom/google/c/c/m;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/c/c/m;->f:Ljava/util/Map;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/c/c/q;

    iget-object v1, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/q;-><init>(Lcom/google/c/c/m;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/google/c/c/m;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u_()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/c/c/m;->b:I

    return v0
.end method
