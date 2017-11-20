.class public final Lcom/google/android/maps/driveabout/model/bd;
.super Lcom/google/android/maps/driveabout/model/bb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/k;)V
    .locals 3

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v2, -0x1

    .line 108
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/maps/driveabout/model/bb;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/j;II)V

    .line 111
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
