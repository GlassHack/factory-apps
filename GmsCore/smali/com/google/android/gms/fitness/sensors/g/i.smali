.class public final Lcom/google/android/gms/fitness/sensors/g/i;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l;
.implements Lcom/google/android/gms/common/api/m;
.implements Lcom/google/android/gms/wearable/f;
.implements Lcom/google/android/gms/wearable/p;
.implements Lcom/google/android/gms/wearable/v;


# instance fields
.field final a:Lcom/google/android/gms/common/api/j;

.field final b:Lcom/google/android/gms/wearable/d;

.field c:Lcom/google/android/gms/wearable/s;

.field private final d:Lcom/google/android/gms/fitness/sensors/a;

.field private final e:Lcom/google/android/gms/wearable/o;

.field private final f:Lcom/google/android/gms/wearable/t;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Lcom/google/android/gms/fitness/data/Device;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;)V
    .locals 6

    .prologue
    .line 97
    sget-object v3, Lcom/google/android/gms/wearable/y;->b:Lcom/google/android/gms/wearable/o;

    sget-object v4, Lcom/google/android/gms/wearable/y;->a:Lcom/google/android/gms/wearable/d;

    sget-object v5, Lcom/google/android/gms/wearable/y;->c:Lcom/google/android/gms/wearable/t;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/sensors/g/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/wearable/o;Lcom/google/android/gms/wearable/d;Lcom/google/android/gms/wearable/t;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/wearable/o;Lcom/google/android/gms/wearable/d;Lcom/google/android/gms/wearable/t;)V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->h:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->i:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->j:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->k:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/g/i;->d:Lcom/google/android/gms/fitness/sensors/a;

    .line 105
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/g/i;->b:Lcom/google/android/gms/wearable/d;

    .line 106
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/g/i;->e:Lcom/google/android/gms/wearable/o;

    .line 107
    iput-object p5, p0, Lcom/google/android/gms/fitness/sensors/g/i;->f:Lcom/google/android/gms/wearable/t;

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Device;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->m:Lcom/google/android/gms/fitness/data/Device;

    .line 110
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/y;->f:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    .line 115
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Device;)Ljava/util/List;
    .locals 4

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    return-object v1
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->d:Lcom/google/android/gms/fitness/sensors/a;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    .line 444
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Request for wrong device %s, peer %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "WearablesAdapter:Registering for wearable %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/wearable/m;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/m;-><init>()V

    const-string v0, "sensor_registration_request_id"

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    const-string v4, "sensor_registration_request"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->f:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->e:Lcom/google/android/gms/wearable/o;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    invoke-interface {v5}, Lcom/google/android/gms/wearable/s;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/WearablesAdapter/registerSensor"

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/m;->a()[B

    move-result-object v3

    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/gms/wearable/o;->a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->j:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 120
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 261
    const-string v0, "WearablesAdapter:GMSClient connection has suspended with cause %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 262
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 241
    const-string v1, "WearablesAdapter:GMSClient has connected."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 243
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->f:Lcom/google/android/gms/wearable/t;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/t;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/fitness/sensors/g/j;

    invoke-direct {v2, p0}, Lcom/google/android/gms/fitness/sensors/g/j;-><init>(Lcom/google/android/gms/fitness/sensors/g/i;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 256
    const-string v1, "Setting Local Sensor Sources."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "/WearablesAdapter/sources_data"

    invoke-static {v1}, Lcom/google/android/gms/wearable/w;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/w;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/fitness/sensors/local/d;->values()[Lcom/google/android/gms/fitness/sensors/local/d;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/sensors/local/d;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/g/i;->d:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v4, v0}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    sget-object v5, Lcom/google/android/gms/fitness/sensors/g/b;->c:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-interface {v5, v0}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/wearable/w;->a:Lcom/google/android/gms/wearable/m;

    const-string v4, "local_device"

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->e:Lcom/google/android/gms/fitness/sensors/g/a;

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/g/i;->m:Lcom/google/android/gms/fitness/data/Device;

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    iget-object v0, v1, Lcom/google/android/gms/wearable/w;->a:Lcom/google/android/gms/wearable/m;

    const-string v2, "all_data_sources"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->b:Lcom/google/android/gms/wearable/d;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/w;->a()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/wearable/d;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/y;

    .line 257
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 267
    const-string v0, "WearablesAdapter:GoogleApiClient could not connect due to: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 268
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/i;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    invoke-static {p1}, Lcom/google/android/gms/common/data/k;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/h;

    .line 274
    invoke-interface {v0}, Lcom/google/android/gms/wearable/h;->c()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/google/android/gms/wearable/h;->a()Lcom/google/android/gms/wearable/j;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lcom/google/android/gms/wearable/j;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v3, "WearablesAdapter:onDataItemChanged DataItem %s , Path %s "

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    const-string v3, "/WearablesAdapter/sources_data"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/wearable/n;->a(Lcom/google/android/gms/wearable/j;)Lcom/google/android/gms/wearable/n;

    move-result-object v1

    const-string v0, "Received SourcesDataItem %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/wearable/n;->a:Lcom/google/android/gms/wearable/m;

    const-string v3, "local_device"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/fitness/sensors/g/b;->e:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-interface {v0, v3}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Device;

    const-string v4, "Remote device %s %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/g/i;->m:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "Received /sources_data request from local device"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/wearable/n;->a:Lcom/google/android/gms/wearable/m;

    const-string v3, "all_data_sources"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wearable/m;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    sget-object v1, Lcom/google/android/gms/fitness/sensors/g/b;->c:Lcom/google/android/gms/fitness/sensors/g/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "adding data source %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 281
    :cond_7
    const-string v3, "/WearablesAdapter/sensor_data_point"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/wearable/n;->a(Lcom/google/android/gms/wearable/j;)Lcom/google/android/gms/wearable/n;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/wearable/n;->a:Lcom/google/android/gms/wearable/m;

    const-string v3, "sensor_registration_request_id"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/google/android/gms/fitness/sensors/g/b;->b:Lcom/google/android/gms/fitness/sensors/g/a;

    iget-object v0, v0, Lcom/google/android/gms/wearable/n;->a:Lcom/google/android/gms/wearable/m;

    const-string v4, "data_point"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/g/i;->j:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not send remote DataPoint to local registration "

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 286
    :cond_8
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string v1, "WearablesAdapter:onMessageReceived with %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 292
    const-string v1, "/WearablesAdapter/registerSensor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/m;->a([B)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    .line 294
    const-string v1, "sensor_registration_request_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v1

    .line 295
    new-instance v2, Lcom/google/android/gms/fitness/sensors/g/k;

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/fitness/sensors/g/k;-><init>(Lcom/google/android/gms/fitness/sensors/g/i;IB)V

    .line 296
    sget-object v3, Lcom/google/android/gms/fitness/sensors/g/b;->f:Lcom/google/android/gms/fitness/sensors/g/a;

    const-string v4, "sensor_registration_request"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/fitness/sensors/g/a;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    .line 299
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a(Lcom/google/android/gms/fitness/data/o;)V

    .line 303
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/g/i;->m:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Registration request DataSource does not have the local Device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/g/i;->k:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->d:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    const-string v1, "/WearablesAdapter/unregisterSensor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/m;->a([B)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    .line 313
    const-string v1, "sensor_registration_request_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/g/i;->b(I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 319
    const-string v0, "WearablesAdapter:onPeerConnected."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 323
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/g/i;->b(I)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 327
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->j:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/g/i;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->j:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 333
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    .line 334
    const-string v0, "currentPeer is now %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 335
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 218
    const-string v0, "WearablesAdapter::unregister"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 235
    :goto_0
    return v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 224
    if-nez v0, :cond_2

    .line 225
    const-string v0, "Could not find registration for this listener."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :cond_2
    new-instance v1, Lcom/google/android/gms/wearable/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 230
    const-string v2, "sensor_registration_request_id"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    .line 231
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/g/i;->e:Lcom/google/android/gms/wearable/o;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/g/i;->a:Lcom/google/android/gms/common/api/j;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    invoke-interface {v4}, Lcom/google/android/gms/wearable/s;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/WearablesAdapter/unregisterSensor"

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/m;->a()[B

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/google/android/gms/wearable/o;->a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;

    .line 233
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WearablesAdapter:findDataSources full results: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    if-nez v1, :cond_0

    .line 146
    const-string v1, "findDataSources with no connected wearable peer %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/g/i;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/Device;

    .line 151
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 152
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/sensors/g/i;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Device;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    .line 339
    const-string v0, "WearablesAdapter:onPeerDisconnected."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 340
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 341
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/g/i;->b(I)V

    goto :goto_0

    .line 343
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/g/i;->c:Lcom/google/android/gms/wearable/s;

    .line 344
    return-void
.end method
