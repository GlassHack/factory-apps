.class public Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;
.super Ljava/lang/Object;
.source "PhotoMetadata.java"


# instance fields
.field public filePath:Ljava/lang/String;

.field public location:Landroid/location/Location;

.field public poseHeading:I

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/location/Location;I)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "poseHeading"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->timestamp:J

    .line 25
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->filePath:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->location:Landroid/location/Location;

    .line 27
    iput p5, p0, Lcom/google/android/apps/lightcycle/storage/PhotoMetadata;->poseHeading:I

    .line 28
    return-void
.end method
