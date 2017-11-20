.class public final Lcom/google/android/gms/fitness/a/a;
.super Lcom/google/android/gms/fitness/a/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/g;-><init>()V

    .line 137
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    .line 55
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Unexpected data type: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v5

    .line 60
    invoke-static {p1, v5}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v3

    .line 94
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_0

    .line 66
    :cond_2
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 68
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v8

    .line 69
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v6, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 69
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 77
    :cond_4
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    new-instance v0, Lcom/google/android/gms/fitness/a/c;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/a/c;-><init>(B)V

    move-object v1, v0

    .line 83
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    :goto_5
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 85
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/fitness/a/h;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v7

    .line 87
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, v5}, Lcom/google/android/gms/fitness/a/a;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 89
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 80
    :cond_5
    new-instance v0, Lcom/google/android/gms/fitness/a/d;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/a/d;-><init>(B)V

    move-object v1, v0

    goto :goto_4

    .line 92
    :cond_6
    invoke-virtual {p0, v4}, Lcom/google/android/gms/fitness/a/a;->a(Ljava/util/List;)V

    .line 93
    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/lang/Iterable;)V

    move-object v0, v3

    .line 94
    goto :goto_1
.end method

.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/gms/fitness/data/a;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/gms/fitness/a/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/a/b;-><init>(Lcom/google/android/gms/fitness/a/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    return-void
.end method
