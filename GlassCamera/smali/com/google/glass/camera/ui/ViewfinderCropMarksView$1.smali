.class Lcom/google/glass/camera/ui/ViewfinderCropMarksView$1;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "ViewfinderCropMarksView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/ui/ViewfinderCropMarksView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/ui/ViewfinderCropMarksView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$1;->this$0:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/camera/ui/ViewfinderCropMarksView$1;->this$0:Lcom/google/glass/camera/ui/ViewfinderCropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/camera/ui/ViewfinderCropMarksView;->blink()V

    .line 42
    return-void
.end method
