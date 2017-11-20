.class final Lcom/google/android/gms/wearable/service/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/PutDataRequest;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ab;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ab;->a:Lcom/google/android/gms/wearable/PutDataRequest;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/ab;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 414
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ab;->a:Lcom/google/android/gms/wearable/PutDataRequest;

    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ab;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {}, Lcom/google/android/gms/wearable/service/z;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_1

    move-object v0, v2

    .line 416
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ab;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v3, Lcom/google/android/gms/wearable/internal/PutDataResponse;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/wearable/service/ab;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v5}, Lcom/google/android/gms/wearable/service/z;->c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/wearable/service/ab;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v6}, Lcom/google/android/gms/wearable/service/z;->b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v6

    const-string v7, "DataItems"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "DataItems"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setDataItem: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v7, Lcom/google/android/gms/wearable/node/k;

    invoke-direct {v7, v6}, Lcom/google/android/gms/wearable/node/k;-><init>(Lcom/google/android/gms/wearable/node/a;)V

    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/google/android/gms/wearable/node/k;->c:Z

    iget-object v6, v5, Lcom/google/android/gms/wearable/node/m;->d:Lcom/google/android/gms/wearable/node/ax;

    invoke-interface {v6}, Lcom/google/android/gms/wearable/node/ax;->b()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/google/android/gms/wearable/node/k;->e:Ljava/lang/String;

    iput-object v0, v7, Lcom/google/android/gms/wearable/node/k;->b:Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/l;->b(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/internal/DataItemParcelable;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/wearable/internal/PutDataResponse;-><init>(ILcom/google/android/gms/wearable/internal/DataItemParcelable;)V

    invoke-interface {v1, v3}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/PutDataResponse;)V

    .line 424
    :goto_1
    return-void

    .line 414
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/wearable/PutDataRequest;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_2
    new-instance v3, Lcom/google/android/gms/wearable/node/i;

    invoke-virtual {v4}, Lcom/google/android/gms/wearable/PutDataRequest;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/wearable/node/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/wearable/PutDataRequest;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    if-nez v0, :cond_2

    move-object v0, v2

    :goto_4
    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/wearable/node/i;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/node/c;)Lcom/google/android/gms/wearable/node/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "putData: exception during processing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ab;->a:Lcom/google/android/gms/wearable/PutDataRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ab;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/PutDataResponse;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/wearable/internal/PutDataResponse;-><init>(ILcom/google/android/gms/wearable/internal/DataItemParcelable;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/PutDataResponse;)V

    goto :goto_1

    .line 414
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/c;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/node/c;

    move-result-object v0

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/wearable/node/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/google/android/gms/wearable/node/c;-><init>([BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    goto :goto_4

    :cond_5
    iget-object v6, v0, Lcom/google/android/gms/wearable/Asset;->b:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/wearable/Asset;->b:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Lcom/google/android/gms/wearable/node/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v0, v7, v8, v6, v9}, Lcom/google/android/gms/wearable/node/c;-><init>([BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    goto :goto_4

    :cond_6
    iget-object v6, v0, Lcom/google/android/gms/wearable/Asset;->c:Landroid/net/Uri;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/google/android/gms/wearable/Asset;->c:Landroid/net/Uri;

    new-instance v0, Lcom/google/android/gms/wearable/node/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v0, v7, v8, v9, v6}, Lcom/google/android/gms/wearable/node/c;-><init>([BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unconvertable asset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v4}, Lcom/google/android/gms/wearable/PutDataRequest;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/wearable/node/i;->a([B)Lcom/google/android/gms/wearable/node/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method
