.class final Lcom/google/android/gms/fitness/sensors/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/n;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/o;->a:Lcom/google/android/gms/fitness/sensors/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 125
    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/o;->a:Lcom/google/android/gms/fitness/sensors/a/n;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/sensors/a/n;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method
