.class public final Lcom/google/android/gms/fitness/d/a/e;
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

.field public static final b:Lcom/google/android/gms/fitness/data/Field;

.field public static final c:Lcom/google/android/gms/fitness/data/Field;

.field public static final d:Lcom/google/android/gms/fitness/data/Field;

.field public static final e:Lcom/google/android/gms/fitness/data/DataType;

.field private static final f:Lcom/google/android/gms/fitness/d/a/e;


# instance fields
.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/Map;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 47
    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "cumulative_wheel_revolutions"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/e;->a:Lcom/google/android/gms/fitness/data/Field;

    .line 53
    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "last_wheel_event_time"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/e;->b:Lcom/google/android/gms/fitness/data/Field;

    .line 62
    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "cumulative_crank_revolutions"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    .line 68
    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    const-string v1, "last_crank_event_time"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/e;->d:Lcom/google/android/gms/fitness/data/Field;

    .line 76
    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.ble.csc_measurement"

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/android/gms/fitness/data/Field;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/fitness/d/a/e;->a:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    sget-object v3, Lcom/google/android/gms/fitness/d/a/e;->b:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v4, Lcom/google/android/gms/fitness/d/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/gms/fitness/d/a/e;->d:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/e;->e:Lcom/google/android/gms/fitness/data/DataType;

    .line 86
    new-instance v0, Lcom/google/android/gms/fitness/d/a/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/d/a/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/d/a/e;->f:Lcom/google/android/gms/fitness/d/a/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lcom/google/android/gms/fitness/d/a/d;->a:Lcom/google/android/gms/fitness/d/a/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/d;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/bl;->a(Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->g:Ljava/util/Set;

    .line 98
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->a:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/a/e;->e:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/c/c/be;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->h:Ljava/util/Map;

    .line 101
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->r:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->q:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->t:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->s:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1, v2, v3}, Lcom/google/c/c/bl;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->i:Ljava/util/Set;

    .line 104
    sget-object v1, Lcom/google/android/gms/fitness/d/a/e;->e:Lcom/google/android/gms/fitness/data/DataType;

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

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->X:Lcom/google/android/gms/common/a/b;

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

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->j:Ljava/util/Map;

    .line 106
    return-void
.end method

.method public static g()Lcom/google/android/gms/fitness/d/a/e;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/gms/fitness/d/a/e;->f:Lcom/google/android/gms/fitness/d/a/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/d/a/a/b;
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Z)V

    .line 146
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->r:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/google/android/gms/fitness/d/a/a/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/d/a/a/g;-><init>()V

    .line 155
    :goto_0
    return-object v0

    .line 148
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->q:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Lcom/google/android/gms/fitness/d/a/a/d;

    sget-object v1, Lcom/google/android/gms/fitness/d/a/e;->e:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->q:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v3, Lcom/google/android/gms/fitness/d/a/e;->a:Lcom/google/android/gms/fitness/data/Field;

    sget-object v4, Lcom/google/android/gms/fitness/data/n;->o:Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/d/a/a/d;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;Lcom/google/android/gms/fitness/data/Field;)V

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->t:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Lcom/google/android/gms/fitness/d/a/a/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/d/a/a/f;-><init>()V

    goto :goto_0

    .line 154
    :cond_2
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->s:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    new-instance v0, Lcom/google/android/gms/fitness/d/a/a/d;

    sget-object v1, Lcom/google/android/gms/fitness/d/a/e;->e:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/k;->s:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v3, Lcom/google/android/gms/fitness/d/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    sget-object v4, Lcom/google/android/gms/fitness/data/n;->o:Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/d/a/a/d;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Field;Lcom/google/android/gms/fitness/data/Field;)V

    goto :goto_0

    .line 159
    :cond_3
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
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->h:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Characteristic with UUID not supported: %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 170
    const-string v0, "Characteristic does not contain any data."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    const/4 v0, 0x0

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 178
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    aget-byte v5, v1, v3

    .line 180
    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    .line 182
    const/16 v1, 0x14

    invoke-virtual {p2, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_3

    .line 186
    sget-object v1, Lcom/google/android/gms/fitness/d/a/e;->a:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 194
    :goto_2
    const/4 v1, 0x5

    invoke-virtual {p2, v9, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v6

    .line 196
    const/4 v1, 0x7

    .line 197
    if-eqz v6, :cond_4

    .line 198
    sget-object v7, Lcom/google/android/gms/fitness/d/a/e;->b:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 204
    :goto_3
    const-string v7, "Received wheel data, revolutions: %s, last wheel event time: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v6, v8, v2

    invoke-static {v7, v8}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    move v4, v1

    .line 207
    :goto_4
    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    if-eqz v1, :cond_0

    .line 208
    const-string v1, "Received crc datapoint with crank data"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    invoke-virtual {p2, v9, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    .line 212
    add-int/lit8 v4, v4, 0x2

    .line 213
    if-eqz v1, :cond_6

    .line 214
    sget-object v5, Lcom/google/android/gms/fitness/d/a/e;->c:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 222
    :goto_6
    invoke-virtual {p2, v9, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v4

    .line 224
    if-eqz v4, :cond_7

    .line 226
    sget-object v5, Lcom/google/android/gms/fitness/d/a/e;->d:Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/Field;)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 232
    :goto_7
    const-string v5, "Received crank data, revolutions: %s, last crank event time: %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 180
    goto :goto_1

    .line 189
    :cond_3
    const-string v1, "Wheel revolutions is not present even though flag specified it would be."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 200
    :cond_4
    const-string v7, "Wheel event time is not present even though flag specified it would be."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_5
    move v1, v3

    .line 207
    goto :goto_5

    .line 217
    :cond_6
    const-string v5, "Crank revolutions is not present even though flag specified it would be."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 228
    :cond_7
    const-string v5, "Crank event time is not present even though flag specified it would be."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_7

    :cond_8
    move v4, v2

    goto :goto_4
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "org.bluetooth.profile.cycling_speed_and_cadence"

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->g:Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->i:Ljava/util/Set;

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/a/e;->i:Ljava/util/Set;

    return-object v0
.end method
