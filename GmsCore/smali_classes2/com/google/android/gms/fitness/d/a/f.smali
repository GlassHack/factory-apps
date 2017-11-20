.class final Lcom/google/android/gms/fitness/d/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/d/a/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/fitness/d/a/f;


# instance fields
.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/fitness/d/a/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/d/a/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/f;->a:Lcom/google/android/gms/fitness/d/a/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/google/android/gms/fitness/d/a/d;->c:Lcom/google/android/gms/fitness/d/a/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/d;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->b:Ljava/util/Set;

    .line 48
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->e:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/c/c/be;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->c:Ljava/util/Map;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->d:Ljava/util/Set;

    .line 52
    sget-object v1, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->W:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v2, v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->Y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v0, v4

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->W:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->Z:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    new-instance v0, Lcom/google/android/gms/fitness/sensors/sample/c;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/sensors/sample/c;-><init>(IIJ)V

    invoke-static {v1, v0}, Lcom/google/c/c/be;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->e:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->f:Ljava/util/Set;

    .line 55
    return-void
.end method

.method public static g()Lcom/google/android/gms/fitness/d/a/f;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/gms/fitness/d/a/f;->a:Lcom/google/android/gms/fitness/d/a/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/d/a/a/b;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This sensor has no derived types"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 9

    .prologue
    const/16 v3, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->c:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Characteristic with UUID not supported: %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Characteristic does not contain any data."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 106
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v0, v0, v2

    .line 107
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    .line 108
    :goto_1
    invoke-virtual {p2, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v6

    .line 109
    if-nez v6, :cond_2

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No heart rate data found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    .line 107
    :cond_1
    const/16 v0, 0x11

    goto :goto_1

    .line 112
    :cond_2
    const-string v7, "Received heart rate: %d with format: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v2

    if-ne v0, v3, :cond_3

    const-string v0, "UINT16"

    :goto_2
    aput-object v0, v8, v1

    invoke-static {v7, v8}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    new-array v1, v1, [F

    invoke-virtual {v6}, Ljava/lang/Integer;->floatValue()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0

    .line 112
    :cond_3
    const-string v0, "UINT8"

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "org.bluetooth.profile.heart_rate"

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/f;->f:Ljava/util/Set;

    return-object v0
.end method
