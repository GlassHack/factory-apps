.class public final Lcom/google/android/gms/fitness/internal/ble/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/fitness/data/BleDevice;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/internal/ble/b;-><init>(Lcom/google/android/gms/fitness/data/BleDevice;Ljava/util/List;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/BleDevice;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/fitness/internal/ble/b;->b:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/internal/ble/b;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/internal/ble/b;

    iget-object v2, p0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    iget-object v3, p1, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/internal/ble/b;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/internal/ble/b;->b:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/g/a;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/internal/ble/b;->b:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    const-string v0, "ClaimedBleDevice{%s %s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/internal/ble/b;->b:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
