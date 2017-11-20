.class Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity$12;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$12;

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity$12;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    iput-object p2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$3400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1089
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$3400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    sget v2, Lcom/google/glass/camera/R$id;->thumbnail:I

    invoke-virtual {v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1091
    .local v0, "thumbnailView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1092
    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    iget-object v1, v1, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$3400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$12$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    iget-wide v2, v2, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->val$duration:J

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1093
    return-void
.end method
