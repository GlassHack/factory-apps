.class final Lcom/google/android/gms/wearable/service/an;
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
    .line 825
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/an;->b:Lcom/google/android/gms/wearable/service/z;

    iput-object p2, p0, Lcom/google/android/gms/wearable/service/an;->a:Lcom/google/android/gms/wearable/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 36

    .prologue
    .line 829
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/wearable/service/an;->a:Lcom/google/android/gms/wearable/internal/ac;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/wearable/service/an;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v2}, Lcom/google/android/gms/wearable/service/z;->c(Lcom/google/android/gms/wearable/service/z;)Lcom/google/android/gms/wearable/node/m;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/wearable/service/an;->b:Lcom/google/android/gms/wearable/service/z;

    invoke-static {v2}, Lcom/google/android/gms/wearable/service/z;->e(Lcom/google/android/gms/wearable/service/z;)Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/m;->b:Lcom/google/android/gms/wearable/node/z;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/z;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "dataitems"

    sget-object v4, Lcom/google/android/gms/wearable/node/ai;->a:[Ljava/lang/String;

    const-string v5, "appkeys_id"

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    const-string v3, "appkeys"

    sget-object v4, Lcom/google/android/gms/wearable/node/ae;->a:[Ljava/lang/String;

    const-string v5, "_id"

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v21

    const-string v3, "assets"

    sget-object v4, Lcom/google/android/gms/wearable/node/ah;->a:[Ljava/lang/String;

    const-string v5, "digest"

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v22

    const-string v3, "assetsacls"

    sget-object v4, Lcom/google/android/gms/wearable/node/af;->a:[Ljava/lang/String;

    const-string v5, "assets_digest"

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v23

    const-string v3, "assetrefs"

    sget-object v4, Lcom/google/android/gms/wearable/node/ag;->a:[Ljava/lang/String;

    const-string v5, "assets_digest"

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v24

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v25

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/m;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v26

    const-wide/16 v2, 0x0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-wide v14, v2

    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/lang/Long;)J

    move-result-wide v28

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/lang/Long;)J

    move-result-wide v30

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {v5}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/lang/Long;)J

    move-result-wide v34

    add-long v12, v12, v34

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {v5}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/lang/Long;)J

    move-result-wide v34

    add-long v10, v10, v34

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {v5}, Lcom/google/android/gms/wearable/node/m;->a(Ljava/lang/Long;)J

    move-result-wide v34

    add-long v8, v8, v34

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/gms/wearable/node/m;->c(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v6, v4

    goto :goto_1

    :cond_0
    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    :goto_2
    add-long v12, v28, v30

    add-long/2addr v12, v10

    add-long/2addr v12, v8

    add-long/2addr v12, v6

    add-long v32, v12, v4

    add-long v12, v14, v32

    const-string v14, "DataItems"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "DataItems"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v34, "Id:"

    move-object/from16 v0, v34

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v34, ",name:"

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v34, ",dataitem storage:"

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, v28

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "DataItems"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v28, "Id:"

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v28, ",name:"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v28, ",appkey storage:"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, v30

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "DataItems"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v28, "Id:"

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v28, ",name:"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v28, ",asset storage:"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "DataItems"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Id:"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ",name:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ",asset acl storage:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DataItems"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Id:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",asset ref storage:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "DataItems"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ",name:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ",asset file storage:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/google/android/gms/wearable/node/m;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v3

    :goto_3
    move-wide/from16 v0, v32

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/google/android/gms/wearable/internal/PackageStorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v14, v12

    goto/16 :goto_0

    :cond_2
    const-string v4, "DataItems"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v32, "No asset digest found for package: "

    move-object/from16 v0, v32

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-direct {v2, v3, v14, v15, v0}, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;-><init>(IJLjava/util/List;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_4
    return-void

    .line 831
    :catch_0
    move-exception v2

    .line 832
    const-string v3, "WearableService"

    const-string v4, "getStorageInformationInternal: exception during processing"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/wearable/service/an;->a:Lcom/google/android/gms/wearable/internal/ac;

    new-instance v3, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    const/16 v4, 0x8

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v7, v5}, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;-><init>(IJLjava/util/List;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/wearable/internal/ac;->a(Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V

    goto :goto_4
.end method
