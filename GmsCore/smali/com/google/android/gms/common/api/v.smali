.class public final Lcom/google/android/gms/common/api/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/w;

.field volatile b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/gms/common/api/w;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/w;-><init>(Lcom/google/android/gms/common/api/v;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/v;->a:Lcom/google/android/gms/common/api/w;

    .line 41
    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/v;->b:Ljava/lang/Object;

    .line 42
    return-void
.end method
