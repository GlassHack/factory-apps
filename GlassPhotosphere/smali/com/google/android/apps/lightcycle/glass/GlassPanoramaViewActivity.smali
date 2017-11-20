.class public Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;
.super Lcom/google/android/apps/lightcycle/PanoramaViewActivity;
.source "GlassPanoramaViewActivity.java"


# static fields
.field private static final GLASS_TEAM_PANO:Ljava/lang/String; = "glass_team_pano.jpg"

.field private static final PITCH_OFFSET_DEGREES:F = 10.0f

.field private static final REQ_STRING_NAME:Ljava/lang/String; = "required_string"

.field private static final REQ_STRING_VALUE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = "glass_pano.jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->REQ_STRING_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->showFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;)Lcom/google/android/apps/lightcycle/viewer/PanoramaView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;)Lcom/google/android/apps/lightcycle/viewer/PanoramaView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->mainView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    return-object v0
.end method


# virtual methods
.method protected getImageFilename(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "glass_pano.jpg"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v1, "panoFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 53
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity$1;-><init>(Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;Landroid/content/res/AssetManager;Ljava/io/File;)V

    .line 76
    .local v2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    const/4 v3, 0x0

    return-object v3
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected preventStart()Z
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "required_string"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "required_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/apps/lightcycle/glass/GlassPanoramaViewActivity;->REQ_STRING_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 82
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    .restart local v0    # "value":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
