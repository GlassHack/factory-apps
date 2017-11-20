.class final Lcom/google/android/gms/internal/rb$l;
.super Lcom/google/android/gms/internal/qn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# instance fields
.field private final aDJ:Lcom/google/android/gms/internal/rm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/rm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rb$l;->aDJ:Lcom/google/android/gms/internal/rm;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;[Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/rc;->rr()Z

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

    const-string v2, "\nholders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rc;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/rb;->i(ILandroid/os/Bundle;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rb$l;->aDJ:Lcom/google/android/gms/internal/rm;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/internal/rm;->a(Lcom/google/android/gms/common/ConnectionResult;[Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method
