.class final Lcom/google/android/gms/fitness/sensors/g/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/g/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 292
    check-cast p1, Lcom/google/android/gms/wearable/m;

    if-nez p1, :cond_0

    :goto_0
    return-object v8

    :cond_0
    const-string v0, "locationRequest"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v8}, Lcom/google/android/location/fused/b/c;->a(Lcom/google/android/gms/wearable/m;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    sget-object v1, Lcom/google/android/gms/fitness/sensors/g/b;->c:Lcom/google/android/gms/fitness/sensors/g/a;

    const-string v2, "dataSource"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSource;

    const-string v2, "samplingRateUs"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "fastestRateUs"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "maxDeliveryLatencyUs"

    invoke-virtual {p1, v6}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;JJJLjava/util/List;Ljava/util/List;)V

    move-object v8, v0

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 292
    check-cast p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/m;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "dataSource"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->c:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "dataType"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->d:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_2
    const-string v0, "samplingRateUs"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    const-string v0, "fastestRateUs"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    const-string v0, "maxDeliveryLatencyUs"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/google/android/location/fused/b/c;->a(Ljava/util/Collection;Z)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    const-string v2, "locationRequest"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method
