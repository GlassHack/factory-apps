.class public Lcom/google/glass/maps/MapsRenderer$PolylineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final colorARGB:I

.field public final polyline:Lcom/google/android/maps/driveabout/model/ag;

.field public final width:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ag;FI)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    .line 55
    iput p2, p0, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->width:F

    .line 56
    iput p3, p0, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->colorARGB:I

    .line 57
    return-void
.end method
