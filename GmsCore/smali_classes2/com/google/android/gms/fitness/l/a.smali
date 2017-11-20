.class public final Lcom/google/android/gms/fitness/l/a;
.super Lcom/google/android/gms/fitness/data/p;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:Lcom/google/android/gms/fitness/data/o;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/o;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/p;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/fitness/l/a;->d:Ljava/lang/String;

    .line 29
    invoke-interface {p2}, Lcom/google/android/gms/fitness/data/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/l/a;->a:Landroid/os/IBinder;

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/fitness/l/a;->b:Lcom/google/android/gms/fitness/data/o;

    .line 32
    iput-object p3, p0, Lcom/google/android/gms/fitness/l/a;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/a;->b:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 38
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 42
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/l/a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/l/a;

    iget-object v0, p0, Lcom/google/android/gms/fitness/l/a;->a:Landroid/os/IBinder;

    iget-object v1, p1, Lcom/google/android/gms/fitness/l/a;->a:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/a;->a:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    const-string v0, "BinderListener{%s %s %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/l/a;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/l/a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/l/a;->a:Landroid/os/IBinder;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
