.class final Lcom/google/android/gms/fitness/n/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/n/az;)V
    .locals 0

    .prologue
    .line 2578
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/internal/ble/b;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 2582
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->f_()V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    .line 2584
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2586
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2587
    iget-object v2, p1, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    .line 2589
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/BleDevice;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2590
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2591
    const-string v4, "address"

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    const-string v4, "name"

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/BleDevice;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string v4, "type"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    const-string v4, "BleDevices"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2596
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    iget-object v6, p1, Lcom/google/android/gms/fitness/internal/ble/b;->b:Ljava/util/List;

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/n/az;JLjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2601
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_2 .. :try_end_2} :catch_0

    .line 2605
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/c/a/bb;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 2606
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 2599
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2601
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/ba;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->e()V
    :try_end_4
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2578
    check-cast p1, Lcom/google/android/gms/fitness/internal/ble/b;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/ba;->a(Lcom/google/android/gms/fitness/internal/ble/b;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
