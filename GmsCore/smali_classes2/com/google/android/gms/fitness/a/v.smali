.class final Lcom/google/android/gms/fitness/a/v;
.super Lcom/google/android/gms/fitness/a/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/DataType;

.field private final b:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/fitness/a/g;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/v;->a:Lcom/google/android/gms/fitness/data/DataType;

    .line 43
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Output data type should have 3 fields"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 45
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_2
    const-string v4, "All output fields should be of type float."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0

    :cond_1
    move v0, v2

    .line 46
    goto :goto_2

    .line 50
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/v;->b:Lcom/google/android/gms/fitness/data/DataSource;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/data/DataPoint;)F
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/fitness/a/v;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Unexpected data type: %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/fitness/a/v;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 82
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    array-length v5, v0

    .line 67
    if-eq v5, v2, :cond_1

    const/4 v0, 0x3

    if-ne v5, v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    const-string v6, "Unexpected field size: %d"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    if-ne v5, v2, :cond_3

    .line 73
    new-instance v0, Lcom/google/android/gms/fitness/a/w;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/a/w;-><init>(B)V

    .line 78
    :goto_2
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/fitness/a/h;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/fitness/a/v;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v4, v1}, Lcom/google/android/gms/fitness/a/v;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 81
    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    move-object v0, v3

    .line 82
    goto :goto_0

    :cond_2
    move v0, v1

    .line 67
    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Lcom/google/android/gms/fitness/a/x;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/a/x;-><init>(B)V

    goto :goto_2
.end method

.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/fitness/a/v;->b:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method
