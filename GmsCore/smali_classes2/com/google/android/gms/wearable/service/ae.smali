.class final Lcom/google/android/gms/wearable/service/ae;
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
    .line 520
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ae;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ae;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/ae;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ae;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v1}, Lcom/google/android/gms/wearable/service/z;->c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/ae;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v2}, Lcom/google/android/gms/wearable/service/z;->b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ae;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/a;Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 526
    :try_start_1
    new-instance v3, Lcom/google/android/gms/common/data/DataHolder;

    move-object v0, v2

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    move-object v1, v0

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Landroid/database/AbstractWindowedCursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 529
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ae;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-interface {v1, v3}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 534
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 541
    :goto_0
    return-void

    .line 531
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 534
    :catchall_1
    move-exception v1

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 540
    :catch_0
    move-exception v1

    .line 537
    const-string v2, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDataItemsByUri: exception during processing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ae;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ae;->b:Lcom/google/android/gms/wearable/internal/ac;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method
