.class public Lcom/google/glass/camera/ViewfinderActivity;
.super Lcom/google/glass/camera/TakePictureActivity;
.source "ViewfinderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/glass/camera/TakePictureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected setShouldPreview()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/ViewfinderActivity;->shouldPreview:Z

    .line 11
    return-void
.end method
