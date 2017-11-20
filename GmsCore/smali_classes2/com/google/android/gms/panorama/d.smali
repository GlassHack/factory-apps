.class final Lcom/google/android/gms/panorama/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/panorama/f/a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/PanoramaViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/PanoramaViewActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/gms/panorama/d;->a:Lcom/google/android/gms/panorama/PanoramaViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 213
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/panorama/d;->a:Lcom/google/android/gms/panorama/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a(Lcom/google/android/gms/panorama/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/panorama/d;->a:Lcom/google/android/gms/panorama/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a(Lcom/google/android/gms/panorama/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/panorama/d;->a:Lcom/google/android/gms/panorama/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a(Lcom/google/android/gms/panorama/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/panorama/d;->a:Lcom/google/android/gms/panorama/PanoramaViewActivity;

    invoke-static {v0}, Lcom/google/android/gms/panorama/PanoramaViewActivity;->a(Lcom/google/android/gms/panorama/PanoramaViewActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method
