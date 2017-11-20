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
    .line 101
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 102
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    .line 103
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->showView(Landroid/view/View;Z)V

    .line 116
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 3
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 108
    return-void
.end method
