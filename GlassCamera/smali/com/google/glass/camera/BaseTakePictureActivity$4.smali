.class Lcom/google/glass/camera/BaseTakePictureActivity$4;
.super Ljava/lang/Object;
.source "BaseTakePictureActivity.java"

# interfaces
.implements Lcom/google/android/glass/widget/CardScrollView$TransformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseTakePictureActivity;->setUpThumbnailScrollView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/BaseTakePictureActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseTakePictureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/BaseTakePictureActivity;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-boolean v0, v0, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v3, v3, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v3}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1100(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1900(Lcom/google/glass/camera/BaseTakePictureActivity;F[Landroid/view/View;)V

    goto :goto_0
.end method

.method public onScrollPositionChanged(F)V
    .locals 6
    .param p1, "position"    # F

    .prologue
    const/4 v5, 0x0

    .line 1111
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-boolean v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity;->shouldPreview:Z

    if-nez v1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1100(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v0, v1

    .line 1120
    .local v0, "width":F
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1100(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/widget/ImageView;

    move-result-object v1

    neg-float v2, p1

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1121
    float-to-double v1, p1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 1123
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    .line 1125
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    neg-float v2, p1

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setTranslationX(F)V

    .line 1126
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v1

    neg-float v2, p1

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1127
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1700(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v1

    neg-float v2, p1

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1130
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$900(Lcom/google/glass/camera/BaseTakePictureActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1135
    :cond_2
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v1, v5}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setTranslationX(F)V

    .line 1136
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1137
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseTakePictureActivity;->access$1200(Lcom/google/glass/camera/BaseTakePictureActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1139
    iget-object v1, p0, Lcom/google/glass/camera/BaseTakePictureActivity$4;->this$0:Lcom/google/glass/camera/BaseTakePictureActivity;

    iget-object v1, v1, Lcom/google/glass/camera/BaseTakePictureActivity;->cropMarksView:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->setVisibility(I)V

    goto/16 :goto_0
.end method
