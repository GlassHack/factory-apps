.class public final Lcom/google/maps/api/android/lib6/gmm6/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/b;->a:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/b;->a:F

    return v0
.end method
