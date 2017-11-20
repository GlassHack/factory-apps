.class public Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;
.super Ljava/lang/Object;
.source "CameraSizeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureSmallLargeSizes"
.end annotation


# instance fields
.field public final large:Lcom/google/android/apps/lightcycle/util/Size;

.field public final small:Lcom/google/android/apps/lightcycle/util/Size;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/util/Size;Lcom/google/android/apps/lightcycle/util/Size;)V
    .locals 0
    .param p1, "small"    # Lcom/google/android/apps/lightcycle/util/Size;
    .param p2, "large"    # Lcom/google/android/apps/lightcycle/util/Size;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->small:Lcom/google/android/apps/lightcycle/util/Size;

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility$PictureSmallLargeSizes;->large:Lcom/google/android/apps/lightcycle/util/Size;

    .line 30
    return-void
.end method
