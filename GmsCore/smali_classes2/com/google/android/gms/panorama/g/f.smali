.class public final Lcom/google/android/gms/panorama/g/f;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:Z

.field private e:Landroid/graphics/PointF;

.field private f:J

.field private g:Z

.field private h:Lcom/google/android/gms/panorama/g/i;

.field private i:Lcom/google/android/gms/panorama/g/k;

.field private j:Z

.field private k:Landroid/graphics/PointF;

.field private l:Lcom/google/android/gms/panorama/f/a;

.field private m:Lcom/google/android/gms/panorama/b/b;

.field private n:Lcom/google/android/gms/panorama/b/b;

.field private o:Lcom/google/android/gms/panorama/b/b;

.field private p:Lcom/google/android/gms/panorama/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/panorama/g/e;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/panorama/g/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/panorama/g/e;Z)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/panorama/g/e;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/f;->g:Z

    .line 47
    new-instance v0, Lcom/google/android/gms/panorama/g/k;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/g/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/f;->i:Lcom/google/android/gms/panorama/g/k;

    .line 48
    iput-boolean v2, p0, Lcom/google/android/gms/panorama/g/f;->j:Z

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/f;->k:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Lcom/google/android/gms/panorama/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/f;->m:Lcom/google/android/gms/panorama/b/b;

    .line 54
    new-instance v0, Lcom/google/android/gms/panorama/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/f;->n:Lcom/google/android/gms/panorama/b/b;

    .line 57
    new-instance v0, Lcom/google/android/gms/panorama/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/f;->o:Lcom/google/android/gms/panorama/b/b;

    .line 58
    new-instance v0, Lcom/google/android/gms/panorama/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/panorama/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/f;->p:Lcom/google/android/gms/panorama/b/b;

    .line 90
    :try_start_0
    new-instance v0, Lcom/google/android/gms/panorama/g/i;

    const v1, 0x7f020175

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/google/android/gms/panorama/g/i;-><init>(Lcom/google/android/gms/panorama/g/f;Lcom/google/android/gms/panorama/g/e;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    new-instance v1, Lcom/google/android/gms/panorama/g/g;

    invoke-direct {v1, p0}, Lcom/google/android/gms/panorama/g/g;-><init>(Lcom/google/android/gms/panorama/g/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/i;->b(Lcom/google/android/gms/panorama/f/a;)V

    .line 110
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/f;->setEGLContextClientVersion(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/f;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/google/android/gms/panorama/g/f;->setRenderMode(I)V

    .line 113
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v0, "PanoramaView"

    const-string v1, "Error creating Panorama view renderer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/panorama/g/f;)Lcom/google/android/gms/panorama/g/i;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    return-object v0
.end method

.method private static b(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 210
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 211
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 212
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 213
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->i:Lcom/google/android/gms/panorama/g/k;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->k:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/k;->a(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->k:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/f;->o:Lcom/google/android/gms/panorama/b/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/panorama/g/i;->a(FFLcom/google/android/gms/panorama/b/b;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->n:Lcom/google/android/gms/panorama/b/b;

    iget v0, v0, Lcom/google/android/gms/panorama/b/b;->a:F

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->o:Lcom/google/android/gms/panorama/b/b;

    iget v1, v1, Lcom/google/android/gms/panorama/b/b;->a:F

    sub-float/2addr v0, v1

    .line 191
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->n:Lcom/google/android/gms/panorama/b/b;

    iget v1, v1, Lcom/google/android/gms/panorama/b/b;->b:F

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->o:Lcom/google/android/gms/panorama/b/b;

    iget v2, v2, Lcom/google/android/gms/panorama/b/b;->b:F

    sub-float/2addr v1, v2

    .line 193
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v3}, Lcom/google/android/gms/panorama/g/i;->e()F

    move-result v3

    sub-float v0, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v3}, Lcom/google/android/gms/panorama/g/i;->d()F

    move-result v3

    sub-float v1, v3, v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/panorama/g/i;->a(FF)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/panorama/d/a;Lcom/google/android/gms/panorama/d/c;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/panorama/g/i;->a(Lcom/google/android/gms/panorama/d/a;Lcom/google/android/gms/panorama/d/c;)V

    .line 142
    new-instance v0, Lcom/google/android/gms/panorama/g/h;

    invoke-direct {v0, p0}, Lcom/google/android/gms/panorama/g/h;-><init>(Lcom/google/android/gms/panorama/g/f;)V

    iput-object v0, p2, Lcom/google/android/gms/panorama/d/c;->n:Lcom/google/android/gms/panorama/f/a;

    .line 148
    return-void
.end method

.method public final a(Lcom/google/android/gms/panorama/f/a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/f;->l:Lcom/google/android/gms/panorama/f/a;

    .line 167
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/panorama/g/i;->a(Z)V

    .line 158
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/high16 v12, 0x447a0000    # 1000.0f

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->l:Lcom/google/android/gms/panorama/f/a;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->l:Lcom/google/android/gms/panorama/f/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->i:Lcom/google/android/gms/panorama/g/k;

    invoke-virtual {v1}, Lcom/google/android/gms/panorama/g/k;->a()V

    .line 280
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/google/android/gms/panorama/g/f;->e:Landroid/graphics/PointF;

    .line 281
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/f;->m:Lcom/google/android/gms/panorama/b/b;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/panorama/g/i;->a(FFLcom/google/android/gms/panorama/b/b;)V

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/panorama/g/f;->f:J

    .line 284
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->i:Lcom/google/android/gms/panorama/g/k;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/panorama/g/k;->a:J

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, v1, Lcom/google/android/gms/panorama/g/k;->b:Landroid/graphics/PointF;

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/gms/panorama/g/f;->b(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/google/android/gms/panorama/g/f;->b:F

    .line 290
    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/f;->a:Z

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 295
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->i:Lcom/google/android/gms/panorama/g/k;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/google/android/gms/panorama/g/k;->a:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x32

    cmp-long v5, v8, v10

    if-ltz v5, :cond_2

    iget-object v5, v2, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    iget-object v10, v2, Lcom/google/android/gms/panorama/g/k;->b:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v3, v10

    long-to-float v11, v8

    div-float v11, v12, v11

    mul-float/2addr v10, v11

    iput v10, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, v2, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    iget-object v10, v2, Lcom/google/android/gms/panorama/g/k;->b:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float v10, v4, v10

    long-to-float v8, v8

    div-float v8, v12, v8

    mul-float/2addr v8, v10

    iput v8, v5, Landroid/graphics/PointF;->y:F

    iput-wide v6, v2, Lcom/google/android/gms/panorama/g/k;->a:J

    iget-object v5, v2, Lcom/google/android/gms/panorama/g/k;->b:Landroid/graphics/PointF;

    iput v3, v5, Landroid/graphics/PointF;->x:F

    iget-object v2, v2, Lcom/google/android/gms/panorama/g/k;->b:Landroid/graphics/PointF;

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 300
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/panorama/g/f;->d:Z

    if-eqz v2, :cond_3

    .line 301
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/panorama/g/f;->m:Lcom/google/android/gms/panorama/b/b;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/panorama/g/i;->a(FFLcom/google/android/gms/panorama/b/b;)V

    .line 303
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/g/f;->d:Z

    .line 307
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/panorama/g/f;->a:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 308
    invoke-static {p1}, Lcom/google/android/gms/panorama/g/f;->b(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/google/android/gms/panorama/g/f;->c:F

    .line 309
    iget v1, p0, Lcom/google/android/gms/panorama/g/f;->c:F

    iget v2, p0, Lcom/google/android/gms/panorama/g/f;->b:F

    div-float/2addr v1, v2

    .line 310
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/panorama/g/i;->a(F)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    goto/16 :goto_0

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/f;->p:Lcom/google/android/gms/panorama/b/b;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/panorama/g/i;->a(FFLcom/google/android/gms/panorama/b/b;)V

    .line 319
    iget-object v1, p0, Lcom/google/android/gms/panorama/g/f;->m:Lcom/google/android/gms/panorama/b/b;

    iget v1, v1, Lcom/google/android/gms/panorama/b/b;->a:F

    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->p:Lcom/google/android/gms/panorama/b/b;

    iget v2, v2, Lcom/google/android/gms/panorama/b/b;->a:F

    sub-float/2addr v1, v2

    .line 320
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->m:Lcom/google/android/gms/panorama/b/b;

    iget v2, v2, Lcom/google/android/gms/panorama/b/b;->b:F

    iget-object v3, p0, Lcom/google/android/gms/panorama/g/f;->p:Lcom/google/android/gms/panorama/b/b;

    iget v3, v3, Lcom/google/android/gms/panorama/b/b;->b:F

    sub-float/2addr v2, v3

    .line 322
    iget-object v3, p0, Lcom/google/android/gms/panorama/g/f;->e:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-double v4, v4

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v4}, Lcom/google/android/gms/panorama/g/i;->e()F

    move-result v4

    sub-float v1, v4, v1

    iget-object v4, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v4}, Lcom/google/android/gms/panorama/g/i;->d()F

    move-result v4

    sub-float v2, v4, v2

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/panorama/g/i;->a(FF)V

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    goto/16 :goto_0

    .line 334
    :pswitch_4
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/g/f;->a:Z

    .line 335
    iget v1, p0, Lcom/google/android/gms/panorama/g/f;->c:F

    iget v2, p0, Lcom/google/android/gms/panorama/g/f;->b:F

    div-float/2addr v1, v2

    .line 336
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/panorama/g/i;->b(F)V

    .line 337
    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/f;->d:Z

    .line 338
    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/f;->j:Z

    goto/16 :goto_0

    .line 343
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 344
    iget-object v3, p0, Lcom/google/android/gms/panorama/g/f;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 345
    float-to-double v4, v2

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/panorama/g/f;->f:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    cmpg-double v4, v2, v8

    if-gez v4, :cond_5

    iget-boolean v4, p0, Lcom/google/android/gms/panorama/g/f;->g:Z

    if-eqz v4, :cond_5

    .line 348
    iget-object v4, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v4}, Lcom/google/android/gms/panorama/g/i;->c()V

    .line 350
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/g/f;->d:Z

    .line 351
    iget-boolean v4, p0, Lcom/google/android/gms/panorama/g/f;->j:Z

    if-nez v4, :cond_7

    .line 354
    cmpl-double v2, v2, v8

    if-lez v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/panorama/g/f;->n:Lcom/google/android/gms/panorama/b/b;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/panorama/g/i;->a(FFLcom/google/android/gms/panorama/b/b;)V

    .line 357
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/f;->i:Lcom/google/android/gms/panorama/g/k;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/google/android/gms/panorama/g/k;->a:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/panorama/g/k;->b(Landroid/graphics/PointF;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    goto/16 :goto_0

    .line 357
    :cond_6
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/google/android/gms/panorama/g/k;->a:J

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v2, Lcom/google/android/gms/panorama/g/k;->b:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, v2, Lcom/google/android/gms/panorama/g/k;->c:Landroid/graphics/PointF;

    goto :goto_1

    .line 366
    :cond_7
    iput-boolean v1, p0, Lcom/google/android/gms/panorama/g/f;->j:Z

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/i;->b()V

    .line 232
    return-void
.end method

.method public final b(Lcom/google/android/gms/panorama/f/a;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/panorama/g/i;->a(Lcom/google/android/gms/panorama/f/a;)V

    .line 204
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/google/android/gms/panorama/g/f;->g:Z

    .line 174
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/f;->h:Lcom/google/android/gms/panorama/g/i;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/i;->f()V

    .line 375
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/google/android/gms/panorama/g/f;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
