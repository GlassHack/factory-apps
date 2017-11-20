.class final Lcom/google/android/gms/wearable/service/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Landroid/net/Uri;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/af;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/af;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/af;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/af;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v1}, Lcom/google/android/gms/wearable/service/z;->c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/af;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v1}, Lcom/google/android/gms/wearable/service/z;->b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/af;->a:Landroid/net/Uri;

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/wearable/node/m;->b(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 561
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/af;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v2, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_1
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteDataItems: exception during processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/af;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/af;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
