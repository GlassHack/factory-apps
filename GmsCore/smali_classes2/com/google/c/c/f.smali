.class abstract Lcom/google/c/c/f;
.super Lcom/google/c/c/af;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/c/c/af;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    .line 64
    invoke-super {p0}, Lcom/google/c/c/af;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/c/c/f;->b:J

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/google/c/c/f;Ljava/lang/Object;Ljava/util/Map;)I
    .locals 6

    .prologue
    .line 49
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/c/c/ao;->b()I

    move-result v0

    iget-wide v2, p0, Lcom/google/c/c/f;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/c/c/f;->b:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/c/c/f;J)J
    .locals 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/c/c/f;->b:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/c/c/f;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/c/c/f;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/c/c/f;)J
    .locals 4

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/c/c/f;->b:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/c/c/f;->b:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    .line 210
    if-nez v0, :cond_0

    move v0, v1

    .line 214
    :goto_0
    return v0

    .line 210
    :cond_0
    iget v0, v0, Lcom/google/c/c/ao;->a:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    if-nez p2, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/c/c/f;->a(Ljava/lang/Object;)I

    move-result v2

    .line 246
    :goto_0
    return v2

    .line 231
    :cond_0
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "occurrences cannot be negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    .line 235
    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/c/c/ao;

    invoke-direct {v1, p2}, Lcom/google/c/c/ao;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_2
    iget-wide v0, p0, Lcom/google/c/c/f;->b:J

    int-to-long v4, p2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/c/c/f;->b:J

    goto :goto_0

    :cond_1
    move v0, v2

    .line 231
    goto :goto_1

    .line 239
    :cond_2
    iget v4, v0, Lcom/google/c/c/ao;->a:I

    .line 240
    int-to-long v6, v4

    int-to-long v8, p2

    add-long/2addr v6, v8

    .line 241
    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    move v3, v1

    :goto_3
    const-string v5, "too many occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v3, v5, v1}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget v1, v0, Lcom/google/c/c/ao;->a:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/c/c/ao;->a:I

    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v2

    .line 241
    goto :goto_3
.end method

.method public a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/c/c/af;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    if-nez p2, :cond_1

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/c/c/f;->a(Ljava/lang/Object;)I

    move-result v2

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 253
    :cond_1
    if-lez p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "occurrences cannot be negative: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    .line 256
    if-eqz v0, :cond_0

    .line 260
    iget v1, v0, Lcom/google/c/c/ao;->a:I

    .line 263
    if-le v1, p2, :cond_3

    .line 270
    :goto_2
    neg-int v2, p2

    invoke-virtual {v0, v2}, Lcom/google/c/c/ao;->a(I)I

    .line 271
    iget-wide v2, p0, Lcom/google/c/c/f;->b:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/c/c/f;->b:J

    move v2, v1

    .line 272
    goto :goto_0

    :cond_2
    move v0, v2

    .line 253
    goto :goto_1

    .line 267
    :cond_3
    iget-object v2, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    goto :goto_2
.end method

.method final b()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/google/c/c/g;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/g;-><init>(Lcom/google/c/c/f;Ljava/util/Iterator;)V

    return-object v1
.end method

.method final c()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

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

    check-cast v0, Lcom/google/c/c/ao;

    .line 139
    const/4 v2, 0x0

    iput v2, v0, Lcom/google/c/c/ao;->a:I

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/c/c/f;->b:J

    .line 143
    return-void
.end method

.method final d()Ljava/util/Set;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Lcom/google/c/c/i;

    iget-object v1, p0, Lcom/google/c/c/f;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/i;-><init>(Lcom/google/c/c/f;Ljava/util/Map;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/google/c/c/k;

    invoke-direct {v0, p0}, Lcom/google/c/c/k;-><init>(Lcom/google/c/c/f;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/google/c/c/f;->b:J

    invoke-static {v0, v1}, Lcom/google/c/g/a;->a(J)I

    move-result v0

    return v0
.end method
