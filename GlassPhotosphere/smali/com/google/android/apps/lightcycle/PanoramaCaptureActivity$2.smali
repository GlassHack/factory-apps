.class Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "visible"    # Ljava/lang/Boolean;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->access$000(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$2;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->access$000(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/LightCycleCaptureEventListener;->onUndoButtonVisibilityChanged(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$2;->onCallback(Ljava/lang/Boolean;)V

    return-void
.end method
