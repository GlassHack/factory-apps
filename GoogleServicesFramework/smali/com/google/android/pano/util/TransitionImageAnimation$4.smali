.class Lcom/google/android/pano/util/TransitionImageAnimation$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionImageAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/util/TransitionImageAnimation;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/util/TransitionImageAnimation;


# direct methods
.method constructor <init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 268
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$200(Lcom/google/android/pano/util/TransitionImageAnimation;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 269
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$200(Lcom/google/android/pano/util/TransitionImageAnimation;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/util/TransitionImageView;

    .line 270
    .local v2, "view":Lcom/google/android/pano/util/TransitionImageView;
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$300(Lcom/google/android/pano/util/TransitionImageAnimation;)Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$300(Lcom/google/android/pano/util/TransitionImageAnimation;)Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getSourceTransition()Lcom/google/android/pano/util/TransitionImage;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getDestTransition()Lcom/google/android/pano/util/TransitionImage;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;->onRemovedView(Lcom/google/android/pano/util/TransitionImage;Lcom/google/android/pano/util/TransitionImage;)V

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$400(Lcom/google/android/pano/util/TransitionImageAnimation;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "view":Lcom/google/android/pano/util/TransitionImageView;
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$200(Lcom/google/android/pano/util/TransitionImageAnimation;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 277
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$502(Lcom/google/android/pano/util/TransitionImageAnimation;I)I

    .line 278
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$300(Lcom/google/android/pano/util/TransitionImageAnimation;)Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 279
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$300(Lcom/google/android/pano/util/TransitionImageAnimation;)Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageAnimation$4;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-virtual {v3, v4}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;->onFinished(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    .line 281
    :cond_2
    return-void
.end method
