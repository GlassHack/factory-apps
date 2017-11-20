.class public abstract Lcom/google/android/gms/common/images/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/common/images/f;

.field protected b:I

.field protected c:Lcom/google/android/gms/common/images/d;

.field protected d:I


# virtual methods
.method protected abstract a()V
.end method

.method final a(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {p2}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;)V

    .line 129
    iget v0, p0, Lcom/google/android/gms/common/images/e;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p2}, Lcom/google/android/gms/common/images/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 132
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->c:Lcom/google/android/gms/common/images/d;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->c:Lcom/google/android/gms/common/images/d;

    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/f;

    iget-object v0, v0, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/e;->a()V

    .line 141
    return-void
.end method

.method final a(Landroid/content/Context;Lcom/google/android/gms/common/images/a/b;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 155
    iget v0, p0, Lcom/google/android/gms/common/images/e;->b:I

    if-eqz v0, :cond_1

    .line 157
    iget v1, p0, Lcom/google/android/gms/common/images/e;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/common/images/e;->d:I

    if-lez v0, :cond_5

    new-instance v3, Lcom/google/android/gms/common/images/a/c;

    iget v0, p0, Lcom/google/android/gms/common/images/e;->d:I

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/common/images/a/c;-><init>(II)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/common/images/a/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/images/e;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/images/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/common/images/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->c:Lcom/google/android/gms/common/images/d;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->c:Lcom/google/android/gms/common/images/d;

    iget-object v0, p0, Lcom/google/android/gms/common/images/e;->a:Lcom/google/android/gms/common/images/f;

    iget-object v0, v0, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/e;->a()V

    .line 167
    return-void

    .line 157
    :cond_3
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
