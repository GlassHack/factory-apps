.class public Lcom/google/android/pano/dialog/BaseContentFragment;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

.field private mBreadcrumb:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private final mFragment:Lcom/google/android/pano/dialog/LiteFragment;

.field private mIconBackgroundColor:I

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconPadding:I

.field private mIconResourceId:I

.field private mIconUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/LiteFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/LiteFragment;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/BaseContentFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/BaseContentFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/dialog/BaseContentFragment;->addShadow(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/BaseContentFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/pano/dialog/BaseContentFragment;->updateViewSize(Landroid/widget/ImageView;)V

    return-void
.end method

.method private addShadow(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 406
    sget v1, Lcom/google/android/pano/R$id;->shadow_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    .line 408
    .local v0, "shadowLayout":Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addShadowView(Landroid/view/View;)Landroid/view/View;

    .line 409
    return-void
.end method

.method private static buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Landroid/graphics/Bitmap;II)Landroid/os/Bundle;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconResourceId"    # I
    .param p4, "iconUri"    # Landroid/net/Uri;
    .param p5, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "iconPaddingPx"    # I
    .param p7, "iconBackgroundColor"    # I

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "breadcrumb"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "iconResourceId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "iconUri"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string v1, "iconBitmap"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    const-string v1, "iconPadding"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v1, "iconBackground"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    return-object v0
.end method

.method public static buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .locals 8
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;
    .param p4, "backgroundColor"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, v3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/pano/dialog/BaseContentFragment;->buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Landroid/graphics/Bitmap;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private updateViewSize(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 395
    .local v0, "intrinsicWidth":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 396
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-lez v0, :cond_0

    .line 397
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public getBreadCrumb()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->breadcrumb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getDescription()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getIconBackgroundColor()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBackgroundColor:I

    return v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconPadding()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconPadding:I

    return v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconResourceId:I

    return v0
.end method

.method public getIconResourceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    .line 147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 103
    if-eqz p1, :cond_8

    move-object v0, p1

    .line 104
    .local v0, "state":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 105
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mTitle:Ljava/lang/String;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBreadcrumb:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 108
    const-string v1, "breadcrumb"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBreadcrumb:Ljava/lang/String;

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mDescription:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 111
    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mDescription:Ljava/lang/String;

    .line 113
    :cond_2
    iget v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconResourceId:I

    if-nez v1, :cond_3

    .line 114
    const-string v1, "iconResourceId"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconResourceId:I

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 117
    const-string v1, "iconUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconUri:Landroid/net/Uri;

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 120
    const-string v1, "iconBitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 122
    :cond_5
    iget v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBackgroundColor:I

    if-nez v1, :cond_6

    .line 123
    const-string v1, "iconBackground"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBackgroundColor:I

    .line 125
    :cond_6
    iget v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconPadding:I

    if-nez v1, :cond_7

    .line 126
    const-string v1, "iconPadding"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconPadding:I

    .line 128
    :cond_7
    return-void

    .line 103
    .end local v0    # "state":Landroid/os/Bundle;
    :cond_8
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    sget v8, Lcom/google/android/pano/R$layout;->content_fragment:I

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 173
    .local v7, "view":Landroid/view/View;
    sget v8, Lcom/google/android/pano/R$id;->title:I

    iget-object v9, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/pano/dialog/BaseContentFragment;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 174
    sget v8, Lcom/google/android/pano/R$id;->breadcrumb:I

    iget-object v9, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/pano/dialog/BaseContentFragment;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 175
    sget v8, Lcom/google/android/pano/R$id;->description:I

    iget-object v9, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/pano/dialog/BaseContentFragment;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceId()I

    move-result v5

    .line 177
    .local v5, "iconResourceId":I
    sget v8, Lcom/google/android/pano/R$id;->icon:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 178
    .local v3, "iconImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconBackgroundColor()I

    move-result v1

    .line 179
    .local v1, "iconBackground":I
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconPadding()I

    move-result v4

    .line 183
    .local v4, "iconPadding":I
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 185
    if-eqz v5, :cond_2

    .line 186
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-direct {p0, v3, v7}, Lcom/google/android/pano/dialog/BaseContentFragment;->addShadow(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 188
    invoke-direct {p0, v3}, Lcom/google/android/pano/dialog/BaseContentFragment;->updateViewSize(Landroid/widget/ImageView;)V

    .line 226
    :cond_1
    :goto_0
    return-object v7

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    .local v2, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 192
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-direct {p0, v3, v7}, Lcom/google/android/pano/dialog/BaseContentFragment;->addShadow(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 194
    invoke-direct {p0, v3}, Lcom/google/android/pano/dialog/BaseContentFragment;->updateViewSize(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceUri()Landroid/net/Uri;

    move-result-object v6

    .line 197
    .local v6, "iconUri":Landroid/net/Uri;
    if-eqz v6, :cond_4

    .line 198
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_1

    .line 201
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/google/android/pano/widget/BitmapDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;

    move-result-object v0

    .line 202
    .local v0, "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    new-instance v8, Lcom/google/android/pano/dialog/BaseContentFragment$1;

    invoke-direct {v8, p0, v3, v7}, Lcom/google/android/pano/dialog/BaseContentFragment$1;-><init>(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/widget/ImageView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    .line 215
    new-instance v8, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    iget-object v9, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->resource(Landroid/net/Uri;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->width(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->build()Lcom/google/android/pano/widget/BitmapWorkerOptions;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/pano/widget/BitmapDownloader;->getBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V

    goto :goto_0

    .line 221
    .end local v0    # "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/pano/widget/BitmapDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;

    move-result-object v0

    .line 166
    .local v0, "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/BitmapDownloader;->cancelDownload(Ljava/lang/Object;)Z

    .line 168
    .end local v0    # "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    .line 155
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const-string v0, "title"

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "breadcrumb"

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "description"

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "iconResourceId"

    iget v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconResourceId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v0, "iconUri"

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string v0, "iconBitmap"

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    const-string v0, "iconBackground"

    iget v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v0, "iconPadding"

    iget v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mIconPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "textViewResourceId"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 287
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    return-void
.end method
