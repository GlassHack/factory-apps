.class Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6$1;
.super Ljava/lang/Object;
.source "PanoramaCaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->onCallback(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6$1;->this$1:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6$1;->this$1:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6$1;->this$1:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity$6;->this$0:Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->access$100(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;->access$200(Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 435
    return-void
.end method
