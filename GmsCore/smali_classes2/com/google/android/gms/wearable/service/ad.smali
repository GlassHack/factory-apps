.class final Lcom/google/android/gms/wearable/service/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic b:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ad;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ad;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ad;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v1}, Lcom/google/android/gms/wearable/service/z;->c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/ad;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v2}, Lcom/google/android/gms/wearable/service/z;->b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/a;Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 490
    :try_start_1
    new-instance v3, Lcom/google/android/gms/common/data/DataHolder;

    move-object v0, v2

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    move-object v1, v0

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Landroid/database/AbstractWindowedCursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 493
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ad;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-interface {v1, v3}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 498
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 505
    :goto_0
    return-void

    .line 495
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->h()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 498
    :catchall_1
    move-exception v1

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 504
    :catch_0
    move-exception v1

    .line 501
    const-string v2, "WearableService"

    const-string v3, "getDataItems: exception during processing"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ad;->a:Lcom/google/android/gms/wearable/internal/ac;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method
