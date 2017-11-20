.class final Lcom/google/android/gms/panorama/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/g/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/g/a;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/b;->a:Lcom/google/android/gms/panorama/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/b;->a:Lcom/google/android/gms/panorama/g/a;

    invoke-static {v0}, Lcom/google/android/gms/panorama/g/a;->a(Lcom/google/android/gms/panorama/g/a;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/b;->a:Lcom/google/android/gms/panorama/g/a;

    invoke-static {v0}, Lcom/google/android/gms/panorama/g/a;->a(Lcom/google/android/gms/panorama/g/a;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/b;->a:Lcom/google/android/gms/panorama/g/a;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/b;->a:Lcom/google/android/gms/panorama/g/a;

    invoke-static {v1}, Lcom/google/android/gms/panorama/g/a;->a(Lcom/google/android/gms/panorama/g/a;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    return-void
.end method
