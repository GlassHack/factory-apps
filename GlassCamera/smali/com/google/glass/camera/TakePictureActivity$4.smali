.class Lcom/google/glass/camera/TakePictureActivity$4;
.super Lcom/google/glass/util/SimpleAnimationListener;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/TakePictureActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/TakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/TakePictureActivity;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/glass/camera/TakePictureActivity$4;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$4;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    invoke-static {v0}, Lcom/google/glass/camera/TakePictureActivity;->access$200(Lcom/google/glass/camera/TakePictureActivity;)V

    .line 293
    iget-object v0, p0, Lcom/google/glass/camera/TakePictureActivity$4;->this$0:Lcom/google/glass/camera/TakePictureActivity;

    iget-object v0, v0, Lcom/google/glass/camera/TakePictureActivity;->thumbnailView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    return-void
.end method
