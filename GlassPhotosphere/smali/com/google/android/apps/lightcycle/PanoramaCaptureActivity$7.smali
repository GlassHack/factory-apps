.class Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$7;
.super Ljava/lang/Object;
.source "PanoramaCaptureActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchingResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "panoFileName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 527
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    const-class v2, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 529
    .local v0, "viewPanoIntent":Landroid/content/Intent;
    const-string v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 532
    return-void
.end method
