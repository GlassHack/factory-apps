.class public abstract Lcom/google/maps/api/android/lib6/gmm6/o/f/a;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/a;->a:F

    return-void
.end method

.method protected final c(J)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/a;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/a;->a:F

    return v0
.end method
