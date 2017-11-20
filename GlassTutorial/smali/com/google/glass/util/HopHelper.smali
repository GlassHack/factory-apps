.class public Lcom/google/glass/util/HopHelper;
.super Ljava/lang/Object;
.source "HopHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/HopHelper$2;
    }
.end annotation


# static fields
.field private static final HOP_ANIMATION_DURATION_MS:J = 0x96L

.field private static final PRE_HOP_ANIMATION_TRANSLATION_PX:J = -0x3cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    .line 35
    .local v0, "translationXAmount":J
    const-wide/16 v2, 0x0

    .line 38
    .local v2, "translationYAmount":J
    sget-object v4, Lcom/google/glass/util/HopHelper$2;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p1}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    const-wide/16 v2, -0x3c

    .line 58
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 59
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    .line 60
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    long-to-float v5, v0

    .line 61
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    long-to-float v5, v2

    .line 62
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/google/glass/util/HopHelper$1;

    invoke-direct {v5, p0}, Lcom/google/glass/util/HopHelper$1;-><init>(Landroid/view/View;)V

    .line 63
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 43
    :pswitch_1
    const-wide/16 v2, 0x3c

    .line 44
    goto :goto_1

    .line 46
    :pswitch_2
    const-wide/16 v0, 0x3c

    .line 47
    goto :goto_1

    .line 49
    :pswitch_3
    const-wide/16 v0, -0x3c

    .line 50
    goto :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
