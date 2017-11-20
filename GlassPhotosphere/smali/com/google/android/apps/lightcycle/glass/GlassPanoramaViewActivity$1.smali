.class Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;
.super Landroid/os/AsyncTask;
.source "GlassPanoramaViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->getImageFilename(Landroid/content/Intent;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

.field final synthetic val$assetManager:Landroid/content/res/AssetManager;

.field final synthetic val$panoFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->val$assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->val$panoFile:Ljava/io/File;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->val$assetManager:Landroid/content/res/AssetManager;

    const-string v3, "glass_team_pano.jpg"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 59
    .local v1, "panoStream":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->val$panoFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/util/FileUtil;->storeFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 60
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->val$panoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .end local v1    # "panoStream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "Could not load panorama."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageFilename"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->access$000(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->access$100(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;)Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setCompassModeEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->access$200(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;)Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setCompassModePitchOffsetDegrees(F)V

    .line 74
    :cond_0
    return-void
.end method
