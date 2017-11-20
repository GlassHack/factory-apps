.class Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;
.super Ljava/lang/Object;
.source "ClutchDetector.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$TwoFingerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/touchpad/ClutchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoFingerScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/touchpad/ClutchDetector;


# direct methods
.method private constructor <init>(Lcom/google/glass/touchpad/ClutchDetector;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/touchpad/ClutchDetector;Lcom/google/glass/touchpad/ClutchDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p2, "x1"    # Lcom/google/glass/touchpad/ClutchDetector$1;

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;-><init>(Lcom/google/glass/touchpad/ClutchDetector;)V

    return-void
.end method


# virtual methods
.method public onTwoFingerScroll(FFF)Z
    .locals 10
    .param p1, "displacement"    # F
    .param p2, "delta"    # F
    .param p3, "velocity"    # F

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 385
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$300(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$800(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 419
    :cond_1
    :goto_0
    return v1

    .line 389
    :cond_2
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$500(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "onTwoFingerScroll(displacement: [%s], delta: [%s], velocity: [%s]). isInClutchMode: [%s]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 390
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v7}, Lcom/google/glass/touchpad/ClutchDetector;->access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 389
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 397
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$900(Lcom/google/glass/touchpad/ClutchDetector;)V

    .line 399
    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_5

    .line 400
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v3

    if-gt v3, v9, :cond_3

    move v1, v2

    .line 401
    goto :goto_0

    .line 404
    :cond_3
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v4}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 405
    .local v0, "zoomFactor":F
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$800(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;->onScaleBy(F)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 406
    goto :goto_0

    .line 408
    :cond_4
    iget-object v2, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1002(Lcom/google/glass/touchpad/ClutchDetector;I)I

    .line 409
    iget-object v2, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1100(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1102(Lcom/google/glass/touchpad/ClutchDetector;F)F

    goto/16 :goto_0

    .line 411
    .end local v0    # "zoomFactor":F
    :cond_5
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v4}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 412
    .restart local v0    # "zoomFactor":F
    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$800(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/glass/touchpad/ClutchDetector$ScaleListener;->onScaleBy(F)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 413
    goto/16 :goto_0

    .line 415
    :cond_6
    iget-object v2, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1002(Lcom/google/glass/touchpad/ClutchDetector;I)I

    .line 416
    iget-object v2, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    iget-object v3, p0, Lcom/google/glass/touchpad/ClutchDetector$TwoFingerScrollListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1100(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/google/glass/touchpad/ClutchDetector;->access$1102(Lcom/google/glass/touchpad/ClutchDetector;F)F

    goto/16 :goto_0
.end method
