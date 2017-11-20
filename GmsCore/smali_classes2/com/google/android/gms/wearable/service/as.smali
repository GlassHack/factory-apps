.class final Lcom/google/android/gms/wearable/service/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/as;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/as;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/as;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/as;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->a(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/as;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/a;->b()V

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/wearable/service/b;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "WearableConn"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WearableConn"

    const-string v1, "removeConnection didn\'t remove any connections, skipping update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/as;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 300
    :goto_1
    return-void

    .line 294
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/wearable/node/a/a;->b:Lcom/google/android/gms/wearable/service/b;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/wearable/service/b;->b(Ljava/lang/String;)I

    iget-object v1, v0, Lcom/google/android/gms/wearable/node/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/a/a;->b(Lcom/google/android/gms/wearable/ConnectionConfiguration;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "connection_remove"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeConfig: exception during processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/as;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/as;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1
.end method
