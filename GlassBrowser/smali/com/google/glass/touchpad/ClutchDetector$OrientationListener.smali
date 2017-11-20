.class Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;
.super Ljava/lang/Object;
.source "ClutchDetector.java"

# interfaces
.implements Lcom/google/glass/input/OrientationHelper$OrientationListener;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/touchpad/ClutchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/touchpad/ClutchDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/touchpad/ClutchDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private moveBy(FF)Z
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 508
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 511
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$2100(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$MoveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/glass/touchpad/ClutchDetector$MoveListener;->onMoveBy(FF)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onOrientationChanged(FFFJ)V
    .locals 19
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F
    .param p4, "timestamp"    # J

    .prologue
    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$300(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$500(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v14

    const-string v15, "onOrientationChanged(yaw: [%s], pitch: [%s], roll: [%s], timestamp: [%s]). isInClutchMode: [%s]"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 436
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/glass/touchpad/ClutchDetector;->access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    .line 435
    invoke-interface/range {v14 .. v16}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1200(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$1302(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 441
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$1402(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/glass/touchpad/ClutchDetector;->access$1502(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/glass/touchpad/ClutchDetector;->access$1602(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$1702(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$1802(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1900(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$Handler;

    move-result-object v14

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector$Handler;->access$2000(Lcom/google/glass/touchpad/ClutchDetector$Handler;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/google/glass/touchpad/ClutchDetector;->access$1202(Lcom/google/glass/touchpad/ClutchDetector;Z)Z

    goto/16 :goto_0

    .line 453
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$2100(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$MoveListener;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1300(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v14

    sub-float v7, p2, v14

    .line 459
    .local v7, "deltaPitch":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1400(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v14

    sub-float v10, p1, v14

    .line 461
    .local v10, "deltaYaw":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$900(Lcom/google/glass/touchpad/ClutchDetector;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v14, v15

    float-to-double v15, v10

    .line 464
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    double-to-float v15, v15

    mul-float v8, v14, v15

    .line 466
    .local v8, "deltaXPixels":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1000(Lcom/google/glass/touchpad/ClutchDetector;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v14, v15

    float-to-double v15, v7

    .line 467
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    double-to-float v15, v15

    mul-float v9, v14, v15

    .line 469
    .local v9, "deltaYPixels":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 470
    .local v3, "absDeltaPitch":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 471
    .local v4, "absDeltaYaw":F
    mul-float v14, v3, v3

    const v15, 0x3eb851ec    # 0.36f

    mul-float/2addr v15, v4

    mul-float/2addr v15, v4

    add-float v13, v14, v15

    .line 474
    .local v13, "radialDistanceSquare":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1500(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v14

    sub-float v5, v8, v14

    .line 475
    .local v5, "clutchScrollX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1600(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v14

    sub-float v6, v9, v14

    .line 477
    .local v6, "clutchScrollY":F
    const/high16 v14, 0x43100000    # 144.0f

    cmpl-float v14, v13, v14

    if-lez v14, :cond_4

    .line 478
    const/high16 v14, 0x43100000    # 144.0f

    div-float v14, v13, v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v14, v15

    const v15, 0x3ba3d70a    # 0.005f

    mul-float v11, v14, v15

    .line 481
    .local v11, "factor":F
    mul-float v14, v8, v11

    add-float/2addr v14, v5

    mul-float v15, v9, v11

    add-float/2addr v15, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->moveBy(FF)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 488
    .end local v11    # "factor":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14, v8}, Lcom/google/glass/touchpad/ClutchDetector;->access$1502(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14, v9}, Lcom/google/glass/touchpad/ClutchDetector;->access$1602(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1700(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v14

    sub-float v14, p2, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 493
    .local v1, "absDeltaHoverPitch":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1800(Lcom/google/glass/touchpad/ClutchDetector;)F

    move-result v14

    sub-float v14, p1, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 494
    .local v2, "absDeltaHoverYaw":F
    mul-float v14, v1, v1

    const v15, 0x3eb851ec    # 0.36f

    mul-float/2addr v15, v2

    mul-float/2addr v15, v2

    add-float v12, v14, v15

    .line 496
    .local v12, "hoverRadialDistanceSquare":F
    const v14, 0x3eb851ec    # 0.36f

    cmpl-float v14, v12, v14

    if-lez v14, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector;->access$1900(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$Handler;

    move-result-object v14

    invoke-static {v14}, Lcom/google/glass/touchpad/ClutchDetector$Handler;->access$2000(Lcom/google/glass/touchpad/ClutchDetector$Handler;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$1702(Lcom/google/glass/touchpad/ClutchDetector;F)F

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$1802(Lcom/google/glass/touchpad/ClutchDetector;F)F

    goto/16 :goto_0

    .line 485
    .end local v1    # "absDeltaHoverPitch":F
    .end local v2    # "absDeltaHoverYaw":F
    .end local v12    # "hoverRadialDistanceSquare":F
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/google/glass/touchpad/ClutchDetector$OrientationListener;->moveBy(FF)Z

    move-result v14

    if-nez v14, :cond_3

    goto/16 :goto_0
.end method
