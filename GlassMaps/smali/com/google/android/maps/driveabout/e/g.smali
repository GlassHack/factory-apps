.class final Lcom/google/android/maps/driveabout/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/maps/driveabout/model/ab;

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/g;->a:Lcom/google/android/maps/driveabout/model/ab;

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/g;->b:I

    .line 552
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/g;->c:F

    .line 553
    return-void
.end method
