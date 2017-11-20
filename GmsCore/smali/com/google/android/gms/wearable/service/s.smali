.class final Lcom/google/android/gms/wearable/service/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/j;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/service/WearableService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/s;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;B)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/service/s;-><init>(Lcom/google/android/gms/wearable/service/WearableService;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/node/k;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 368
    const-string v0, "WearableService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDataItemChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    .line 373
    iget-boolean v0, p1, Lcom/google/android/gms/wearable/node/k;->c:Z

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Lcom/google/android/gms/wearable/service/t;

    const-string v2, "onDataChanged:deleted"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/wearable/service/t;-><init>(Lcom/google/android/gms/wearable/service/s;Ljava/lang/String;Lcom/google/android/gms/wearable/node/i;)V

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/s;->a:Lcom/google/android/gms/wearable/service/WearableService;

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/wearable/service/WearableService;->a(Lcom/google/android/gms/wearable/service/WearableService;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/service/x;)V

    .line 419
    :cond_1
    :goto_1
    return-void

    .line 391
    :cond_2
    iget-boolean v0, p1, Lcom/google/android/gms/wearable/node/k;->d:Z

    if-nez v0, :cond_3

    .line 392
    const-string v0, "WearableService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDataItemChanged: dropping onDataChanged because the assets are not ready, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/k;->a:Lcom/google/android/gms/wearable/node/a;

    iget-object v2, v2, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 400
    :cond_3
    new-instance v0, Lcom/google/android/gms/wearable/service/u;

    const-string v2, "onDataChanged"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/wearable/service/u;-><init>(Lcom/google/android/gms/wearable/service/s;Ljava/lang/String;Lcom/google/android/gms/wearable/node/i;)V

    goto :goto_0
.end method
