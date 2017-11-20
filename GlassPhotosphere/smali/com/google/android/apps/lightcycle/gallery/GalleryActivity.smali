.class public Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GalleryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 69
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->gallery:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    .line 71
    .local v1, "gallery":Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->onAuthenticationActivityResult(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 38
    :cond_0
    invoke-static {p0, v1}, Lcom/google/android/apps/lightcycle/util/UiUtil;->setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V

    .line 39
    sget v0, Lcom/google/android/apps/lightcycle/R$layout;->gallery_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;->setContentView(I)V

    .line 40
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryActivity;->finish()V

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 45
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->GALLERY:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 47
    return-void
.end method
