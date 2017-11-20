.class public final Lcom/google/android/gms/fitness/sensors/a/n;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/a/h;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/fitness/sensors/a/f;

.field private d:Lcom/google/android/gms/fitness/sensors/a/d;

.field private final e:Lcom/google/c/c/ci;

.field private final f:Lcom/google/c/c/ci;

.field private final g:Lcom/google/c/c/ci;

.field private final h:Ljava/util/Map;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->f:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/d/a/a;->b:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/fitness/d/a/a;->g:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/fitness/d/a/a;->c:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/d/a/a;->d:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/fitness/d/a/a;->i:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/util/UUID;

    invoke-static/range {v0 .. v6}, Lcom/google/c/c/bl;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/sensors/a/n;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/c/c/ay;->l()Lcom/google/c/c/ay;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/cj;->a(Lcom/google/c/c/dm;)Lcom/google/c/c/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    .line 73
    invoke-static {}, Lcom/google/c/c/ay;->l()Lcom/google/c/c/ay;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/cj;->a(Lcom/google/c/c/dm;)Lcom/google/c/c/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->f:Lcom/google/c/c/ci;

    .line 80
    invoke-static {}, Lcom/google/c/c/ay;->l()Lcom/google/c/c/ay;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/cj;->a(Lcom/google/c/c/dm;)Lcom/google/c/c/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->g:Lcom/google/c/c/ci;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->h:Ljava/util/Map;

    .line 111
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-direct {v0, p2}, Lcom/google/android/gms/fitness/sensors/a/r;-><init>(Landroid/os/Handler;)V

    .line 112
    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/f;

    invoke-direct {v1, p1, p3, v0, p0}, Lcom/google/android/gms/fitness/sensors/a/f;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/fitness/sensors/a/r;Lcom/google/android/gms/fitness/sensors/a/h;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    .line 114
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/a/n;->b:Ljava/util/List;

    .line 115
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Device;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->i:Ljava/lang/String;

    .line 380
    :goto_0
    new-instance v1, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iput-object p1, v1, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/fitness/data/h;->b:I

    iput-object p2, v1, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/a/b;

    .line 292
    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/google/android/gms/fitness/data/Device;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->k:Ljava/lang/String;

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->j:Ljava/lang/String;

    .line 360
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/n;->m:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 362
    const-string v3, "f:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/a/n;->m:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/n;->l:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 365
    const-string v3, "h:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/a/n;->l:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/n;->n:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 368
    const-string v3, "s:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/n;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 372
    new-instance v0, Lcom/google/android/gms/fitness/data/Device;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    return-object v0

    .line 356
    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->i:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/a/n;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 196
    const-string v1, "Registering for BLE device for %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/a/n;->c(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/a/d;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->f:Lcom/google/c/c/ci;

    invoke-interface {v1, v0}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 208
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/sensors/a/f;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_1

    .line 212
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/d;->a()V

    .line 148
    :cond_0
    return-void
.end method

