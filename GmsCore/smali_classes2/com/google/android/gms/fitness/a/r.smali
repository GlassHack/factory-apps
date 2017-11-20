.class final Lcom/google/android/gms/fitness/a/r;
.super Lcom/google/android/gms/fitness/a/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/g;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/r;->a:Lcom/google/android/gms/fitness/data/DataType;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v1, "Cannot aggregate delta data types with more than one field"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 30
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/a/r;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Unexpected data type: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/fitness/a/r;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    .line 44
    invoke-static {p1, v4}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v5

    .line 46
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    if-nez v1, :cond_0

    move-object v0, v3

    .line 70
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v6

    .line 53
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v8

    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v10

    .line 56
    invoke-virtual {v10, v6, v7, v8, v9}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 58
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v0

    .line 59
    if-ne v0, v11, :cond_2

    .line 60
    new-array v6, v11, [I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    aput v1, v6, v2

    invoke-virtual {v10, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 68
    :goto_2
    invoke-static {v5, v4}, Lcom/google/android/gms/fitness/a/r;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 69
    invoke-virtual {v3, v10}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    move-object v0, v3

    .line 70
    goto :goto_0

    .line 61
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 62
    new-array v6, v11, [F

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_3

    :cond_3
    aput v1, v6, v2

    invoke-virtual {v10, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    goto :goto_2

    .line 64
    :cond_4
    const-string v1, "Unknown field format: %d"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v3

    .line 65
    goto/16 :goto_0
.end method

.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/fitness/a/r;->a:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
