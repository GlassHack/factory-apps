.class final Lcom/google/android/location/activity/ac;
.super Landroid/hardware/TriggerEventListener;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/ab;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/location/activity/ac;->a:Ljava/lang/ref/WeakReference;

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/location/activity/ac;->b:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/ab;B)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/ac;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/ab;)V

    return-void
.end method


# virtual methods
.method public final onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/activity/ac;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/at;

    .line 121
    iget-object v1, p0, Lcom/google/android/location/activity/ac;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/activity/ab;

    .line 122
    if-nez v0, :cond_1

    .line 123
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, v1, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    invoke-interface {v0}, Lcom/google/android/location/activity/ba;->k()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    move-result v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "HardSigMotion"

    const-string v1, "onSignificantMotion not called because os is quitting or quit."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/location/activity/ac;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/ab;

    .line 140
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, v0, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    invoke-interface {v1}, Lcom/google/android/location/activity/ba;->k()V

    .line 142
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/location/activity/ab;->a:Lcom/google/android/location/activity/ba;

    .line 144
    :cond_0
    return-void
.end method
