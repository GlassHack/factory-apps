.class public Lcom/google/android/pano/widget/MetadataView;
.super Landroid/widget/FrameLayout;
.source "MetadataView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/MetadataView$MetadataHolder;
    }
.end annotation


# instance fields
.field protected mAlbum:Landroid/widget/TextView;

.field protected mArt:Landroid/widget/ImageView;

.field protected mArtist:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

.field protected mMetadataUpdater:Ljava/lang/Runnable;

.field protected mRes:Landroid/content/res/Resources;

.field protected mTitle:Landroid/widget/TextView;

.field protected mUseArt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/google/android/pano/widget/MetadataView$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/MetadataView$1;-><init>(Lcom/google/android/pano/widget/MetadataView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadataUpdater:Ljava/lang/Runnable;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mRes:Landroid/content/res/Resources;

    .line 103
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->initDefaults()V

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/MetadataView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->setupViews()V

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/MetadataView;->setMetadata(Lcom/google/android/pano/widget/MetadataView$MetadataHolder;Z)Z

    .line 109
    return-void
.end method


# virtual methods
.method protected initDefaults()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    return-void
.end method

.method public setMetadata(Lcom/google/android/pano/widget/MetadataView$MetadataHolder;Z)Z
    .locals 3
    .param p1, "metadata"    # Lcom/google/android/pano/widget/MetadataView$MetadataHolder;
    .param p2, "useArt"    # Z

    .prologue
    .line 119
    iget-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 120
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    .line 121
    iput-boolean p2, p0, Lcom/google/android/pano/widget/MetadataView;->mUseArt:Z

    .line 122
    iget-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadataUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return v0

    .line 119
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    invoke-virtual {v1, p1}, Lcom/google/android/pano/widget/MetadataView$MetadataHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupViews()V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/pano/R$layout;->default_metadata_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 137
    sget v1, Lcom/google/android/pano/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mTitle:Landroid/widget/TextView;

    .line 138
    sget v1, Lcom/google/android/pano/R$id;->album:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mAlbum:Landroid/widget/TextView;

    .line 139
    sget v1, Lcom/google/android/pano/R$id;->artist:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mArtist:Landroid/widget/TextView;

    .line 140
    sget v1, Lcom/google/android/pano/R$id;->art:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mArt:Landroid/widget/ImageView;

    .line 141
    return-void
.end method
