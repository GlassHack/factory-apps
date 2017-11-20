.class public final Lcom/google/android/gms/fitness/a/s;
.super Lcom/google/android/gms/fitness/a/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/g;-><init>()V

    .line 134
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Unexpected data type: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 59
    invoke-static {p1, v3}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 68
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 53
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSet;->a()Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    :goto_2
    invoke-static {v4, v3}, Lcom/google/android/gms/fitness/a/s;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 67
    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    move-object v0, v2

    .line 68
    goto :goto_1

    .line 65
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/fitness/a/t;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/a/t;-><init>(B)V

    :goto_3
    invoke-interface {v0, v4, v2}, Lcom/google/android/gms/fitness/a/h;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/gms/fitness/a/u;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/a/u;-><init>(B)V

    goto :goto_3
.end method

.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/gms/fitness/data/a;->e:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method
