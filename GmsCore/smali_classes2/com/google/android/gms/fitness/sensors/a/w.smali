.class final Lcom/google/android/gms/fitness/sensors/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/x;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/a/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/t;Lcom/google/android/gms/fitness/sensors/a/x;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/w;->b:Lcom/google/android/gms/fitness/sensors/a/t;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/w;->a:Lcom/google/android/gms/fitness/sensors/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/w;->a:Lcom/google/android/gms/fitness/sensors/a/x;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/x;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "BLE scan timed out"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/w;->a:Lcom/google/android/gms/fitness/sensors/a/x;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/x;->a()V

    .line 121
    :cond_0
    return-void
.end method
