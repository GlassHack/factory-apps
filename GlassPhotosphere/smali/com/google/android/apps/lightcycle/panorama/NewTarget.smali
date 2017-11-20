.class public Lcom/google/android/apps/lightcycle/panorama/NewTarget;
.super Ljava/lang/Object;
.source "NewTarget.java"


# instance fields
.field key:I

.field orientation:[F


# direct methods
.method constructor <init>(I[F)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "orientation"    # [F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    .line 11
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    .line 12
    return-void
.end method
