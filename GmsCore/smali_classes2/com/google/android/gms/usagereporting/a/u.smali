.class final Lcom/google/android/gms/usagereporting/a/u;
.super Lcom/google/android/gms/usagereporting/a/e;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/v;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/v;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/a/e;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/u;->a:Lcom/google/android/gms/common/api/v;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/u;->a:Lcom/google/android/gms/common/api/v;

    new-instance v1, Lcom/google/android/gms/usagereporting/a/v;

    invoke-direct {v1, p0}, Lcom/google/android/gms/usagereporting/a/v;-><init>(Lcom/google/android/gms/usagereporting/a/u;)V

    const-string v2, "Notifier must not be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/gms/common/api/v;->a:Lcom/google/android/gms/common/api/w;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/common/api/w;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/v;->a:Lcom/google/android/gms/common/api/w;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/w;->sendMessage(Landroid/os/Message;)Z

    .line 73
    return-void
.end method
