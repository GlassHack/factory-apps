.class public final Lcom/google/android/gms/fitness/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/d/a/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/fitness/data/Field;

.field public static final b:Lcom/google/android/gms/fitness/data/DataType;

.field private static final c:Lcom/google/android/gms/fitness/d/a/g;


# instance fields
.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Set;

.field private final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 41
    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "stride_length"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/g;->a:Lcom/google/android/gms/fitness/data/Field;

    .line 50
    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.ble.rsc_measurement"

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/fitness/data/n;->m:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/android/gms/fitness/data/n;->n:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    sget-object v3, Lcom/google/android/gms/fitness/d/a/g;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/gms/fitness/data/n;->j:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/google/android/gms/fitness/data/n;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 61
    new-instance v0, Lcom/google/android/gms/fitness/d/a/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/d/a/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/g;->c:Lcom/google/android/gms/fitness/d/a/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/google/android/gms/fitness/d/a/d;->d:Lcom/google/android/gms/fitness/d/a/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/d;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bl;->a(Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->d:Ljava/util/Set;

    .line 73
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->h:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/c/c/be;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->e:Ljava/util/Map;

    .line 76
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->c:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1, v2}, Lcom/google/c/c/bl;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->f:Ljava/util/Set;

    .line 78
    sget-object v1, Lcom/google/android/gms/fitness/d/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

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

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->Z:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v0, v4

    mul-int/lit8 v0, v0, 0x2

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

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/sensors/sample/c;-><init>(IIJ)V

    invoke-static {v1, v0}, Lcom/google/c/c/be;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->g:Ljava/util/Map;

    .line 80
    return-void
.end method

.method public static g()Lcom/google/android/gms/fitness/d/a/g;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/gms/fitness/d/a/g;->c:Lcom/google/android/gms/fitness/d/a/g;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/d/a/a/b;
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 120
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/google/android/gms/fitness/d/a/a/e;

    sget-object v1, Lcom/google/android/gms/fitness/d/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->p:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v3, Lcom/google/android/gms/fitness/data/n;->m:Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/d/a/a/e;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;)V

    .line 127
    :goto_0
    return-object v0

    .line 123
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->c:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Lcom/google/android/gms/fitness/d/a/a/e;

    sget-object v1, Lcom/google/android/gms/fitness/d/a/g;->b:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->c:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v3, Lcom/google/android/gms/fitness/data/n;->n:Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/d/a/a/e;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;)V

    goto :goto_0

    .line 126
    :cond_1
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Lcom/google/android/gms/fitness/d/a/a/c;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/d/a/a/c;-><init>()V

    goto :goto_0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Derived sensor implementation not set for datatype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 9

    .prologue
    const/16 v8, 0x12

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Characteristic with UUID not supported: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v1, v5}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 139
    const-string v0, "Characteristic does not contain any data."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    .line 147
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    aget-byte v5, v0, v3

    .line 148
    sget-object v0, Lcom/google/android/gms/fitness/data/n;->a:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    and-int/lit8 v0, v5, 0x4

    if-nez v0, :cond_3

    const/4 v0, 0x7

    :goto_1
    invoke-virtual {v6, v0}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 152
    invoke-virtual {p2, v8, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_4

    .line 157
    sget-object v6, Lcom/google/android/gms/fitness/data/n;->m:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x43800000    # 256.0f

    div-float/2addr v0, v7

    invoke-virtual {v6, v0}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    .line 164
    :goto_2
    const/16 v0, 0x11

    const/4 v6, 0x3

    invoke-virtual {p2, v0, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    sget-object v6, Lcom/google/android/gms/fitness/data/n;->n:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    .line 173
    :goto_3
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_6

    move v0, v2

    :goto_4
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p2, v8, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v4

    .line 177
    const/4 v0, 0x6

    .line 178
    if-eqz v4, :cond_7

    .line 180
    sget-object v6, Lcom/google/android/gms/fitness/d/a/g;->a:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    invoke-virtual {v6, v4}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    move v4, v0

    .line 187
    :cond_1
    :goto_5
    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_8

    move v0, v2

    :goto_6
    if-eqz v0, :cond_2

    .line 189
    const/16 v0, 0x14

    invoke-virtual {p2, v0, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_9

    .line 194
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    .line 195
    sget-object v2, Lcom/google/android/gms/fitness/data/n;->j:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    :cond_2
    :goto_7
    move-object v0, v1

    .line 202
    goto/16 :goto_0

    .line 148
    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    .line 159
    :cond_4
    const-string v0, "Speed is not present even though it should be specified."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 170
    :cond_5
    const-string v0, "Cadence is not present even though it should be specified."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_6
    move v0, v3

    .line 173
    goto :goto_4

    .line 182
    :cond_7
    const-string v4, "Stride length is not present even though flag specified it would be."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v0

    goto :goto_5

    :cond_8
    move v0, v3

    .line 187
    goto :goto_6

    .line 197
    :cond_9
    const-string v0, "TotalDistance is not present even though flag specified it would be."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_7
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "org.bluetooth.profile.running_speed_and_cadence"

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->f:Ljava/util/Set;

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/g;->f:Ljava/util/Set;

    return-object v0
.end method
