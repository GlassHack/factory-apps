.class Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$4;
.super Ljava/lang/Object;
.source "PanoramaCaptureActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->onResume()V
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
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public message(IFLjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->onDoneButtonPressed(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 243
    :cond_0
    return-void
.end method
