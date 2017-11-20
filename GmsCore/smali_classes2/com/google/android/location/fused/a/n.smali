.class public final Lcom/google/android/location/fused/a/n;
.super Lcom/google/android/location/fused/a/l;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/ba;


# instance fields
.field public a:Lcom/google/android/location/activity/ba;

.field private final b:Lcom/google/android/location/activity/az;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/az;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/location/fused/a/l;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/location/fused/a/n;->b:Lcom/google/android/location/activity/az;

    .line 22
    iget-object v0, p0, Lcom/google/android/location/fused/a/n;->b:Lcom/google/android/location/activity/az;

    invoke-interface {v0}, Lcom/google/android/location/activity/az;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/n;->a(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/location/fused/a/n;->b:Lcom/google/android/location/activity/az;

    invoke-interface {v0}, Lcom/google/android/location/activity/az;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/a/n;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/a/n;->c:Landroid/os/Handler;

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/google/android/location/fused/a/n;->b:Lcom/google/android/location/activity/az;

    invoke-interface {v0, p0}, Lcom/google/android/location/activity/az;->a(Lcom/google/android/location/activity/ba;)Z

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/a/n;->b:Lcom/google/android/location/activity/az;

    invoke-interface {v0}, Lcom/google/android/location/activity/az;->a()Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/a/n;->a:Lcom/google/android/location/activity/ba;

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/fused/a/n;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/fused/a/o;

    invoke-direct {v1, p0}, Lcom/google/android/location/fused/a/o;-><init>(Lcom/google/android/location/fused/a/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method
