.class Lcom/google/glass/voice/MicrophoneView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/MicrophoneView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/MicrophoneView;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->access$000(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->access$100(Lcom/google/glass/voice/MicrophoneView;)V

    .line 80
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView$1;->this$0:Lcom/google/glass/voice/MicrophoneView;

    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneView;->access$000(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 71
    return-void
.end method
