.class Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;
.super Landroid/os/Handler;
.source "TipsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/TipsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TipsViewHandler"
.end annotation


# static fields
.field private static final MSG_WHAT_HIDE_TIP:I = 0x2

.field private static final MSG_WHAT_SHOW_TIP:I = 0x1

.field private static final TIPS_VIEW_ANIMATION_DURATION_MS:J = 0x1f4L


# instance fields
.field private final hideTipsViewOnAnimateEndListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic this$0:Lcom/google/glass/browser/TipsViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/browser/TipsViewHelper;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 196
    new-instance v0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler$1;

    invoke-direct {v0, p0}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler$1;-><init>(Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;)V

    iput-object v0, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->hideTipsViewOnAnimateEndListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/browser/TipsViewHelper;Lcom/google/glass/browser/TipsViewHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/browser/TipsViewHelper;
    .param p2, "x1"    # Lcom/google/glass/browser/TipsViewHelper$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;-><init>(Lcom/google/glass/browser/TipsViewHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v3, 0x0

    .line 222
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    iget v3, p1, Landroid/os/Message;->what:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x21

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 227
    .local v1, "resId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_2

    move-object v0, v3

    .line 229
    .local v0, "condition":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Void;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v2}, Lcom/google/glass/browser/TipsViewHelper;->access$800(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/widget/TipsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/widget/TipsView;->setTip(I)V

    .line 231
    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v2}, Lcom/google/glass/browser/TipsViewHelper;->access$800(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/widget/TipsView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v2}, Lcom/google/glass/browser/TipsViewHelper;->access$800(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/widget/TipsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 233
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 234
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 248
    .end local v0    # "condition":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Void;>;"
    .end local v1    # "resId":I
    :cond_1
    :goto_1
    return-void

    .line 227
    .restart local v1    # "resId":I
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/base/Predicate;

    move-object v0, v2

    goto :goto_0

    .line 236
    .restart local v0    # "condition":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Void;>;"
    :cond_3
    if-eqz v0, :cond_1

    .line 237
    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v2}, Lcom/google/glass/browser/TipsViewHelper;->access$500(Lcom/google/glass/browser/TipsViewHelper;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v1}, Lcom/google/glass/browser/TipsViewHelper$Tip;->fromResId(I)Lcom/google/glass/browser/TipsViewHelper$Tip;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v0    # "condition":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Void;>;"
    .end local v1    # "resId":I
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v2}, Lcom/google/glass/browser/TipsViewHelper;->access$800(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/widget/TipsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/TipsView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v2}, Lcom/google/glass/browser/TipsViewHelper;->access$800(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/widget/TipsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 245
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 246
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->hideTipsViewOnAnimateEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 247
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showTip(Lcom/google/glass/browser/TipsViewHelper$Tip;JJLcom/google/common/base/Predicate;)V
    .locals 5
    .param p1, "tip"    # Lcom/google/glass/browser/TipsViewHelper$Tip;
    .param p2, "durationMillis"    # J
    .param p4, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/browser/TipsViewHelper$Tip;",
            "JJ",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "condition":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/Void;>;"
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 255
    invoke-virtual {p0, v4}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->removeMessages(I)V

    .line 258
    invoke-virtual {p0, v3}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p0, v3}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->removeMessages(I)V

    .line 260
    invoke-virtual {p0, v3, p1}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/google/glass/browser/TipsViewHelper$Tip;->access$900(Lcom/google/glass/browser/TipsViewHelper$Tip;)I

    move-result v1

    const/4 v2, -0x1

    .line 264
    invoke-virtual {p0, v4, v1, v2, p6}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 266
    .local v0, "showTipMessage":Landroid/os/Message;
    invoke-virtual {p0, v0, p4, p5}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 267
    iget-object v1, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v1}, Lcom/google/glass/browser/TipsViewHelper;->access$500(Lcom/google/glass/browser/TipsViewHelper;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 270
    add-long v1, p4, p2

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    return-void
.end method
