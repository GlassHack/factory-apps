.class public Lcom/google/glass/maps/view/Animations$CosineInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PI:F = 3.1415927f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    mul-float/2addr v0, v1

    sub-float v0, v1, v0

    return v0
.end method
