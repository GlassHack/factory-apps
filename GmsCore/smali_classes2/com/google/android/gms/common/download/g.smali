.class final Lcom/google/android/gms/common/download/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;B)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/download/g;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)V

    return-void
.end method

.method private varargs a()Landroid/database/Cursor;
    .locals 15

    .prologue
    const-wide/16 v12, 0x1

    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 66
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 68
    new-array v0, v2, [Ljava/lang/Object;

    const-wide/16 v2, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "Enabled"

    aput-object v4, v0, v5

    const-string v4, ""

    aput-object v4, v0, v7

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move v0, v1

    move-wide v4, v2

    .line 72
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 73
    new-instance v8, Lcom/google/android/gms/common/download/a;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/google/android/gms/common/download/a;-><init>(Lorg/json/JSONObject;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " downloaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    iget-object v9, v8, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/common/download/DownloadService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 76
    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v11, 0x0

    add-long v2, v4, v12

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    aput-object v9, v10, v4

    const/4 v4, 0x2

    iget-object v5, v8, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    aput-object v5, v10, v4

    invoke-virtual {v6, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v2, v4

    .line 84
    :goto_1
    :try_start_3
    new-instance v7, Lorg/json/JSONArray;

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v8, 0x0

    add-long v4, v2, v12

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v8

    const/4 v2, 0x1

    const-string v3, "Gservices Overrides"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v0, v2

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move v14, v1

    move-wide v0, v4

    move v4, v14

    .line 87
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 88
    new-instance v5, Lcom/google/android/gms/common/download/a;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/android/gms/common/download/a;-><init>(Lorg/json/JSONObject;)V

    .line 89
    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v9, 0x0

    add-long v2, v0, v12

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    iget-object v1, v5, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    aput-object v1, v8, v0

    const/4 v0, 0x2

    iget-object v1, v5, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 87
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v2

    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :cond_2
    move-wide v2, v0

    .line 96
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 97
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_3

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 100
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-long v0, v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v2, 0x1

    const-string v3, "DownloadManager"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v5, v2

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 101
    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    const-string v2, "title"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    const-string v2, "status"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 105
    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-long v2, v0, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v5, v8, v0

    const/4 v0, 0x2

    aput-object v7, v8, v0

    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide v0, v2

    .line 106
    goto :goto_5

    .line 92
    :catch_1
    move-exception v0

    move-object v14, v0

    move-wide v0, v2

    move-object v2, v14

    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-wide v2, v0

    goto :goto_4

    .line 109
    :cond_3
    if-eqz v4, :cond_4

    .line 110
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_4
    return-object v6

    .line 109
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_5

    .line 110
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 92
    :catch_2
    move-exception v0

    move-object v2, v0

    move-wide v0, v4

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_6

    .line 78
    :catch_4
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/common/download/g;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 62
    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/widget/ae;

    iget-object v2, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->e()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    aput-object v5, v3, v4

    invoke-static {}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->e()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v3, v7

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/support/v4/widget/ae;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->b(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/download/g;->a:Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;

    invoke-static {v1}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->a(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->a(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method
