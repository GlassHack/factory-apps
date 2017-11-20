.class final Lcom/google/android/location/fused/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/a/n;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/a/n;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/location/fused/a/o;->a:Lcom/google/android/location/fused/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/location/fused/a/o;->a:Lcom/google/android/location/fused/a/n;

    iget-object v0, v0, Lcom/google/android/location/fused/a/n;->a:Lcom/google/android/location/activity/ba;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/location/fused/a/o;->a:Lcom/google/android/location/fused/a/n;

    iget-object v0, v0, Lcom/google/android/location/fused/a/n;->a:Lcom/google/android/location/activity/ba;

    invoke-interface {v0}, Lcom/google/android/location/activity/ba;->k()V

    .line 58
    iget-object v0, p0, Lcom/google/android/location/fused/a/o;->a:Lcom/google/android/location/fused/a/n;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/location/fused/a/n;->a:Lcom/google/android/location/activity/ba;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/a/o;->a:Lcom/google/android/location/fused/a/n;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/n;->f()V

    .line 61
    return-void
.end method
