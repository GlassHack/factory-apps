.class Lcom/google/android/pano/widget/CursorWebView$1;
.super Ljava/lang/Object;
.source "CursorWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/CursorWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollStartX:J

.field private mScrollStartY:J

.field final synthetic this$0:Lcom/google/android/pano/widget/CursorWebView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/CursorWebView;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 126
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-wide v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    .line 128
    iput-wide v0, p0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    return-void
.end method

.method private addAcceleration(FJJ)F
    .locals 4
    .param p1, "scroll"    # F
    .param p2, "time"    # J
    .param p4, "startTime"    # J

    .prologue
    .line 199
    sub-long v2, p2, p4

    long-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1200(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v3

    div-float v0, v2, v3

    .line 201
    .local v0, "accelerateFraction":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$1300(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 205
    .local v1, "scrollAcceleration":F
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .end local v1    # "scrollAcceleration":F
    :goto_0
    add-float/2addr p1, v1

    .line 206
    return p1

    .line 205
    .restart local v1    # "scrollAcceleration":F
    :cond_1
    neg-float v1, v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->getCurrentPixelPosition()Landroid/graphics/PointF;

    move-result-object v13

    .line 133
    .local v13, "p":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    iget v5, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v6}, Lcom/google/android/pano/widget/CursorWebView;->access$600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/google/android/pano/widget/CursorWebView;->access$700(Lcom/google/android/pano/widget/CursorWebView;FF)F

    move-result v2

    .line 134
    .local v2, "scrollX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    iget v5, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v6}, Lcom/google/android/pano/widget/CursorWebView;->access$800(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/google/android/pano/widget/CursorWebView;->access$700(Lcom/google/android/pano/widget/CursorWebView;FF)F

    move-result v14

    .line 135
    .local v14, "scrollY":F
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-nez v1, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/google/android/pano/widget/CursorWebView;->access$902(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    .line 196
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 141
    .local v3, "time":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$900(Lcom/google/android/pano/widget/CursorWebView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/google/android/pano/widget/CursorWebView;->access$902(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-nez v1, :cond_a

    .line 146
    :cond_2
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_9

    .line 148
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    .line 155
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-nez v1, :cond_c

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_b

    .line 158
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    .line 168
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$300(Lcom/google/android/pano/widget/CursorWebView;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 169
    iget v11, v13, Landroid/graphics/PointF;->x:F

    .line 170
    .local v11, "newX":F
    iget v12, v13, Landroid/graphics/PointF;->y:F

    .line 171
    .local v12, "newY":F
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_4

    .line 172
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v1

    neg-float v1, v1

    :goto_3
    add-float/2addr v11, v1

    .line 174
    :cond_4
    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$300(Lcom/google/android/pano/widget/CursorWebView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 175
    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-lez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v1

    neg-float v1, v1

    :goto_4
    add-float/2addr v12, v1

    .line 177
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPixelPosition(FF)V

    .line 180
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/CursorWebView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/CursorWebView;->getScrollX()I

    move-result v1

    float-to-int v5, v2

    add-int v15, v1, v5

    .line 183
    .local v15, "x":I
    if-gez v15, :cond_f

    .line 184
    const/4 v15, 0x0

    .line 188
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/CursorWebView;->getScrollY()I

    move-result v1

    float-to-int v5, v14

    add-int v16, v1, v5

    .line 189
    .local v16, "y":I
    if-gez v16, :cond_10

    .line 190
    const/16 v16, 0x0

    .line 194
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/google/android/pano/widget/CursorWebView;->scrollTo(II)V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/CursorWebView;->postInvalidate()V

    goto/16 :goto_0

    .line 150
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_9
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/pano/widget/CursorWebView$1;->addAcceleration(FJJ)F

    move-result v2

    goto/16 :goto_1

    .line 153
    :cond_a
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartX:J

    goto/16 :goto_1

    .line 160
    :cond_b
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    move-object/from16 v5, p0

    move v6, v14

    move-wide v7, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/pano/widget/CursorWebView$1;->addAcceleration(FJJ)F

    move-result v14

    goto/16 :goto_2

    .line 163
    :cond_c
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/google/android/pano/widget/CursorWebView$1;->mScrollStartY:J

    goto/16 :goto_2

    .line 172
    .restart local v11    # "newX":F
    .restart local v12    # "newY":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v1

    goto/16 :goto_3

    .line 175
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1100(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v1

    goto :goto_4

    .line 185
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    .restart local v15    # "x":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/CursorWebView;->getWidth()I

    move-result v1

    if-le v15, v1, :cond_7

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/CursorWebView;->getWidth()I

    move-result v15

    goto :goto_5

    .line 191
    .restart local v16    # "y":I
    :cond_10
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/CursorWebView;->getContentHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/CursorWebView;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    cmpl-float v1, v1, v5

    if-lez v1, :cond_8

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/CursorWebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/CursorWebView$1;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/CursorWebView;->getScaleY()F

    move-result v5

    mul-float/2addr v1, v5

    float-to-int v0, v1

    move/from16 v16, v0

    goto/16 :goto_6
.end method
