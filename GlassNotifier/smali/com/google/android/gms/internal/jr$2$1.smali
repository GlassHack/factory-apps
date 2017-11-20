.class Lcom/google/android/gms/internal/jr$2$1;
.super Lcom/google/android/gms/internal/jq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jr$2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/jt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vd:Lcom/google/android/gms/internal/jr$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jr$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jr$2$1;->Vd:Lcom/google/android/gms/internal/jr$2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jq;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jr$2$1;->Vd:Lcom/google/android/gms/internal/jr$2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jr$2;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
