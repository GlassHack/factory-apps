.class public Lcom/google/android/pano/widget/FrameLayoutWithShadows;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutWithShadows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    }
.end annotation


# instance fields
.field private mBottomResourceId:I

.field private mRecycleBin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowResourceId:I

.field private mShadowsAlpha:F

.field private rect:Landroid/graphics/Rect;

.field private rectf:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    .line 123
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowsAlpha:F

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method private addToRecycleBin(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)V
    .locals 2
    .param p1, "shadowView"    # Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    return-void
.end method

.method public static findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 422
    .local v0, "nextView":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-nez v1, :cond_0

    .line 423
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 425
    :cond_0
    check-cast v0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    .end local v0    # "nextView":Landroid/view/ViewParent;
    return-object v0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 146
    if-nez p2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 149
    :cond_0
    sget-object v4, Lcom/google/android/pano/R$styleable;->FrameLayoutWithShadows:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 151
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 152
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 153
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 154
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 152
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    :pswitch_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setDefaultShadowResourceId(I)V

    goto :goto_2

    .line 159
    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setDrawableBottomResourceId(I)V

    goto :goto_2

    .line 163
    .end local v2    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prune()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 212
    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, "shadow":Landroid/view/View;
    instance-of v4, v1, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    if-eqz v4, :cond_2

    move-object v2, v1

    .line 202
    check-cast v2, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .line 203
    .local v2, "shadowView":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    invoke-static {v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->access$000(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v4

    if-eq p0, v4, :cond_2

    .line 205
    sget v4, Lcom/google/android/pano/R$id;->ShadowView:I

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 206
    invoke-static {v2, v5}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->access$002(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;Landroid/view/View;)Landroid/view/View;

    .line 207
    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->removeView(Landroid/view/View;)V

    .line 208
    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addToRecycleBin(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)V

    .line 199
    .end local v2    # "shadowView":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addShadowView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "shadow":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowResourceId:I

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addShadowView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    .line 307
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addShadowView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 277
    sget v2, Lcom/google/android/pano/R$id;->ShadowView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .line 278
    .local v1, "shadowView":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    if-nez v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getFromRecycleBin()Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    move-result-object v1

    .line 280
    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .end local v1    # "shadowView":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;-><init>(Landroid/content/Context;)V

    .line 282
    .restart local v1    # "shadowView":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    :cond_0
    sget v2, Lcom/google/android/pano/R$id;->ShadowView:I

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 285
    invoke-static {v1, p1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->access$002(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;Landroid/view/View;)Landroid/view/View;

    .line 286
    invoke-virtual {p0, v1, v3}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addView(Landroid/view/View;I)V

    .line 288
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 289
    iget v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowsAlpha:F

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->setAlpha(F)V

    .line 290
    invoke-virtual {v1, p2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mBottomResourceId:I

    if-eqz v2, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mBottomResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->setDrawableBottom(Landroid/graphics/drawable/Drawable;)V

    .line 295
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v1
.end method

.method public getFromRecycleBin()Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    .locals 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 396
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 397
    iget-object v2, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mRecycleBin:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .line 398
    .local v1, "view":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    invoke-virtual {v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->init()V

    .line 400
    .end local v1    # "view":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public layoutShadows()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    .line 220
    invoke-direct {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->prune()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildCount()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 222
    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 223
    .local v4, "shadow":Landroid/view/View;
    instance-of v7, v4, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    if-nez v7, :cond_1

    .line 221
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 226
    check-cast v5, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    .line 227
    .local v5, "shadowView":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    invoke-static {v5}, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;->access$000(Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;)Landroid/view/View;

    move-result-object v6

    .line 228
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 229
    invoke-static {v6}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->findParentShadowsView(Landroid/view/View;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v7

    if-ne p0, v7, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "isImageMatrix":Z
    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    move-object v7, v6

    .line 236
    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .local v3, "matrix":Landroid/graphics/Matrix;
    move-object v7, v6

    .line 237
    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 239
    const/4 v2, 0x1

    .line 240
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 242
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 243
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 244
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 247
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 248
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 249
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 250
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 251
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v13

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 252
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v13

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 253
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v13

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 254
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rectf:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v13

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 257
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    if-nez v2, :cond_3

    .line 258
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 259
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 260
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 262
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 265
    :cond_3
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 266
    iget-object v7, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 269
    .end local v2    # "isImageMatrix":Z
    .end local v4    # "shadow":Landroid/view/View;
    .end local v5    # "shadowView":Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->layoutShadows()V

    .line 143
    return-void
.end method

.method public setDefaultShadowResourceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowResourceId:I

    .line 168
    return-void
.end method

.method public setDrawableBottomResourceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mBottomResourceId:I

    .line 176
    return-void
.end method

.method public setShadowsAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->mShadowsAlpha:F

    .line 184
    invoke-virtual {p0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 185
    invoke-virtual {p0, v0}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, "shadow":Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/pano/widget/FrameLayoutWithShadows$ShadowView;

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 184
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    .end local v1    # "shadow":Landroid/view/View;
    :cond_1
    return-void
.end method
