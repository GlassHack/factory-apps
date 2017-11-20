.class Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;
.super Ljava/lang/Object;
.source "PanoramaViewActivity.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->showFile(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "autoRotateActive"    # Ljava/lang/Boolean;

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->access$100(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->access$100(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->access$100(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->access$100(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 313
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$4;->onCallback(Ljava/lang/Boolean;)V

    return-void
.end method
