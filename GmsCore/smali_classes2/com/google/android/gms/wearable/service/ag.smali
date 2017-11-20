.class final Lcom/google/android/gms/wearable/service/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[B

.field final synthetic e:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ag;->e:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ag;->a:Lcom/google/android/gms/wearable/internal/ac;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/ag;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/service/ag;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/service/ag;->d:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ag;->a:Lcom/google/android/gms/wearable/internal/ac;

    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ag;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/ag;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ag;->d:[B

    sget-object v4, Lcom/google/android/gms/wearable/node/ar;->a:Lcom/google/android/gms/wearable/node/ar;

    iget-object v5, p0, Lcom/google/android/gms/wearable/service/ag;->e:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v5}, Lcom/google/android/gms/wearable/service/z;->b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v5

    const-string v6, "rpcs"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "rpcs"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendRpc: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/google/android/gms/wearable/node/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v6, "node was null"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/google/android/gms/wearable/node/ar;->b:Lcom/google/android/gms/wearable/node/at;

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/google/android/gms/wearable/node/at;->a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v2

    if-ne v2, v9, :cond_1

    new-instance v0, Lcom/google/android/gms/wearable/internal/SendMessageResponse;

    const/16 v2, 0xfa0

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/SendMessageResponse;-><init>(II)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/SendMessageResponse;)V

    .line 604
    :goto_1
    return-void

    .line 596
    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/SendMessageResponse;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/wearable/internal/SendMessageResponse;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 598
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ag;->d:[B

    if-nez v0, :cond_2

    const-string v0, "null"

    .line 599
    :goto_2
    const-string v2, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendMessage: exception during processing: node "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ag;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ag;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ag;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/SendMessageResponse;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/wearable/internal/SendMessageResponse;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/SendMessageResponse;)V

    goto :goto_1

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ag;->d:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
