.class Lcom/google/android/pano/util/TransitionImageAnimation$2;
.super Ljava/lang/Object;
.source "TransitionImageAnimation.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/TransitionImageAnimation;
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
    .line 222
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$2;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 226
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation$2;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$002(Lcom/google/android/pano/util/TransitionImageAnimation;Z)Z

    .line 229
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation$2;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$100(Lcom/google/android/pano/util/TransitionImageAnimation;F)V

    .line 230
    return-void
.end method
