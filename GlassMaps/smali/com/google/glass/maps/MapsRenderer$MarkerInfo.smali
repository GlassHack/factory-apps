.class public Lcom/google/glass/maps/MapsRenderer$MarkerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final location:Lcom/google/android/maps/driveabout/model/ab;

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/model/ab;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;->type:I

    .line 43
    iput-object p2, p0, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 44
    return-void
.end method
