.class final Lcom/google/android/gms/wearable/service/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/service/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/Asset;

.field final synthetic b:Lcom/google/android/gms/wearable/internal/ac;

.field final synthetic c:Lcom/google/android/gms/wearable/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/z;Lcom/google/android/gms/wearable/Asset;Lcom/google/android/gms/wearable/internal/ac;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/ah;->c:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/ah;->a:Lcom/google/android/gms/wearable/Asset;

    iput-object p3, p0, Lcom/google/android/gms/wearable/service/ah;->b:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 638
    .line 639
    :try_start_0
    sget-object v0, Lcom/google/android/gms/wearable/node/m;->a:Lcom/google/android/gms/wearable/node/m;

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/ah;->c:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v2}, Lcom/google/android/gms/wearable/service/z;->b(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ah;->a:Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v4}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/wearable/node/a;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 641
    :goto_0
    if-eqz v0, :cond_2

    .line 643
    const/high16 v2, 0x10000000

    :try_start_1
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 650
    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_3

    .line 651
    :cond_0
    const-string v0, "WearableService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFdForAsset: unable to provide asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/ah;->a:Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ah;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v2, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;

    const/16 v3, 0xfa5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;)V

    .line 666
    :goto_2
    return-void

    .line 639
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/wearable/node/m;->c:Lcom/google/android/gms/wearable/node/d;

    invoke-interface {v0, v3}, Lcom/google/android/gms/wearable/node/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v2

    const-string v2, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fail to open asset file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 656
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/service/ah;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v3, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 660
    :catch_1
    move-exception v0

    .line 661
    const-string v2, "WearableService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFdForAsset: exception during processing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/ah;->a:Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/ah;->b:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v2, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;)V

    goto :goto_2
.end method
