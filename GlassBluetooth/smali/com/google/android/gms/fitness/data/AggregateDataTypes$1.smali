.class final Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/AggregateDataTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/google/android/gms/fitness/data/DataType;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/fitness/data/DataType;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v4, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v4, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/DataTypes;->DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v4, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->SPEED:Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v4, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v4, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v4, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/fitness/data/DataTypes;->LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v4, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/AggregateDataTypes;->LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/data/AggregateDataTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
