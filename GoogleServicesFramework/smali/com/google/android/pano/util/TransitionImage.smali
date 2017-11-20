.class public Lcom/google/android/pano/util/TransitionImage;
.super Ljava/lang/Object;
.source "TransitionImage.java"


# instance fields
.field private mAlpha:F

.field private mBackground:I

.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mClippedRect:Landroid/graphics/RectF;

.field private final mRect:Landroid/graphics/Rect;

.field private mSaturation:F

.field private mUnclippedRect:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mUseClippedRectOnTransparent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mRect:Landroid/graphics/Rect;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/util/TransitionImage;->mBackground:I

    .line 49
    iput v1, p0, Lcom/google/android/pano/util/TransitionImage;->mAlpha:F

    .line 50
    iput v1, p0, Lcom/google/android/pano/util/TransitionImage;->mSaturation:F

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mUnclippedRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/util/TransitionImage;->mUseClippedRectOnTransparent:Z

    .line 57
    return-void
.end method

.method public static readMultipleFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/util/TransitionImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v5, "transitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/util/TransitionImage;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 146
    :cond_0
    return-object v5

    .line 129
    :cond_1
    new-instance v2, Lcom/google/android/pano/util/TransitionImage;

    invoke-direct {v2}, Lcom/google/android/pano/util/TransitionImage;-><init>()V

    .line 130
    .local v2, "image":Lcom/google/android/pano/util/TransitionImage;
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, p0, v6, v0}, Lcom/google/android/pano/util/TransitionImage;->readFromBundle(Landroid/content/Context;Landroid/graphics/Rect;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    const-string v6, "com.google.android.pano.transition_multiple_bitmap"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 135
    .local v3, "multiple":[Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, v3

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 137
    aget-object v6, v3, v1

    instance-of v6, v6, Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 140
    new-instance v2, Lcom/google/android/pano/util/TransitionImage;

    .end local v2    # "image":Lcom/google/android/pano/util/TransitionImage;
    invoke-direct {v2}, Lcom/google/android/pano/util/TransitionImage;-><init>()V

    .line 141
    .restart local v2    # "image":Lcom/google/android/pano/util/TransitionImage;
    const/4 v7, 0x0

    aget-object v6, v3, v1

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v2, p0, v7, v6}, Lcom/google/android/pano/util/TransitionImage;->readFromBundle(Landroid/content/Context;Landroid/graphics/Rect;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readRectF([FLandroid/graphics/RectF;)Z
    .locals 5
    .param p0, "values"    # [F
    .param p1, "f"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 258
    :cond_1
    aget v1, p0, v1

    aget v2, p0, v0

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget v4, p0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public createFromImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 274
    invoke-virtual {p0, p1, p1}, Lcom/google/android/pano/util/TransitionImage;->createFromImageView(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 275
    return-void
.end method

.method public createFromImageView(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "backgroundView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 286
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImage;->setBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 291
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    invoke-static {p2, v1}, Lcom/google/android/pano/util/WindowLocationUtil;->getLocationsInWindow(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 292
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImage;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 294
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImage;->mUnclippedRect:Landroid/graphics/RectF;

    invoke-static {p1, v1, v2}, Lcom/google/android/pano/util/WindowLocationUtil;->getImageLocationsInWindow(Landroid/widget/ImageView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 295
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/pano/util/TransitionImage;->mAlpha:F

    return v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/pano/util/TransitionImage;->mBackground:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getClippedRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getOptimizedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/google/android/pano/util/TransitionImage;->mUseClippedRectOnTransparent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/pano/util/TransitionImage;->mBackground:I

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getSaturation()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/pano/util/TransitionImage;->mSaturation:F

    return v0
.end method

.method public getUnclippedRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mUnclippedRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public readFromBundle(Landroid/content/Context;Landroid/graphics/Rect;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentSourceBounds"    # Landroid/graphics/Rect;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 169
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/google/android/pano/util/TransitionImage;->setBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 170
    if-nez p3, :cond_0

    move v6, v7

    .line 218
    :goto_0
    return v6

    .line 173
    :cond_0
    const-string v6, "com.google.android.pano.transition_bmp_uri"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/google/android/pano/util/TransitionImage;->mUri:Landroid/net/Uri;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/google/android/pano/util/TransitionImage;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 176
    invoke-static {p1}, Lcom/google/android/pano/widget/DrawableDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/DrawableDownloader;

    move-result-object v3

    .line 177
    .local v3, "downloader":Lcom/google/android/pano/widget/DrawableDownloader;
    new-instance v6, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    invoke-direct {v6, p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->resource(Landroid/net/Uri;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->build()Lcom/google/android/pano/widget/BitmapWorkerOptions;

    move-result-object v4

    .line 179
    .local v4, "key":Lcom/google/android/pano/widget/BitmapWorkerOptions;
    invoke-virtual {v3, v4}, Lcom/google/android/pano/widget/DrawableDownloader;->getLargestBitmapFromMemCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 180
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    move-object v0, v2

    .line 181
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 184
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "downloader":Lcom/google/android/pano/widget/DrawableDownloader;
    .end local v4    # "key":Lcom/google/android/pano/widget/BitmapWorkerOptions;
    :cond_1
    if-nez v0, :cond_3

    .line 185
    const-string v6, "com.google.android.pano.transition_bitmap"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v8, "com.google.android.pano.transition_bitmap"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/pano/util/ActivityTransitionBitmapHelper;->getBitmapFromBinderBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 190
    .restart local v0    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    if-nez v0, :cond_3

    move v6, v7

    .line 191
    goto :goto_0

    .line 194
    :cond_3
    const/4 v5, 0x0

    .line 195
    .local v5, "rect":Landroid/graphics/Rect;
    const-string v6, "com.google.android.pano.transition_bmp_rect"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "bitmapRectStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 197
    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    .line 199
    :cond_4
    if-nez v5, :cond_5

    .line 200
    move-object v5, p2

    .line 202
    :cond_5
    if-nez v5, :cond_6

    move v6, v7

    .line 203
    goto :goto_0

    .line 205
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImage;->setBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 206
    invoke-virtual {p0, v5}, Lcom/google/android/pano/util/TransitionImage;->setRect(Landroid/graphics/Rect;)V

    .line 207
    const-string v6, "com.google.android.pano.transition_bmp_clipped_rect"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    invoke-static {v6, v8}, Lcom/google/android/pano/util/TransitionImage;->readRectF([FLandroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 209
    iget-object v6, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 211
    :cond_7
    const-string v6, "com.google.android.pano.transition_bmp_unclipped_rect"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImage;->mUnclippedRect:Landroid/graphics/RectF;

    invoke-static {v6, v8}, Lcom/google/android/pano/util/TransitionImage;->readRectF([FLandroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 213
    iget-object v6, p0, Lcom/google/android/pano/util/TransitionImage;->mUnclippedRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 215
    :cond_8
    const-string v6, "com.google.android.pano.transition_bmp_alpha"

    invoke-virtual {p3, v6, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/pano/util/TransitionImage;->setAlpha(F)V

    .line 216
    const-string v6, "com.google.android.pano.transition_bmp_saturation"

    invoke-virtual {p3, v6, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/pano/util/TransitionImage;->setSaturation(F)V

    .line 217
    const-string v6, "com.google.android.pano.transition_bmp_background"

    invoke-virtual {p3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/pano/util/TransitionImage;->setBackground(I)V

    .line 218
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 96
    iput p1, p0, Lcom/google/android/pano/util/TransitionImage;->mAlpha:F

    .line 97
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/google/android/pano/util/TransitionImage;->mBackground:I

    .line 89
    return-void
.end method

.method public setBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImage;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    return-void
.end method

.method public setSaturation(F)V
    .locals 0
    .param p1, "saturation"    # F

    .prologue
    .line 104
    iput p1, p0, Lcom/google/android/pano/util/TransitionImage;->mSaturation:F

    .line 105
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImage;->mUri:Landroid/net/Uri;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{TransitionImage Uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unclipRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mUnclippedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clipRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mClippedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImage;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/util/TransitionImage;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " saturation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/util/TransitionImage;->mSaturation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/pano/util/TransitionImage;->mBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
