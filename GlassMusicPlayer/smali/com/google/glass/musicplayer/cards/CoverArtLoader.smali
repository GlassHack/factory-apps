.class public Lcom/google/glass/musicplayer/cards/CoverArtLoader;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "SourceFile"


# instance fields
.field private final defaultImageResId:I

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 26
    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 28
    iput-object p3, p0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;->imageView:Landroid/widget/ImageView;

    .line 29
    iput p5, p0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;->defaultImageResId:I

    .line 30
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/musicplayer/cards/CoverArtLoader;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected prepareContent(F)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;->defaultImageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    return-void
.end method
