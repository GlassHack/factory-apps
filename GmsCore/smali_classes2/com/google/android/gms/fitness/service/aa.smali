.class final Lcom/google/android/gms/fitness/service/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/j/a/e;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/service/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/z;)V
    .locals 0

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/aa;->a:Lcom/google/android/gms/fitness/service/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/c/j/a/v;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1854
    check-cast p1, Lcom/google/android/gms/fitness/data/BleDevice;

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aa;->a:Lcom/google/android/gms/fitness/service/z;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/z;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/n/ar;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Claiming device on DB"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aa;->a:Lcom/google/android/gms/fitness/service/z;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/z;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/c/j/a/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Device already claimed on DB"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method
