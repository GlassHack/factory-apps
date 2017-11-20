.class final Lcom/google/android/gms/internal/fc$x;
.super Lcom/google/android/gms/internal/ep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "x"
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/people/a$a;",
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
            "Lcom/google/android/gms/people/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$x;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ep;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fc$x;->Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "People callback: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nholder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v5, p2}, Lcom/google/android/gms/internal/fc;->b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/fc$x;->MY:Lcom/google/android/gms/internal/fc;

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/people/model/PersonBuffer;

    move-result-object v4

    if-nez p3, :cond_1

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/fc$x;->MY:Lcom/google/android/gms/internal/fc;

    new-instance v0, Lcom/google/android/gms/internal/fc$ag;

    iget-object v1, p0, Lcom/google/android/gms/internal/fc$x;->MY:Lcom/google/android/gms/internal/fc;

    iget-object v2, p0, Lcom/google/android/gms/internal/fc$x;->Nd:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fc$ag;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/PersonBuffer;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/internal/c$b;)V

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pageToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
