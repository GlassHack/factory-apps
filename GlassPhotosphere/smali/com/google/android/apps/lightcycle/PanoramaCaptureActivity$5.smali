.class Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$5;
.super Ljava/lang/Object;
.source "PanoramaCaptureActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 290
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$5;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1
    .param p1, "ignore"    # Ljava/lang/Void;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->access$000(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->access$000(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;->onPhotoTaken()V

    .line 296
    :cond_0
    return-void
.end method
