.class public Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
.super Landroid/support/v4/app/Fragment;
.source "GalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$12;,
        Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$StitchedAction;
    }
.end annotation


# static fields
.field private static final PANORAMA_360_MIMETYPE:Ljava/lang/String; = "application/vnd.google.panorama360+jpg"

.field private static final SESSION_ZIP_FILENAME:Ljava/lang/String; = "session.zip"

.field private static final TAG:Ljava/lang/String;

.field private static final TARGET_FPS:I = 0x3c


# instance fields
.field private accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

.field private analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

.field private currentPitchDegrees:F

.field private glassRenderThread:Ljava/lang/Thread;

.field private ignoreNextDpadEvent:Z

.field private panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

.field private panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

.field private panoramaList:Landroid/widget/ListView;

.field private selectedItem:I

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

.field private storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

.field private uploadProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->currentPitchDegrees:F

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->selectedItem:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->ignoreNextDpadEvent:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->ignoreNextDpadEvent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->ignoreNextDpadEvent:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->renderForGlass()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->stitchUnstitchedPanos(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/http/HttpEntity;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->onUploadCompleted(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Lcom/google/android/apps/lightcycle/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoramaList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->viewPano(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sharePano(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->createLittlePlanetProjection(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->deletePano(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->zipAndSendPano(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->stitchPano(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Lcom/google/android/apps/lightcycle/util/Callback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/util/Callback;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->showActionsDialog(Lcom/google/android/apps/lightcycle/util/Callback;Z)V

    return-void
.end method

.method private buildProgressDialog(I)Landroid/app/ProgressDialog;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 643
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 644
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 646
    return-object v0
.end method

.method private createLittlePlanetProjection(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 592
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getSessionStorageForPano(I)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/StereographicProjectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 594
    return-void
.end method

.method private deletePano(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 498
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/google/android/apps/lightcycle/R$string;->are_you_sure_you_want_to_delete_pano:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 500
    sget v1, Lcom/google/android/apps/lightcycle/R$string;->yes:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 512
    sget v1, Lcom/google/android/apps/lightcycle/R$string;->no:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$10;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$10;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 520
    return-void
.end method

.method private static getFileNameForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 633
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSessionStorageForPano(I)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 604
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getSessionId(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v1, v0}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getExistingLocalSessionStorage(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v1

    return-object v1
.end method

.method private isCroppedHorizontally(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 672
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v0

    .line 673
    .local v0, "metadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    iget v2, v0, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onUploadCompleted(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 3
    .param p1, "panoUrl"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 384
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v2, "Upload failed. Not sharing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    .line 402
    .local v0, "progressCallback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Ljava/lang/Void;>;"
    sget-object v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v2, "Upload done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/apps/lightcycle/gallery/SharingUtil;->sharePano(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->refresh()V

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->notifyDataSetChanged()V

    .line 310
    return-void
.end method

.method private renderForGlass()V
    .locals 6

    .prologue
    .line 654
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v0

    .line 655
    .local v0, "gyro":[F
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 656
    .local v1, "xRad":F
    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->currentPitchDegrees:F

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->currentPitchDegrees:F

    .line 663
    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->currentPitchDegrees:F

    neg-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->selectedItem:I

    .line 664
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoramaList:Landroid/widget/ListView;

    iget v3, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->selectedItem:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 665
    return-void
.end method

.method private sharePano(IZ)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "donateToMaps"    # Z

    .prologue
    .line 456
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getPanoFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 458
    :cond_0
    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No stitched pano at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->isCroppedHorizontally(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/google/android/apps/lightcycle/R$string;->cannot_share_to_maps_360:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 476
    :goto_0
    return-void

    .line 468
    :cond_2
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getFileNameForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "filename":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 471
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sharePanoViaIntent(Ljava/io/File;)V

    goto :goto_0

    .line 475
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadAndSharePano(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sharePanoViaIntent(Ljava/io/File;)V
    .locals 3
    .param p1, "panoFile"    # Ljava/io/File;

    .prologue
    .line 485
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/lightcycle/R$string;->share_pano_with:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->startActivity(Landroid/content/Intent;)V

    .line 490
    return-void
.end method

.method private showActionsDialog(Lcom/google/android/apps/lightcycle/util/Callback;Z)V
    .locals 3
    .param p2, "showStitchedPanos"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "action":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 416
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/google/android/apps/lightcycle/R$string;->panorama_actions:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 419
    if-eqz p2, :cond_0

    sget v0, Lcom/google/android/apps/lightcycle/R$array;->gallery_item_actions_stitched:I

    .line 421
    .local v0, "actionsId":I
    :goto_0
    new-instance v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$8;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Lcom/google/android/apps/lightcycle/util/Callback;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 428
    return-void

    .line 419
    .end local v0    # "actionsId":I
    :cond_0
    sget v0, Lcom/google/android/apps/lightcycle/R$array;->gallery_item_actions_unstitched:I

    goto :goto_0
.end method

.method private startPhotoUpload(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "picture"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/google/android/apps/lightcycle/R$string;->progress_authenticating:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$5;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getAuthToken(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 339
    return-void
.end method

.method private stitchPano(I)V
    .locals 5
    .param p1, "which"    # I

    .prologue
    .line 571
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForCapture(Z)V

    .line 572
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getSessionStorageForPano(I)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v0

    .line 575
    .local v0, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    iget-object v1, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    :cond_0
    sget v1, Lcom/google/android/apps/lightcycle/R$string;->could_not_stitch_pano:I

    sget v2, Lcom/google/android/apps/lightcycle/R$string;->no_source_directory:I

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->newTask(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    goto :goto_0
.end method

.method private stitchUnstitchedPanos(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "unstitchedPanos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .local v1, "id":Ljava/lang/String;
    sget-object v3, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to stitch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v3, v1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getExistingLocalSessionStorage(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v2

    .line 618
    .local v2, "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    if-nez v2, :cond_0

    .line 619
    sget-object v3, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unstitched session not found in storage manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->newTask(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    goto :goto_0

    .line 624
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "session":Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    :cond_1
    return-void
.end method

.method private uploadAndSharePano(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "pathName"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->UPLOAD_START:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 375
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "panorama":Ljava/io/File;
    new-instance v1, Lorg/apache/http/entity/FileEntity;

    const-string v2, "image/jpeg"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->startPhotoUpload(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    .line 379
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "picture"    # Lorg/apache/http/HttpEntity;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$6;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    .line 364
    .local v0, "progressCallback":Lcom/google/android/apps/lightcycle/util/ProgressCallback;, "Lcom/google/android/apps/lightcycle/util/ProgressCallback<Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;>;"
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->getActiveAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, p3, v3}, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 366
    .local v1, "requestContext":Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    .line 368
    return-void
.end method

.method private viewPano(I)V
    .locals 5
    .param p1, "which"    # I

    .prologue
    .line 436
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getPanoFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "pathName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 438
    :cond_0
    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No stitched pano at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return-void

    .line 443
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v1, "viewPanoIntent":Landroid/content/Intent;
    const-string v2, "filename"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private zipAndSendPano(I)V
    .locals 6
    .param p1, "which"    # I

    .prologue
    .line 529
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v4}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getTempDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "session.zip"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    .local v3, "tempZipFile":Ljava/io/File;
    sget v4, Lcom/google/android/apps/lightcycle/R$string;->collecting_session_data:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->buildProgressDialog(I)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 534
    .local v0, "progressDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 536
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getSessionId(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "sessionId":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v4, v2}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getZippableSession(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/storage/ZippableSession;

    move-result-object v1

    .line 538
    .local v1, "session":Lcom/google/android/apps/lightcycle/storage/ZippableSession;
    new-instance v4, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;

    invoke-direct {v4, p0, v0, v3}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$11;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Landroid/app/AlertDialog;Ljava/io/File;)V

    invoke-interface {v1, v3, v4}, Lcom/google/android/apps/lightcycle/storage/ZippableSession;->saveAs(Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 560
    return-void
.end method


# virtual methods
.method public onAuthenticationActivityResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->onAuthenticationActivityResult(Z)V

    .line 301
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->accountsUtil:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    .line 113
    invoke-static {}, Lcom/google/android/apps/lightcycle/storage/StorageManagerFactory;->getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->init(Landroid/content/Context;)V

    .line 115
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->storageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;-><init>(Lcom/google/android/apps/lightcycle/storage/StorageManager;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;Landroid/view/LayoutInflater;Z)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    .line 122
    sget v1, Lcom/google/android/apps/lightcycle/R$string;->upload_in_progress:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->buildProgressDialog(I)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadProgressDialog:Landroid/app/ProgressDialog;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getUnstitchedSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->setHasOptionsMenu(Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 272
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    sget v1, Lcom/google/android/apps/lightcycle/R$layout;->gallery_pano_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "root":Landroid/view/View;
    sget v1, Lcom/google/android/apps/lightcycle/R$id;->pano_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoramaList:Landroid/widget/ListView;

    .line 157
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoramaList:Landroid/widget/ListView;

    sget v2, Lcom/google/android/apps/lightcycle/R$drawable;->image_border:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoramaList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoListAdapterStitched:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoramaList:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoramaList:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$2;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sget v4, Lcom/google/android/apps/lightcycle/R$id;->gallery_action_stitch_the_unstitched:I

    if-ne v3, v4, :cond_0

    .line 277
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->panoSource:Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/gallery/GalleryPanoSource;->getUnstitchedSessions()Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, "unstitchedPanos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Lcom/google/android/apps/lightcycle/R$string;->you_have_x_unstitched_panos:I

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "message":Ljava/lang/String;
    sget v3, Lcom/google/android/apps/lightcycle/R$string;->stitch_unstitched_sessions:I

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$4;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Ljava/util/List;)V

    invoke-static {v3, v0, v4, v5}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showOkCancelDialog(ILjava/lang/String;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 290
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "unstitchedPanos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->glassRenderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->glassRenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 148
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 233
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->refresh()V

    .line 236
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->enableEkf(Z)V

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 242
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->glassRenderThread:Ljava/lang/Thread;

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->glassRenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    :cond_0
    return-void
.end method
