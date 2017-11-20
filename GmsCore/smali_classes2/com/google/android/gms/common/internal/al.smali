.class final Lcom/google/android/gms/common/internal/al;
.super Lcom/google/android/gms/common/internal/y;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/x;

.field final synthetic b:Lcom/google/android/gms/common/internal/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/ak;Lcom/google/android/gms/common/internal/x;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->b:Lcom/google/android/gms/common/internal/ak;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/al;->a:Lcom/google/android/gms/common/internal/x;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->b:Lcom/google/android/gms/common/internal/ak;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ak;->b:Lcom/google/android/gms/common/internal/am;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->b:Lcom/google/android/gms/common/internal/ak;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ak;->b:Lcom/google/android/gms/common/internal/am;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->b:Lcom/google/android/gms/common/internal/ak;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/ak;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/internal/am;->a(Landroid/content/Context;I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Lcom/google/android/gms/common/internal/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Lcom/google/android/gms/common/internal/x;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/x;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
