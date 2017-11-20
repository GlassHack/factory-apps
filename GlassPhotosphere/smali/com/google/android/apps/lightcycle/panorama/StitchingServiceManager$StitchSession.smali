.class public Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;
.super Ljava/lang/Object;
.source "StitchingServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StitchSession"
.end annotation


# instance fields
.field public final notificationId:I

.field public final storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;I)V
    .locals 0
    .param p1, "localStorage"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .param p2, "id"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .line 34
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->notificationId:I

    .line 35
    return-void
.end method
