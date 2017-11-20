.class final Lcom/google/android/location/fused/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/location/fused/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/location/fused/l;->b:Lcom/google/android/location/fused/g;

    iput-object p2, p0, Lcom/google/android/location/fused/l;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/google/android/location/fused/l;->b:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->d(Lcom/google/android/location/fused/g;)Lcom/google/android/location/b/af;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/location/fused/l;->a:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/google/android/location/b/af;->c(Landroid/content/Intent;)V

    .line 356
    iget-object v0, p0, Lcom/google/android/location/fused/l;->b:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->d(Lcom/google/android/location/fused/g;)Lcom/google/android/location/b/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 357
    iget-object v4, p0, Lcom/google/android/location/fused/l;->b:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->b(Landroid/os/Bundle;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v4

    .line 358
    iget-object v5, p0, Lcom/google/android/location/fused/l;->b:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 359
    iget-object v0, p0, Lcom/google/android/location/fused/l;->b:Lcom/google/android/location/fused/g;

    invoke-static {v0}, Lcom/google/android/location/fused/g;->e(Lcom/google/android/location/fused/g;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/location/o/ad;->a(Landroid/app/PendingIntent;Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 361
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 364
    iget-object v6, p0, Lcom/google/android/location/fused/l;->b:Lcom/google/android/location/fused/g;

    invoke-static {v4}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v7

    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v6, v7, v5, v0}, Lcom/google/android/location/fused/g;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;Z)V

    .line 368
    const-string v0, "GCoreFlp"

    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "Added request from SystemMemoryCache: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v0, v5}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 364
    goto :goto_1

    .line 372
    :cond_2
    const-string v0, "GCoreFlp"

    const-string v4, "Incomplete LocationRequest found in SystemMemoryCache."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_3
    return-void
.end method
