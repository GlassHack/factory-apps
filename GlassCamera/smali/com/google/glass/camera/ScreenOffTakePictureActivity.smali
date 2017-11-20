.class public Lcom/google/glass/camera/ScreenOffTakePictureActivity;
.super Lcom/google/glass/camera/TakePictureActivity;
.source "ScreenOffTakePictureActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/google/glass/camera/TakePictureActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/glass/camera/ScreenOffTakePictureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 18
    return-void
.end method

.method protected final shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
