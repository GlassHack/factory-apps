.class public Lcom/google/common/collect/ImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ft;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lcom/google/common/collect/ImmutableListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 269
    return-void
.end method

.method public static builder()Lcom/google/common/collect/do;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/google/common/collect/do;

    invoke-direct {v0}, Lcom/google/common/collect/do;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/jt;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 6

    .prologue
    .line 239
    invoke-interface {p0}, Lcom/google/common/collect/jt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 247
    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    .line 248
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap;->isPartialView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dr;

    move-result-object v3

    .line 254
    const/4 v0, 0x0

    .line 256
    invoke-interface {p0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    .line 260
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    move v2, v0

    .line 262
    goto :goto_1

    .line 264
    :cond_3
    new-instance v0, Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v3}, Lcom/google/common/collect/dr;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableListMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private invert()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 4

    .prologue
    .line 306
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/do;

    move-result-object v1

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableListMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    .line 311
    iput-object p0, v0, Lcom/google/common/collect/ImmutableListMultimap;->inverse:Lcom/google/common/collect/ImmutableListMultimap;

    .line 312
    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/do;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 72
    invoke-virtual {v0}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/do;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 81
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 82
    invoke-virtual {v0}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/do;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 91
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 92
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 93
    invoke-virtual {v0}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/do;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 102
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 103
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 104
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 105
    invoke-virtual {v0}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/do;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 115
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 116
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 117
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 118
    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/do;

    .line 119
    invoke-virtual {v0}, Lcom/google/common/collect/do;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 352
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 353
    if-gez v4, :cond_0

    .line 354
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dr;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 359
    :goto_0
    if-ge v2, v4, :cond_3

    .line 360
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 361
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 362
    if-gtz v7, :cond_1

    .line 363
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    new-array v8, v7, [Ljava/lang/Object;

    move v0, v1

    .line 367
    :goto_1
    if-ge v0, v7, :cond_2

    .line 368
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_2
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/google/common/collect/dr;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dr;

    .line 371
    add-int/2addr v3, v7

    .line 359
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 376
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Lcom/google/common/collect/dr;->b()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 381
    sget-object v1, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/lv;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/lv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/google/common/collect/dv;->b:Lcom/google/common/collect/lv;

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/lv;->a(Ljava/lang/Object;I)V

    .line 383
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/InvalidObjectException;

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 346
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/jt;Ljava/io/ObjectOutputStream;)V

    .line 347
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/collect/ImmutableListMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    .line 283
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/common/collect/ImmutableListMultimap;->inverse:Lcom/google/common/collect/ImmutableListMultimap;

    .line 302
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableListMultimap;->invert()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableListMultimap;->inverse:Lcom/google/common/collect/ImmutableListMultimap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableListMultimap;->inverse()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
