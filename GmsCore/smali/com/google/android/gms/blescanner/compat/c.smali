.class public final Lcom/google/android/gms/blescanner/compat/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/blescanner/compat/a;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/google/android/gms/blescanner/compat/a;
    .locals 5

    .prologue
    .line 43
    const-class v3, Lcom/google/android/gms/blescanner/compat/c;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/blescanner/compat/c;->a:Lcom/google/android/gms/blescanner/compat/a;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 46
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 52
    new-instance v1, Lcom/google/android/gms/blescanner/compat/h;

    invoke-direct {v1, v0}, Lcom/google/android/gms/blescanner/compat/h;-><init>(Landroid/bluetooth/BluetoothManager;)V

    sput-object v1, Lcom/google/android/gms/blescanner/compat/c;->a:Lcom/google/android/gms/blescanner/compat/a;

    .line 59
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/gms/blescanner/compat/c;->a:Lcom/google/android/gms/blescanner/compat/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    .line 49
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :cond_2
    if-eqz v1, :cond_0

    .line 54
    :try_start_1
    new-instance v2, Lcom/google/android/gms/blescanner/compat/d;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/blescanner/compat/d;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;Landroid/app/AlarmManager;)V

    sput-object v2, Lcom/google/android/gms/blescanner/compat/c;->a:Lcom/google/android/gms/blescanner/compat/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
