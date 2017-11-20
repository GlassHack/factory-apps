.class public Lcom/google/android/pano/widget/RefcountBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RefcountBitmapDrawable.java"


# instance fields
.field private mRefcountObject:Lcom/google/android/pano/widget/RefcountObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/pano/widget/RefcountObject",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/google/android/pano/widget/RefcountBitmapDrawable;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "drawable"    # Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    .prologue
    .line 25
    invoke-virtual {p2}, Lcom/google/android/pano/widget/RefcountBitmapDrawable;->getRefcountObject()Lcom/google/android/pano/widget/RefcountObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/RefcountBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/google/android/pano/widget/RefcountObject;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/google/android/pano/widget/RefcountObject;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/google/android/pano/widget/RefcountObject",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "bitmap":Lcom/google/android/pano/widget/RefcountObject;, "Lcom/google/android/pano/widget/RefcountObject<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p2}, Lcom/google/android/pano/widget/RefcountObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 18
    iput-object p2, p0, Lcom/google/android/pano/widget/RefcountBitmapDrawable;->mRefcountObject:Lcom/google/android/pano/widget/RefcountObject;

    .line 19
    return-void
.end method


# virtual methods
.method public getRefcountObject()Lcom/google/android/pano/widget/RefcountObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/pano/widget/RefcountObject",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/widget/RefcountBitmapDrawable;->mRefcountObject:Lcom/google/android/pano/widget/RefcountObject;

    return-object v0
.end method