.method public final a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 275
    const-string v0, "Characteristic data received: %s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 276
    sget-object v0, Lcom/google/android/gms/fitness/sensors/a/n;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->f:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->k:Ljava/lang/String;

    const-string v0, "received manufacturer: %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->k:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->b:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->i:Ljava/lang/String;

    const-string v0, "received deviceName: %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->i:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->g:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->j:Ljava/lang/String;

    const-string v0, "received modelNumber: %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->j:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->c:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->m:Ljava/lang/String;

    const-string v0, "received firmwareRevision: %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->m:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->d:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->l:Ljava/lang/String;

    const-string v0, "received hardwareRevision: %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->l:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    sget-object v0, Lcom/google/android/gms/fitness/d/a/a;->i:Lcom/google/android/gms/fitness/d/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/a/a;->a()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->n:Ljava/lang/String;

    const-string v0, "received softwareRevision: %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/n;->n:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/a/n;->d()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/c/b;

    check-cast v0, Lcom/google/android/gms/fitness/d/a/a/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/d/a/a/b;->a(Lcom/google/android/gms/fitness/data/Device;)V

    goto :goto_0

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->g:Lcom/google/c/c/ci;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->g:Lcom/google/c/c/ci;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "Notifying BLE listeners for %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/q;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/fitness/sensors/a/q;-><init>(Ljava/util/UUID;Lcom/google/android/gms/fitness/data/DataType;)V

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v3, v0}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v3, v0}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/n;->h:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/d/a/b;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/a/n;->d()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/fitness/sensors/a/n;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Device;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/fitness/d/a/b;->a(Lcom/google/android/gms/fitness/data/DataSource;Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "Exception while notifying listeners"

    const-string v5, "Bluetooth device: %s : %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v7, v7, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v4, v6, v9

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 279
    :cond_8
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/sensors/a/d;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    .line 426
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/sensors/a/d;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    const-string v0, "  BleDeviceConnectionManager["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, v1, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    const-string v0, "    GattRequestPermit["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "      requestPermitQueueLength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/fitness/sensors/a/r;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->getQueueLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "      config[bleRequestTimeoutSecs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->V:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "      mRequestPermitHolder="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "    ]\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "    BluetoothDevice="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "    GattState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v2, v1, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "    ServicesFuture[isDone="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/fitness/sensors/a/f;->d:Lcom/google/c/j/a/ad;

    invoke-virtual {v2}, Lcom/google/c/j/a/ad;->isDone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "    Config[bleAutoConnect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->aa:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "    EnqueuedGattCommands=["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, v1, Lcom/google/android/gms/fitness/sensors/a/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a/j;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_1
    const-string v0, "    ]\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "  ]\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 262
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v1, v1, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/a/n;->c(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/a/b;

    .line 156
    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 157
    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    const-string v0, "unregister request received"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/a/d;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v0

    move v2, v0

    .line 221
    :goto_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v0}, Lcom/google/c/c/ci;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/o;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v3

    .line 219
    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 228
    iget-object v6, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v6, v0, p1}, Lcom/google/c/c/ci;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    iget-object v6, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v6, v0}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 230
    iget-object v6, p0, Lcom/google/android/gms/fitness/sensors/a/n;->f:Lcom/google/c/c/ci;

    invoke-interface {v6, v0}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 233
    iget-object v7, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    const-string v8, "Stop Listening to: %s"

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v3

    invoke-static {v8, v9}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-lez v8, :cond_4

    new-instance v8, Lcom/google/android/gms/fitness/sensors/a/m;

    invoke-direct {v8, v7, v0, v3}, Lcom/google/android/gms/fitness/sensors/a/m;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;B)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/fitness/sensors/a/f;->a(Lcom/google/android/gms/fitness/sensors/a/j;)V

    goto :goto_2

    :cond_4
    const-string v7, "Characteristic %s is not a notify property"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v7, v8}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 240
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    return v3
.end method

.method public final b()Lcom/google/c/j/a/v;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/fitness/sensors/a/i;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/sensors/a/f;->a(Lcom/google/android/gms/fitness/sensors/a/j;)V

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->d:Lcom/google/c/j/a/ad;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/o;

    invoke-direct {v1, p0}, Lcom/google/android/gms/fitness/sensors/a/o;-><init>(Lcom/google/android/gms/fitness/sensors/a/n;)V

    invoke-static {v0, v1}, Lcom/google/c/j/a/n;->b(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 5

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/sensors/a/n;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/a/n;->c(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/a/d;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/a/n;->d()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/n;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/Device;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 185
    const-string v1, "returning %d BLE data sources for %s: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final b(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    .prologue
    .line 265
    const-string v0, "Characteristic discovered: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    sget-object v0, Lcom/google/android/gms/fitness/sensors/a/n;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/a/f;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/n;->g:Lcom/google/c/c/ci;

    invoke-interface {v4, v3, v1}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/fitness/sensors/a/q;

    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/fitness/sensors/a/q;-><init>(Ljava/util/UUID;Lcom/google/android/gms/fitness/data/DataType;)V

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/n;->h:Ljava/util/Map;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->f:Lcom/google/c/c/ci;

    invoke-interface {v0, v1, p1}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v0, v1}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/a/f;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    .line 271
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/n;->d:Lcom/google/android/gms/fitness/sensors/a/d;

    iget-object v0, v1, Lcom/google/android/gms/fitness/sensors/c/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/sensors/c/c;->a(Lcom/google/android/gms/fitness/data/o;)Z

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v0}, Lcom/google/c/c/ci;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/a/n;->a(Lcom/google/android/gms/fitness/data/o;)Z

    goto :goto_1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->e:Lcom/google/c/c/ci;

    invoke-interface {v0}, Lcom/google/c/c/ci;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Disconnecting"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/n;->c:Lcom/google/android/gms/fitness/sensors/a/f;

    const-string v1, "Disconnecting from BLE device %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/f;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x3

    :try_start_0
    iput v2, v0, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :goto_2
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const-string v0, "Not Disconnecting - still listening"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method
