.class public Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;
.super Landroid/app/Activity;
.source "PhotoPickerActivity.java"


# static fields
.field private static final PICK_REQUEST_CODE:I = 0x2a


# instance fields
.field private photoPickerLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->photoPickerLaunched:Z

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    const/16 v5, 0x2a

    if-ne p1, v5, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, "imageUri":Landroid/net/Uri;
    new-instance v4, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    invoke-direct {v4, p0}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;-><init>(Landroid/content/Context;)V

    .line 61
    .local v4, "repository":Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 62
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/apps/lightcycle/util/FileUtil;->storeFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 66
    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v3

    .line 68
    .local v3, "metadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    if-nez v3, :cond_1

    .line 69
    const-string v5, "Selected file is not a panorama. Reverting to demo file."

    invoke-direct {p0, v5}, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->toast(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->switchToDemoFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "metadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->finish()V

    .line 82
    .end local v1    # "imageUri":Landroid/net/Uri;
    .end local v4    # "repository":Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;
    :cond_0
    return-void

    .line 73
    .restart local v1    # "imageUri":Landroid/net/Uri;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "metadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    .restart local v4    # "repository":Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;
    :cond_1
    :try_start_1
    const-string v5, "Panorama successfully set."

    invoke-direct {p0, v5}, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->toast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 75
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "metadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Could not store temporary file."

    invoke-direct {p0, v5}, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->toast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 36
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->photoPickerLaunched:Z

    if-nez v1, :cond_0

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "photoPickerIntent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->photoPickerLaunched:Z

    .line 47
    .end local v0    # "photoPickerIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PhotoPickerActivity;->finish()V

    goto :goto_0
.end method
