.class public final Lcom/google/android/gms/fitness/sensors/a/a;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/n/as;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lcom/google/android/gms/fitness/n/ar;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/bluetooth/BluetoothAdapter;

.field private final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/fitness/n/ar;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/a;->c:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/a;->a:Landroid/os/Handler;

    .line 73
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/a/a;->b:Lcom/google/android/gms/fitness/n/ar;

    .line 74
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 76
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/c/j/a/v;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/sensors/a/a;->b(Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/android/gms/fitness/sensors/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/n;->b()Lcom/google/c/j/a/v;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/sensors/a/c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/sensors/a/c;-><init>(Lcom/google/android/gms/fitness/sensors/a/a;Lcom/google/android/gms/fitness/data/BleDevice;)V

    invoke-static {v0, v1}, Lcom/google/c/j/a/n;->b(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/fitness/sensors/a/b;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/fitness/sensors/a/b;-><init>(Lcom/google/android/gms/fitness/sensors/a/a;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/sample/b;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/sample/b;->b()Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a/n;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/n;->c()V

    .line 109
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 194
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 184
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 223
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/android/gms/fitness/sensors/a/n;
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/BleDevice;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/d/a/c;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 149
    new-instance v4, Lcom/google/android/gms/fitness/sensors/a/n;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/a;->a:Landroid/os/Handler;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/sensors/a/n;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    .line 154
    new-instance v5, Lcom/google/android/gms/fitness/sensors/sample/c;

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v6, v0, v1}, Lcom/google/android/gms/fitness/sensors/sample/c;-><init>(IIJ)V

    .line 156
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/a/b;

    .line 158
    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataType;

    .line 159
    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->d()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 162
    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->c:Landroid/content/Context;

    invoke-static {v0, v4, v6}, Lcom/google/android/gms/fitness/sensors/sample/b;->a(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;Ljava/util/Map;)Lcom/google/android/gms/fitness/sensors/sample/b;

    move-result-object v5

    .line 168
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/a/b;

    .line 170
    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataType;

    .line 171
    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/d/a/b;->a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/d/a/a/b;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_4
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/d;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v6, v1}, Lcom/google/android/gms/fitness/sensors/a/d;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/util/List;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/sensors/a/n;->a(Lcom/google/android/gms/fitness/sensors/a/d;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v4
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 3

    .prologue
    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    .line 205
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 207
    :cond_0
    return-object v1
.end method
