.class final Lcom/google/android/gms/fitness/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/gms/fitness/k/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/k/b;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/fitness/k/c;->b:Lcom/google/android/gms/fitness/k/b;

    iput-object p2, p0, Lcom/google/android/gms/fitness/k/c;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/fitness/k/c;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v0, "Handling package removed event."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/fitness/k/c;->b:Lcom/google/android/gms/fitness/k/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/k/c;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/k/b;->a(Lcom/google/android/gms/fitness/k/b;Landroid/content/Intent;)V

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "com.google.android.gms.fitness.app_disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const-string v0, "Handling package disconnected event."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/fitness/k/c;->b:Lcom/google/android/gms/fitness/k/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/k/c;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/k/b;->b(Lcom/google/android/gms/fitness/k/b;Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "Receiver should never be fired for this action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
