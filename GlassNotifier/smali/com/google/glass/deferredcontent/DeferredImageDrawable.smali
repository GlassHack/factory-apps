.class public final Lcom/google/glass/deferredcontent/DeferredImageDrawable;
.super Landroid/graphics/drawable/TransitionDrawable;
.source "DeferredImageDrawable.java"

# interfaces
.implements Lcom/google/common/base/Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;,
        Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/graphics/drawable/TransitionDrawable;",
        "Lcom/google/common/base/Receiver",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final FADE_DURATION_MILLIS:I = 0xc8

.field private static final LAYER_IMAGE_ID:I = 0x1

.field private static final LAYER_PLACEHOLDER_ID:I = 0x0

.field private static final MINIMUM_HEIGHT_FOR_LARGE_PLACEHOLDER:I = 0x168

.field private static final MINIMUM_WIDTH_FOR_LARGE_PLACEHOLDER:I = 0x13f


# instance fields
.field private hasBeenDrawn:Z

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "smallPlaceholderResId"    # I
    .param p3, "largePlaceholderResId"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$PlaceholderDrawable;-><init>(Landroid/content/res/Resources;II)V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, v2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 42
    iput-boolean v2, p0, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->hasBeenDrawn:Z

    .line 70
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->resources:Landroid/content/res/Resources;

    .line 73
    invoke-virtual {p0, v2, v2}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->setId(II)V

    .line 74
    invoke-virtual {p0, v3, v3}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->setId(II)V

    .line 75
    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->transitionToBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->accept(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->hasBeenDrawn:Z

    .line 80
    invoke-super {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public transitionToBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 90
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/glass/deferredcontent/DeferredImageDrawable$CenteringBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Z)V

    .line 92
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->hasBeenDrawn:Z

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 101
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/google/glass/deferredcontent/DeferredImageDrawable;->startTransition(I)V

    goto :goto_0
.end method
