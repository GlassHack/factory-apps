.class final Lcom/google/android/gms/fitness/sensors/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/g/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 6

    .prologue
    .line 67
    check-cast p1, Lcom/google/android/gms/wearable/m;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->c:Lcom/google/android/gms/fitness/sensors/g/a;

    const-string v1, "dataSource"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v0

    const-string v3, "timestamp"

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    const-string v0, "values"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    const-string v4, "format"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/wearable/m;->f(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for dataMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 67
    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "dataSource"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->c:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "dataType"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->d:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_2
    const-string v0, "timestamp"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    const-string v0, "startTime"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_6

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/google/android/gms/wearable/m;

    invoke-direct {v6}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v7

    const-string v8, "format"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const-string v7, "value"

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v5

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    const-string v7, "value"

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v5

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;F)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "values"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method
