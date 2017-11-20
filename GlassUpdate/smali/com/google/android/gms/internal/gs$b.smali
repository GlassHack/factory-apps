.class final Lcom/google/android/gms/internal/gs$b;
.super Lcom/google/android/gms/internal/gp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final Vy:Lcom/google/android/gms/common/api/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/b",
            "<",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b",
            "<",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gp$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gs$b;->Vy:Lcom/google/android/gms/common/api/b;

    return-void
.end method


# virtual methods
.method public onOptInOptionsChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$b;->Vy:Lcom/google/android/gms/common/api/b;

    new-instance v1, Lcom/google/android/gms/internal/gs$b$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gs$b$1;-><init>(Lcom/google/android/gms/internal/gs$b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b;->a(Lcom/google/android/gms/common/api/b$b;)V

    return-void
.end method
