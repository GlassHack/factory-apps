.class final Lcom/google/android/gms/internal/fc$r;
.super Lcom/google/android/gms/internal/ep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "r"
.end annotation


# instance fields
.field final synthetic MY:Lcom/google/android/gms/internal/fc;

.field private final Nm:Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fc$r;->MY:Lcom/google/android/gms/internal/fc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ep;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fc$r;->Nm:Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bundle callback: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nbundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "PeopleClient"

    const-string v1, "Non-success data changed callback received."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fd;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/internal/fc$r;->MY:Lcom/google/android/gms/internal/fc;

    new-instance v0, Lcom/google/android/gms/internal/fc$e;

    iget-object v1, p0, Lcom/google/android/gms/internal/fc$r;->MY:Lcom/google/android/gms/internal/fc;

    iget-object v2, p0, Lcom/google/android/gms/internal/fc$r;->Nm:Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;

    const-string v3, "account"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pagegaiaid"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scope"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fc$e;-><init>(Lcom/google/android/gms/internal/fc;Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/internal/c$b;)V

    goto :goto_0
.end method
