.class final Lcom/google/android/gms/auth/setup/d2d/k;
.super Lcom/google/android/gms/auth/setup/d2d/a/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/b/d;

.field final synthetic b:Ljava/util/concurrent/Future;

.field final synthetic c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;Lcom/google/android/gms/auth/setup/d2d/b/d;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iput-object p5, p0, Lcom/google/android/gms/auth/setup/d2d/k;->a:Lcom/google/android/gms/auth/setup/d2d/b/d;

    iput-object p6, p0, Lcom/google/android/gms/auth/setup/d2d/k;->b:Ljava/util/concurrent/Future;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/auth/setup/d2d/a/f;-><init>(Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    .line 385
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/a/b;)V
    .locals 6

    .prologue
    .line 349
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth connection created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/a/b;)Lcom/google/android/gms/auth/setup/d2d/a/b;

    .line 352
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/k;->a:Lcom/google/android/gms/auth/setup/d2d/b/d;

    iget-object v1, v1, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    .line 356
    :goto_0
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/g;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/g;-><init>()V

    .line 357
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    const v3, 0x7f100086

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/g;->b:Ljava/lang/String;

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v3}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->b(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Lcom/google/android/gms/auth/setup/d2d/a/b;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/auth/setup/d2d/m;

    iget-object v5, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/auth/setup/d2d/m;-><init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->a:Lcom/google/android/gms/auth/setup/d2d/b/d;

    iget-object v0, v0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

    invoke-static {v3, v4, v0, v1}, Lcom/google/android/gms/auth/setup/d2d/b;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/android/gms/auth/setup/d2d/f;[BLcom/google/android/gms/auth/setup/d2d/b/g;)Lcom/google/android/gms/auth/setup/d2d/g;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/g;)Lcom/google/android/gms/auth/setup/d2d/g;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->c(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 380
    :goto_2
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    const v1, 0x7f10007b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    goto :goto_1

    .line 375
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/k;->c:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->d(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 377
    :catch_1
    move-exception v0

    .line 378
    :goto_3
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while waiting for OK."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 377
    :catch_2
    move-exception v0

    goto :goto_3
.end method
