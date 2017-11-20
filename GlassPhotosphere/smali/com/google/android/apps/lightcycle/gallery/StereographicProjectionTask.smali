.class public Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;
.super Landroid/os/AsyncTask;
.source "StereographicProjectionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LITTLE_PLANET_DIMENSION_PIXELS:I = 0x800

.field private static final LITTLE_PLANET_SCALE_FACTOR:F = 0.25f

.field private static final LITTLE_PLANET_SUBDIR:Ljava/lang/String; = "Little_Planets"


# instance fields
.field private final context:Landroid/app/Activity;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->context:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->doInBackground([Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)Ljava/lang/String;
    .locals 8
    .param p1, "sessions"    # [Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .prologue
    .line 51
    const/4 v6, 0x0

    aget-object v5, p1, v6

    .line 53
    .local v5, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 55
    .local v4, "pictureDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v6, "Little_Planets"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v0, "littlePlanetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v1, "littlePlanetFile":Ljava/io/File;
    iget-object v3, v5, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    .line 64
    .local v3, "panoFile":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "outputFile":Ljava/lang/String;
    const/high16 v6, 0x3e800000    # 0.25f

    const/16 v7, 0x800

    invoke-static {v6, v3, v2, v7}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->StereographicProject(FLjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 68
    const/4 v2, 0x0

    .line 70
    .end local v2    # "outputFile":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    sget v0, Lcom/google/android/apps/lightcycle/R$string;->cannot_create_image:I

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->image_doesnt_contain_metadata:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->context:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->context:Landroid/app/Activity;

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "image/jpeg"

    aput-object v3, v2, v4

    new-instance v3, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->progressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->message_stitching:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 47
    return-void
.end method
