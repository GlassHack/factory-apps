.class public Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;
.super Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.source "ImageProxyBitmapLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleImageProxyBitmapLoadingTask"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "cropType"    # I

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 98
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 99
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->showView(Landroid/view/View;Z)V

    .line 112
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected prepareContent()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 104
    return-void
.end method
