.class final Lcom/google/android/gms/analytics/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ap;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gms/analytics/ar;->a:Lcom/google/android/gms/analytics/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/analytics/ar;->a:Lcom/google/android/gms/analytics/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ap;->a(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/analytics/ar;->a:Lcom/google/android/gms/analytics/ap;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ap;->c()V

    .line 113
    return-void
.end method
