.class public Lcom/google/glass/util/HopHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 10

    .prologue
    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x3c

    .line 30
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v6, Lcom/google/glass/util/HopHelper$2;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p1}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 58
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    .line 60
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    long-to-float v3, v4

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    long-to-float v0, v0

    .line 62
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/HopHelper$1;

    invoke-direct {v1, p0}, Lcom/google/glass/util/HopHelper$1;-><init>(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_1
    move-wide v0, v2

    .line 44
    goto :goto_1

    :pswitch_2
    move-wide v0, v4

    move-wide v4, v2

    .line 47
    goto :goto_1

    :pswitch_3
    move-wide v8, v4

    move-wide v4, v0

    move-wide v0, v8

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
