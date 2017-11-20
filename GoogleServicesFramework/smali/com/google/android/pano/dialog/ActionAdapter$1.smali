.class Lcom/google/android/pano/dialog/ActionAdapter$1;
.super Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;
.source "ActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/ActionAdapter;->setIndicator(Landroid/widget/ImageView;Lcom/google/android/pano/dialog/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/ActionAdapter;

.field final synthetic val$indicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    iput-object p2, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$indicatorView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapRetrieved(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$indicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$indicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    iget-object v1, p0, Lcom/google/android/pano/dialog/ActionAdapter$1;->val$indicatorView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/ActionAdapter;->access$000(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;)V

    .line 328
    :cond_0
    return-void
.end method
