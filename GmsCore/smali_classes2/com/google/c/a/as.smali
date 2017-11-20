.class public final Lcom/google/c/a/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/c/a/am;

.field private final b:Lcom/google/c/a/am;


# direct methods
.method private constructor <init>(Lcom/google/c/a/am;Lcom/google/c/a/am;)V
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/google/c/a/as;->a:Lcom/google/c/a/am;

    .line 425
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/am;

    iput-object v0, p0, Lcom/google/c/a/as;->b:Lcom/google/c/a/am;

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/a/am;Lcom/google/c/a/am;B)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lcom/google/c/a/as;-><init>(Lcom/google/c/a/am;Lcom/google/c/a/am;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 444
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 445
    iget-object v0, p0, Lcom/google/c/a/as;->a:Lcom/google/c/a/am;

    invoke-virtual {v0, p1}, Lcom/google/c/a/am;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/google/c/a/as;->b:Lcom/google/c/a/am;

    invoke-static {v1, v0}, Lcom/google/c/a/am;->a(Lcom/google/c/a/am;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v7

    .line 448
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Chunk [%s] is not a valid entry"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v1, v2, v8}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 450
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    const-string v8, "Duplicate key [%s] found."

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v1, v9, v4

    invoke-static {v2, v8, v9}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v8, "Chunk [%s] is not a valid entry"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v0, v9, v4

    invoke-static {v2, v8, v9}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 454
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_2
    const-string v2, "Chunk [%s] is not a valid entry"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v1, v2, v7}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v2, v4

    .line 450
    goto :goto_1

    :cond_1
    move v1, v4

    .line 456
    goto :goto_2

    .line 458
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
