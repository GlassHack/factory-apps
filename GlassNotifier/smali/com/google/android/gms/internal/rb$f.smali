.class final Lcom/google/android/gms/internal/rb$f;
.super Lcom/google/android/gms/internal/qn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final awb:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$AddCircleResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/people/GraphUpdate$AddCircleResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/qn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$f;->awb:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/rc;->rr()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PeopleClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bundle callback: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nresolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nbundle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rc;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/rb;->b(ILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    if-nez p3, :cond_1

    move-object v1, v0

    :goto_0
    if-nez p3, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/rb$f;->awb:Lcom/google/android/gms/common/api/a$b;

    new-instance v4, Lcom/google/android/gms/internal/rb$g;

    invoke-direct {v4, v2, v1, v0}, Lcom/google/android/gms/internal/rb$g;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/a$b;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "circle_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v0, "circle_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
