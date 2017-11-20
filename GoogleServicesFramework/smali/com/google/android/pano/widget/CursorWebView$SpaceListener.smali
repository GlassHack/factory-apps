.class Lcom/google/android/pano/widget/CursorWebView$SpaceListener;
.super Ljava/lang/Object;
.source "CursorWebView.java"

# interfaces
.implements Lcom/google/android/pano/util/TouchNavSpaceTracker$KeyEventListener;
.implements Lcom/google/android/pano/util/TouchNavSpaceTracker$TouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/CursorWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/CursorWebView;


# direct methods
.method private constructor <init>(Lcom/google/android/pano/widget/CursorWebView;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/CursorWebView;Lcom/google/android/pano/widget/CursorWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/widget/CursorWebView;
    .param p2, "x1"    # Lcom/google/android/pano/widget/CursorWebView$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;-><init>(Lcom/google/android/pano/widget/CursorWebView;)V

    return-void
.end method


# virtual methods
.method public onDown(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;)Z
    .locals 2
    .param p1, "downEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/CursorWebView;->access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    .line 115
    return v1
.end method

.method public onFlick(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;II)Z
    .locals 1
    .param p1, "downEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .param p2, "currentEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .param p3, "direction"    # I
    .param p4, "primaryDirection"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
    .locals 1
    .param p1, "downEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .param p2, "currentEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .param p3, "velX"    # F
    .param p4, "velY"    # F

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 46
    const/16 v1, 0x17

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;

    move-result-object v15

    .line 48
    .local v15, "p":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/pano/widget/CursorWebView;->access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 52
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    iget v6, v15, Landroid/graphics/PointF;->x:F

    iget v7, v15, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/CursorWebView;->access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/pano/widget/CursorWebView;->access$200(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)V

    .line 56
    const/4 v1, 0x1

    .line 58
    .end local v15    # "p":Landroid/graphics/PointF;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 17
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    const/16 v1, 0x17

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;

    move-result-object v15

    .line 65
    .local v15, "p":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x1

    iget v6, v15, Landroid/graphics/PointF;->x:F

    iget v7, v15, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v16

    .line 68
    .local v16, "upEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/google/android/pano/widget/CursorWebView;->access$200(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$100(Lcom/google/android/pano/widget/CursorWebView;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 72
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/pano/widget/CursorWebView;->access$102(Lcom/google/android/pano/widget/CursorWebView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 74
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V

    .line 75
    const/4 v1, 0x1

    .line 77
    .end local v15    # "p":Landroid/graphics/PointF;
    .end local v16    # "upEvent":Landroid/view/MotionEvent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMove(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
    .locals 17
    .param p1, "downEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .param p2, "currentEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/pano/widget/CursorWebView;->access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v5}, Lcom/google/android/pano/widget/CursorWebView;->access$400(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/pano/widget/CursorWebView;->postInvalidate(IIII)V

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v1}, Lcom/google/android/pano/widget/CursorWebView;->access$000(Lcom/google/android/pano/widget/CursorWebView;)Landroid/graphics/PointF;

    move-result-object v16

    .line 105
    .local v16, "p":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getTime()J

    move-result-wide v3

    const/4 v5, 0x7

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;->getDeviceId()I

    move-result v13

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v15

    .line 108
    .local v15, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v1, v15}, Lcom/google/android/pano/widget/CursorWebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 109
    const/4 v1, 0x1

    return v1
.end method

.method public onUp(Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;FF)Z
    .locals 2
    .param p1, "upEvent"    # Lcom/google/android/pano/util/TouchNavSpaceTracker$PhysicalMotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/pano/widget/CursorWebView$SpaceListener;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/CursorWebView;->access$302(Lcom/google/android/pano/widget/CursorWebView;Z)Z

    .line 121
    const/4 v0, 0x1

    return v0
.end method
