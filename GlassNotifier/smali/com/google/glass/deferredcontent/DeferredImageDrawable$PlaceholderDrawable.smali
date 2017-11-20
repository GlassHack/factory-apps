.class Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;
.super Landroid/graphics/drawable/LevelListDrawable;
.source "DeferredImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/DeferredImageDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholderDrawable"
.end annotation


# static fields
.field private static final LEVEL_LARGE:I = 0x1

.field private static final LEVEL_SMALL:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "smallImageResId"    # I
    .param p3, "largeImageResId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 138
    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;->setAlpha(I)V

    .line 140
    new-instance v1, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;

    .line 141
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, p1, v2, v3}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)V

    .line 142
    .local v1, "smallDrawable":Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;
    invoke-virtual {p0, v3, v3, v1}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;

    .line 145
    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, p1, v2, v3}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)V

    .line 146
    .local v0, "largeDrawable":Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;
    invoke-virtual {p0, v4, v4, v0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-super {p0, p1}, Landroid/graphics/drawable/LevelListDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x13f

    if-lt v0, v1, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, v2}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;->setLevel(I)Z

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;->setLevel(I)Z

    goto :goto_0
.end method
