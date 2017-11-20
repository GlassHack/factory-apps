.class final Lcom/google/android/maps/driveabout/nav/l;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/nav/k;

.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/k;)V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/l;->a:Lcom/google/android/maps/driveabout/nav/k;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    invoke-static {p2}, Lcom/google/android/maps/driveabout/nav/k;->a(Lcom/google/android/maps/driveabout/nav/k;)I

    move-result v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    .line 225
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->a:Lcom/google/android/maps/driveabout/nav/k;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/k;->b(Lcom/google/android/maps/driveabout/nav/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 237
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 238
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 239
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 263
    instance-of v0, p1, Lcom/google/android/maps/driveabout/nav/l;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/nav/l;

    iget-object v0, p1, Lcom/google/android/maps/driveabout/nav/l;->a:Lcom/google/android/maps/driveabout/nav/k;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/l;->a:Lcom/google/android/maps/driveabout/nav/k;

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public final getMinimumHeight()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final getMinimumWidth()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->a:Lcom/google/android/maps/driveabout/nav/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 254
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 259
    return-void
.end method
