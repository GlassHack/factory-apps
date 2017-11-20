.class public Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;
.super Landroid/os/AsyncTask;
.source "InitializeLocalDatabaseTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final JPEG_FILTER:Ljava/io/FileFilter;

.field private static final SORT_BY_DATE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final progressDialog:Landroid/app/ProgressDialog;

.field private final storageManager:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask$1;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->JPEG_FILTER:Ljava/io/FileFilter;

    .line 35
    new-instance v0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask$2;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->SORT_BY_DATE:Ljava/util/Comparator;

    .line 42
    const-class v0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;Landroid/app/ProgressDialog;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageManager"    # Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;
    .param p3, "progressDialog"    # Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;",
            "Landroid/app/ProgressDialog;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p4, "doneCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->storageManager:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    .line 62
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 63
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 64
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 73
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->storageManager:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->getPanoDirectory()Ljava/io/File;

    move-result-object v2

    .line 74
    .local v2, "panoPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    :cond_0
    sget-object v3, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to import panos. Directory \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    return-object v7

    .line 80
    :cond_2
    sget-object v3, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->JPEG_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 81
    .local v1, "panoFiles":[Ljava/io/File;
    sget-object v3, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->SORT_BY_DATE:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 82
    sget-object v3, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pano files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->progressDialog:Landroid/app/ProgressDialog;

    array-length v4, v1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 86
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->storageManager:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    aget-object v4, v1, v0

    const/16 v5, 0x3e8

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->addExistingPanoramaSession(Ljava/io/File;IF)Z

    .line 90
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->publishProgress([Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->doneCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 69
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 98
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/storage/InitializeLocalDatabaseTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
