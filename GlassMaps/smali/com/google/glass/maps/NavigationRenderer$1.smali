.class Lcom/google/glass/maps/NavigationRenderer$1;
.super Lcom/google/glass/maps/view/Animations$CosineInterpolator;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationRenderer;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationRenderer;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/glass/maps/NavigationRenderer$1;->this$0:Lcom/google/glass/maps/NavigationRenderer;

    invoke-direct {p0}, Lcom/google/glass/maps/view/Animations$CosineInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 387
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/google/glass/maps/view/Animations$CosineInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
