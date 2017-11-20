.class public final Lcom/google/android/gms/common/internal/i;
.super Lcom/google/android/gms/common/internal/y;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/common/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e;)V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/y;-><init>()V

    .line 688
    iput-object p1, p0, Lcom/google/android/gms/common/internal/i;->a:Lcom/google/android/gms/common/internal/e;

    .line 689
    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 693
    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->a:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i;->a:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/e;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->a:Lcom/google/android/gms/common/internal/e;

    .line 701
    return-void
.end method
