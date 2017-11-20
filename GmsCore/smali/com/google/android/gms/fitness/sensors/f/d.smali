.class final Lcom/google/android/gms/fitness/sensors/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/f/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/c;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/d;->a:Lcom/google/android/gms/fitness/sensors/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 96
    check-cast p1, Landroid/os/IBinder;

    const-string v0, "Connected successfully to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/f/d;->a:Lcom/google/android/gms/fitness/sensors/f/c;

    iget-object v3, v3, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {p1}, Lcom/google/android/gms/fitness/internal/service/d;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/internal/service/c;

    move-result-object v0

    return-object v0
.end method
