.class final Lcom/google/android/gms/internal/fc$ab;
.super Lcom/google/android/gms/common/internal/c$b;

# interfaces
.implements Lcom/google/android/gms/people/Images$LoadImageResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/ev;",
        ">.b<",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/Images$LoadImageResult;",
        ">;>;",
        "Lcom/google/android/gms/people/Images$LoadImageResult;"
    }
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nq:Landroid/os/ParcelFileDescriptor;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$ab;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c$b;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fc$ab;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/fc$ab;->Nq:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method protected cN()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fc$ab;->release()V

    return-void
.end method

.method protected d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fc$ab;->d(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ab;->Nq:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ab;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ab;->Nq:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$ab;->Nq:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Landroid/os/ParcelFileDescriptor;)V

    :cond_0
    return-void
.end method
