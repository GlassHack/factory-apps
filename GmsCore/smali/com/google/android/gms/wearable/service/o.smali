.class public final Lcom/google/android/gms/wearable/service/o;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/service/WearableService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/o;->a:Lcom/google/android/gms/wearable/service/WearableService;

    .line 320
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 321
    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 327
    const/16 v0, 0x10

    invoke-interface {p1, v0, v1, v1}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 360
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-interface {p1, v3, v1, v1}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/o;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/o;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v0, p3}, Lcom/google/android/gms/wearable/node/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/wearable/node/a;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 348
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/o;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/WearableService;->b(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 349
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/service/z;

    .line 350
    :goto_1
    if-nez v0, :cond_2

    .line 351
    new-instance v0, Lcom/google/android/gms/wearable/service/z;

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/o;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/service/WearableService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/o;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v4}, Lcom/google/android/gms/wearable/service/WearableService;->c(Lcom/google/android/gms/wearable/service/WearableService;)Lcom/google/android/gms/wearable/service/e;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->c()Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/service/z;-><init>(Landroid/content/pm/PackageManager;Lcom/google/android/gms/wearable/node/m;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/service/e;Lcom/google/android/gms/wearable/node/a/a;)V

    .line 354
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/o;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/service/WearableService;->b(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    const-string v0, "WearableService"

    const-string v1, "Client died while brokering wearable service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :catch_1
    move-exception v0

    invoke-interface {p1, v3, v1, v1}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 349
    goto :goto_1
.end method
