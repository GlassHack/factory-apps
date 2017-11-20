.class Lcom/google/glass/camera/CameraClient$11;
.super Ljava/lang/Object;
.source "CameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/CameraClient;->fadeViewfinder(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraClient;

.field final synthetic val$shouldShow:Z


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraClient;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/CameraClient;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/google/glass/camera/CameraClient$11;->this$0:Lcom/google/glass/camera/CameraClient;

    iput-boolean p2, p0, Lcom/google/glass/camera/CameraClient$11;->val$shouldShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$11;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1600(Lcom/google/glass/camera/CameraClient;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/google/glass/camera/CameraClient$11;->this$0:Lcom/google/glass/camera/CameraClient;

    invoke-static {v0}, Lcom/google/glass/camera/CameraClient;->access$1600(Lcom/google/glass/camera/CameraClient;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/glass/camera/CameraClient$11;->val$shouldShow:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 943
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 945
    :cond_0
    return-void

    .line 942
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
