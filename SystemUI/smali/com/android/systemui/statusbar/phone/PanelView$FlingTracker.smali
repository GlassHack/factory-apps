.class Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
.super Ljava/lang/Object;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    }
.end annotation


# static fields
.field static sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;


# instance fields
.field final DECAY:F

.field final MAX_EVENTS:I

.field mEventBuf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;",
            ">;"
        }
    .end annotation
.end field

.field mVX:F

.field mVY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->MAX_EVENTS:I

    .line 93
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->DECAY:F

    .line 94
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 106
    return-void
.end method

.method static obtain()Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 197
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public computeCurrentVelocity(J)V
    .locals 13
    .param p1, "timebase"    # J

    .prologue
    .line 117
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "last":Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    const/4 v4, 0x0

    .line 120
    .local v4, "i":I
    const/4 v7, 0x0

    .line 121
    .local v7, "totalweight":F
    const/high16 v8, 0x41200000    # 10.0f

    .line 122
    .local v8, "weight":F
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 123
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;

    .line 125
    .local v3, "event":Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    if-eqz v6, :cond_1

    .line 126
    iget-wide v9, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    iget-wide v11, v6, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    sub-long/2addr v9, v11

    long-to-float v9, v9

    long-to-float v10, p1

    div-float v0, v9, v10

    .line 127
    .local v0, "dt":F
    iget v9, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    iget v10, v6, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    sub-float v1, v9, v10

    .line 128
    .local v1, "dx":F
    iget v9, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    iget v10, v6, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    sub-float v2, v9, v10

    .line 138
    .local v2, "dy":F
    iget-wide v9, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    iget-wide v11, v6, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_0

    .line 142
    const-string v9, "FlingTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skipping simultaneous event at t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_0
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    mul-float v10, v8, v1

    div-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 147
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    mul-float v10, v8, v2

    div-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 148
    add-float/2addr v7, v8

    .line 149
    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v8, v9

    .line 151
    .end local v0    # "dt":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_1
    move-object v6, v3

    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 153
    goto :goto_0

    .line 154
    .end local v3    # "event":Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    :cond_2
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3

    .line 155
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    div-float/2addr v9, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 156
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    div-float/2addr v9, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 169
    :goto_1
    return-void

    .line 159
    :cond_3
    const-string v9, "FlingTracker"

    const-string v10, "computeCurrentVelocity warning: totalweight=0"

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    goto :goto_1
.end method

.method public getXVelocity()F
    .locals 3

    .prologue
    .line 171
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const-string v0, "FlingTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning: vx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 177
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    return v0
.end method

.method public getYVelocity()F
    .locals 3

    .prologue
    .line 180
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    const-string v0, "FlingTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning: vx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 186
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 190
    return-void
.end method
