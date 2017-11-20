.class Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;
.super Ljava/lang/Object;
.source "LookAtScreenPlaypenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wave"
.end annotation


# instance fields
.field private radius:F

.field private radiusAnimator:Landroid/animation/ObjectAnimator;

.field private start:F

.field private stop:F

.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;FF)V
    .locals 4
    .param p2, "startRadius"    # F
    .param p3, "stopRadius"    # F

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p2, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->start:F

    .line 53
    iput p3, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->stop:F

    .line 55
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radius:F

    .line 56
    const-string v0, "radius"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->start:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->stop:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radiusAnimator:Landroid/animation/ObjectAnimator;

    .line 57
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radiusAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radiusAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->access$000()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 59
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radiusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 60
    return-void
.end method


# virtual methods
.method public draw(FFLandroid/graphics/Canvas;)V
    .locals 3
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->access$100(Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radius:F

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->access$100(Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    return-void
.end method

.method public getAlpha()F
    .locals 4

    .prologue
    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->getRadius()F

    move-result v1

    iget v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->start:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->stop:F

    iget v3, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->start:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->radius:F

    .line 68
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->invalidate()V

    .line 69
    return-void
.end method
