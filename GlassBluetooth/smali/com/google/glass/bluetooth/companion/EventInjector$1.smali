.class Lcom/google/glass/bluetooth/companion/EventInjector$1;
.super Ljava/lang/Object;
.source "EventInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/EventInjector;->sendMotionEvent(Lcom/google/glass/companion/Proto$MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

.field final synthetic val$in:Lcom/google/glass/companion/Proto$MotionEvent;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/EventInjector;Lcom/google/glass/companion/Proto$MotionEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/EventInjector;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->val$in:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x42c80000    # 100.0f

    .line 140
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->val$in:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$MotionEvent;->getPointerCount()I

    move-result v8

    .line 141
    .local v8, "pointerCount":I
    new-array v1, v8, [I

    .line 142
    .local v1, "xArray":[I
    new-array v2, v8, [I

    .line 143
    .local v2, "yArray":[I
    new-array v5, v8, [I

    .line 144
    .local v5, "pressures":[I
    new-array v3, v8, [I

    .line 145
    .local v3, "touchMajors":[I
    new-array v4, v8, [I

    .line 148
    .local v4, "touchMinors":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->val$in:Lcom/google/glass/companion/Proto$MotionEvent;

    iget-object v0, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v7, v0, v6

    .line 152
    .local v7, "inCoords":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$100(Lcom/google/glass/bluetooth/companion/EventInjector;)F

    move-result v0

    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    invoke-static {v10}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$100(Lcom/google/glass/bluetooth/companion/EventInjector;)F

    move-result v10

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v0, v9

    float-to-int v0, v0

    aput v0, v1, v6

    .line 153
    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getY()F

    move-result v0

    iget-object v9, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    invoke-static {v9}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$200(Lcom/google/glass/bluetooth/companion/EventInjector;)F

    move-result v9

    mul-float/2addr v0, v9

    div-float/2addr v0, v11

    float-to-int v0, v0

    aput v0, v2, v6

    .line 154
    invoke-virtual {v7}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getPressure()F

    move-result v0

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v0, v9

    float-to-int v0, v0

    aput v0, v5, v6

    .line 155
    aput v12, v3, v6

    .line 156
    aput v12, v4, v6

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 159
    .end local v7    # "inCoords":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$300(Lcom/google/glass/bluetooth/companion/EventInjector;)Lcom/google/glass/util/GlassInputDevice;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/util/GlassInputDevice;->injectTouch([I[I[I[I[I)V

    .line 161
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->val$in:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/EventInjector$1;->this$0:Lcom/google/glass/bluetooth/companion/EventInjector;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/EventInjector;->access$300(Lcom/google/glass/bluetooth/companion/EventInjector;)Lcom/google/glass/util/GlassInputDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/GlassInputDevice;->finishTouch()V

    .line 164
    :cond_1
    return-void
.end method
