.class final Lcom/google/android/gms/blescanner/compat/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/blescanner/compat/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/blescanner/compat/d;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/e;->a:Lcom/google/android/gms/blescanner/compat/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7

    .prologue
    .line 141
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/e;->a:Lcom/google/android/gms/blescanner/compat/d;

    iget-object v1, v1, Lcom/google/android/gms/blescanner/compat/d;->a:Lcom/google/android/gms/blescanner/b/b;

    invoke-interface {v1}, Lcom/google/android/gms/blescanner/b/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 142
    new-instance v0, Lcom/google/android/gms/blescanner/compat/ScanResult;

    invoke-static {p3}, Lcom/google/android/gms/blescanner/compat/n;->a([B)Lcom/google/android/gms/blescanner/compat/n;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/blescanner/compat/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/blescanner/compat/n;IJ)V

    .line 144
    iget-object v3, p0, Lcom/google/android/gms/blescanner/compat/e;->a:Lcom/google/android/gms/blescanner/compat/d;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/blescanner/compat/d;->a(Ljava/lang/String;Lcom/google/android/gms/blescanner/compat/ScanResult;)V

    const/4 v1, 0x0

    iget-object v2, v3, Lcom/google/android/gms/blescanner/compat/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/blescanner/compat/f;

    iget-object v6, v1, Lcom/google/android/gms/blescanner/compat/f;->a:Lcom/google/android/gms/blescanner/compat/g;

    iget-object v6, v6, Lcom/google/android/gms/blescanner/compat/g;->a:Ljava/util/List;

    invoke-static {v6, v0}, Lcom/google/android/gms/blescanner/compat/d;->a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/google/android/gms/blescanner/compat/f;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/blescanner/compat/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    if-le v2, v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/blescanner/compat/d;->a(Z)V

    .line 145
    :cond_2
    return-void
.end method
