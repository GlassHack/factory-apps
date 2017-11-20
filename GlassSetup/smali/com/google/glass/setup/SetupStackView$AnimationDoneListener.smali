.class abstract Lcom/google/glass/setup/SetupStackView$AnimationDoneListener;
.super Ljava/lang/Object;
.source "SetupStackView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AnimationDoneListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/SetupStackView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/SetupStackView$1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/glass/setup/SetupStackView$AnimationDoneListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupStackView$AnimationDoneListener;->onAnimationDone()V

    .line 137
    return-void
.end method

.method public abstract onAnimationDone()V
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupStackView$AnimationDoneListener;->onAnimationDone()V

    .line 134
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 139
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    return-void
.end method
