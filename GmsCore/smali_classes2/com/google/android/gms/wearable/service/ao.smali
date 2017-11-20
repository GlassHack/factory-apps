.class final Lcom/google/android/gms/wearable/service/ao;
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
    .line 851
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ao;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ao;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ao;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/z;->c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/z;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/m;->c(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/l;->a(Landroid/database/Cursor;)Lcom/google/android/gms/wearable/node/k;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/wearable/node/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    const-string v1, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearStorage: exception during clearing storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ao;->a:Lcom/google/android/gms/wearable/internal/ac;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 861
    :goto_1
    return-void

    .line 855
    :cond_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 856
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ao;->a:Lcom/google/android/gms/wearable/internal/ac;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
