.class final Lcom/google/android/gms/wearable/service/ac;
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
    .line 446
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ac;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ac;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/ac;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ac;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ac;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ac;->a:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "DataItems"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DataItems"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "getDataItemsByUri: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v7, v1, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-static {v4}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/l;->b(Lcom/google/android/gms/wearable/node/k;)Lcom/google/android/gms/wearable/internal/DataItemParcelable;

    move-result-object v0

    .line 458
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/service/ac;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v2, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;-><init>(ILcom/google/android/gms/wearable/internal/DataItemParcelable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetDataItemResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 468
    :goto_2
    return-void

    .line 461
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 467
    :catch_0
    move-exception v0

    .line 464
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDataItem: exception during processing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ac;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ac;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v1, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;-><init>(ILcom/google/android/gms/wearable/internal/DataItemParcelable;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetDataItemResponse;)V

    goto :goto_2

    :cond_1
    move-object v0, v6

    goto :goto_1

    :cond_2
    move-object v3, v6

    move-object v2, v6

    goto/16 :goto_0
.end method
