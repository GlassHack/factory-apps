.class Lcom/google/android/pano/widget/ScrollAdapterView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downTimeOnExpandedView:J

.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 0

    .prologue
    .line 1826
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1831
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestFocus()Z

    .line 1832
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1833
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 1834
    .local v2, "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    iget v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1835
    iget-object v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v4, v4, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1836
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v3, v3, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1837
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v3, v3, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1839
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->downTimeOnExpandedView:J

    .line 1840
    const/4 v3, 0x0

    .line 1845
    .end local v2    # "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :goto_1
    return v3

    .line 1832
    .restart local v2    # "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1844
    .end local v2    # "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->downTimeOnExpandedView:J

    .line 1845
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-static {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1300(Lcom/google/android/pano/widget/ScrollAdapterView;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/pano/widget/ScrollAdapterView;->dragBy(FF)V

    .line 1896
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1850
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->downTimeOnExpandedView:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 1852
    const/4 v1, 0x0

    .line 1884
    :goto_0
    return v1

    .line 1854
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v1

    neg-int v14, v1

    .line 1855
    .local v14, "xOffset":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v1

    neg-int v0, v1

    move/from16 v16, v0

    .line 1856
    .local v16, "yOffset":I
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildCount()I

    move-result v11

    .local v11, "size":I
    :goto_1
    if-ge v9, v11, :cond_4

    .line 1857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1858
    .local v3, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v13, v1

    .line 1859
    .local v13, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v15, v1

    .line 1860
    .local v15, "y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v1, v9}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$000(Lcom/google/android/pano/widget/ScrollAdapterView;I)I

    move-result v4

    .line 1865
    .local v4, "adapterIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-static {v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$1200(Lcom/google/android/pano/widget/ScrollAdapterView;)Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/android/pano/widget/ScrollAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1867
    const/4 v1, 0x1

    goto :goto_0

    .line 1869
    .end local v4    # "adapterIndex":I
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .local v12, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3, v12}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1871
    const/4 v10, 0x0

    .local v10, "j":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "childSize":I
    :goto_2
    if-ge v10, v7, :cond_3

    .line 1872
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1873
    .local v8, "grandchild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v5, v5, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    move/from16 v0, v16

    invoke-virtual {v1, v14, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$3;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    iget-object v1, v1, Lcom/google/android/pano/widget/ScrollAdapterView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1878
    invoke-virtual {v8}, Landroid/view/View;->performClick()Z

    .line 1879
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1871
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1856
    .end local v7    # "childSize":I
    .end local v8    # "grandchild":Landroid/view/View;
    .end local v10    # "j":I
    .end local v12    # "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1884
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "x":I
    .end local v15    # "y":I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
