.class public final Lcom/google/android/gms/fitness/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;

.field private static final b:Lcom/google/android/gms/fitness/a/a;

.field private static final c:Lcom/google/android/gms/fitness/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/gms/fitness/a/a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/a/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/a/j;->b:Lcom/google/android/gms/fitness/a/a;

    .line 35
    new-instance v0, Lcom/google/android/gms/fitness/a/s;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/a/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/a/j;->c:Lcom/google/android/gms/fitness/a/s;

    .line 38
    invoke-static {}, Lcom/google/c/c/be;->e()Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/r;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/a/r;-><init>(Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->n:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/r;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->n:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/a/r;-><init>(Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/a/j;->b:Lcom/google/android/gms/fitness/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/a/j;->b:Lcom/google/android/gms/fitness/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/v;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v4, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/fitness/a/v;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/v;

    sget-object v3, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v4, Lcom/google/android/gms/fitness/data/a;->g:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/fitness/a/v;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/v;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v4, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/fitness/a/v;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/v;

    sget-object v3, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v4, Lcom/google/android/gms/fitness/data/a;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/fitness/a/v;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->v:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/v;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->v:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v4, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/fitness/a/v;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/v;

    sget-object v3, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v4, Lcom/google/android/gms/fitness/data/a;->h:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/fitness/a/v;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/a/j;->c:Lcom/google/android/gms/fitness/a/s;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/a/j;->c:Lcom/google/android/gms/fitness/a/s;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->e:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/r;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/a/r;-><init>(Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->f:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v2, Lcom/google/android/gms/fitness/a/r;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->f:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/a/r;-><init>(Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bf;->a()Lcom/google/c/c/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/a/j;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/Bucket;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 259
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v10

    :goto_0
    const-string v1, "No unbaked segment buckets specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 261
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Bucket;

    .line 262
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/fitness/data/Bucket;

    .line 263
    new-instance v1, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->d()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->e()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(JJLcom/google/android/gms/fitness/data/Session;III)V

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/Bucket;->a(Z)V

    .line 273
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 274
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v0, v11

    .line 259
    goto :goto_0

    :cond_1
    move v3, v10

    .line 278
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 279
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Bucket;

    .line 280
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->e()Ljava/util/List;

    move-result-object v2

    .line 281
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v0, v4, :cond_2

    move v0, v10

    :goto_3
    const-string v4, "DataSets in bucket %d don\'t match the original.  %s vs %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    aput-object v2, v6, v10

    const/4 v7, 0x2

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v4, v6}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 287
    if-eqz v2, :cond_3

    move v4, v10

    :goto_5
    const-string v7, "Unmatched data type: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v4, v7, v8}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/fitness/data/DataSource;->equals(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/lang/Iterable;)V

    .line 294
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    move v0, v11

    .line 281
    goto :goto_3

    :cond_3
    move v4, v11

    .line 287
    goto :goto_5

    .line 278
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 298
    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 299
    invoke-static {v0}, Lcom/google/android/gms/fitness/a/j;->a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Bucket;->a(Lcom/google/android/gms/fitness/data/DataSet;)V

    goto :goto_6

    .line 301
    :cond_6
    return-object v1
.end method

.method private static a(Lcom/google/android/gms/fitness/a/n;Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 6

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object p2

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/a/n;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 184
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/a/n;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 185
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move-object p2, p1

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/fitness/a/n;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    .line 131
    invoke-static {p1, v4}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v2

    .line 147
    :goto_0
    return-object v0

    .line 138
    :cond_0
    sget-object v5, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/fitness/a/j;->a(Lcom/google/android/gms/fitness/a/n;Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v5, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v3

    :goto_2
    if-ge v1, v6, :cond_3

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->c(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/fitness/a/j;->b:Lcom/google/android/gms/fitness/a/a;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/fitness/a/a;->a(Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/lang/Iterable;)V

    move-object v0, v2

    goto :goto_0

    .line 142
    :cond_4
    const/4 v0, 0x0

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 144
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/fitness/a/j;->a(Lcom/google/android/gms/fitness/a/n;Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    move-object v1, v0

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    invoke-virtual {v1, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->c(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    move-object v0, v2

    .line 147
    goto/16 :goto_0
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    .line 110
    sget-object v0, Lcom/google/android/gms/fitness/a/j;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/g;

    .line 111
    if-nez v0, :cond_0

    .line 112
    const-string v0, "Aggregation requested for un-supported data type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    invoke-static {p0, v2}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/fitness/a/g;->a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->f()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_1

    move v1, v2

    :goto_2
    const-string v6, "Unexpected bucket type: %s"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->f()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->d()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 209
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    :goto_4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 212
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/a/j;->a(Ljava/util/List;I)Lcom/google/android/gms/fitness/data/Bucket;

    move-result-object v0

    .line 214
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 216
    :cond_4
    new-instance v0, Lcom/google/android/gms/fitness/a/k;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/a/k;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 224
    goto :goto_0
.end method
