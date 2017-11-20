.class final Lcom/google/android/gms/internal/fc$v;
.super Lcom/google/android/gms/internal/ep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "v"
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/Images$LoadImageResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$v;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ep;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fc$v;->Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avatar callback: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pfd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/fc;->b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fc$v;->MY:Lcom/google/android/gms/internal/fc;

    new-instance v2, Lcom/google/android/gms/internal/fc$ab;

    iget-object v3, p0, Lcom/google/android/gms/internal/fc$v;->MY:Lcom/google/android/gms/internal/fc;

    iget-object v4, p0, Lcom/google/android/gms/internal/fc$v;->Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct {v2, v3, v4, v0, p3}, Lcom/google/android/gms/internal/fc$ab;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/internal/c$b;)V

    return-void
.end method
