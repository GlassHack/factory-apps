.class public Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;
.super Landroid/app/Activity;
.source "GlassUploadActivity.java"


# static fields
.field public static final FILENAME_EXTRA:Ljava/lang/String; = "filename_extra"

.field public static final PATHNAME_EXTRA:Ljava/lang/String; = "pathname_extra"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

.field private actionTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/http/HttpEntity;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->actionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->onUploadCompleted(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    return-void
.end method

.method private onUploadCompleted(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 3
    .param p1, "panoUrl"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    sget-object v1, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->TAG:Ljava/lang/String;

    const-string v2, "Upload failed. Not sharing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->finish()V

    .line 141
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$3;-><init>(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;)V

    .line 139
    .local v0, "progressCallback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Ljava/lang/Void;>;"
    sget-object v1, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->TAG:Ljava/lang/String;

    const-string v2, "Upload done. Initiating sharing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1, p0, v0}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->sharePano(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    goto :goto_0
.end method

.method private uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "picture"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->actionTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->progress_authenticating:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    new-instance v1, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$1;-><init>(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getAuthToken(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 84
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "picture"    # Lorg/apache/http/HttpEntity;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity$2;-><init>(Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;)V

    .line 108
    .local v0, "progressCallback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;>;"
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getActiveAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3, p0}, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    .local v1, "requestContext":Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v3, Lcom/google/android/apps/lightcycle/R$layout;->full_screen_progress:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->setContentView(I)V

    .line 51
    new-instance v3, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    .line 52
    sget v3, Lcom/google/android/apps/lightcycle/R$id;->action:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->actionTextView:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "filename_extra"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "fileName":Ljava/lang/String;
    const-string v3, "pathname_extra"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "pathName":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/entity/FileEntity;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "image/jpeg"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/lightcycle/glass/GlassUploadActivity;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    .line 60
    return-void
.end method
