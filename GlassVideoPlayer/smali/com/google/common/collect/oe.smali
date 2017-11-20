.class final Lcom/google/common/collect/oe;
.super Lcom/google/common/collect/nf;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field final f:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field transient h:Ljava/util/SortedMap;

.field final synthetic i:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/oe;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/nf;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    .line 187
    iput-object p3, p0, Lcom/google/common/collect/oe;->f:Ljava/lang/Object;

    .line 188
    iput-object p4, p0, Lcom/google/common/collect/oe;->g:Ljava/lang/Object;

    .line 189
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 191
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/common/collect/oe;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 201
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/oe;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/oe;->f:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/oe;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/oe;->g:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/common/collect/oe;->h:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/oe;->h:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/oe;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/oe;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/oe;->h:Ljava/util/SortedMap;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/oe;->h:Ljava/util/SortedMap;

    return-object v0
.end method

.method private e()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private f()Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/google/common/collect/oe;->d()Ljava/util/SortedMap;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_2

    .line 262
    iget-object v1, p0, Lcom/google/common/collect/oe;->f:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/common/collect/oe;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/oe;->g:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/google/common/collect/oe;->g:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 270
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/common/collect/oe;->e()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/common/collect/oe;->f()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-direct {p0}, Lcom/google/common/collect/oe;->d()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/oe;->h:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/oe;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iput-object v2, p0, Lcom/google/common/collect/oe;->h:Ljava/util/SortedMap;

    .line 278
    iput-object v2, p0, Lcom/google/common/collect/oe;->b:Ljava/util/Map;

    .line 280
    :cond_0
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/nf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/common/collect/oe;->e()Ljava/util/SortedMap;

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/oe;->e()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 216
    new-instance v0, Lcom/google/common/collect/oe;

    iget-object v1, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/oe;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/oe;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/collect/oe;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/google/common/collect/oe;->e()Ljava/util/SortedMap;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/oe;->e()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 289
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 290
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/nf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 211
    new-instance v0, Lcom/google/common/collect/oe;

    iget-object v1, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/oe;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/oe;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4

    .prologue
    .line 220
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/oe;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 221
    new-instance v0, Lcom/google/common/collect/oe;

    iget-object v1, p0, Lcom/google/common/collect/oe;->i:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/oe;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/oe;->g:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/collect/oe;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
