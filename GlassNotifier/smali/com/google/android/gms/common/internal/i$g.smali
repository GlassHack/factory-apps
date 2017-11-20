.class public final Lcom/google/android/gms/common/internal/i$g;
.super Lcom/google/android/gms/common/internal/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<TT;>.b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic WC:Lcom/google/android/gms/common/internal/i;

.field public final WH:Landroid/os/Bundle;

.field public final WI:Landroid/os/IBinder;

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/i;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/i$b;-><init>(Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/i$g;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/i$g;->WI:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/i$g;->WH:Landroid/os/Bundle;

    return-void
.end method

.method private ba(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/i;->bP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/i;->q(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected b(Ljava/lang/Boolean;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/internal/i$g;->statusCode:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WH:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WH:Landroid/os/Bundle;

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/i;->d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/i;->e(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/k;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/i;->d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/i;->ie()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/i$e;)Lcom/google/android/gms/common/internal/i$e;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v2, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget v3, p0, Lcom/google/android/gms/common/internal/i$g;->statusCode:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WI:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/i$g;->ba(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->dZ()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->c(Lcom/google/android/gms/common/internal/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->G(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->e(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/k;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/i;->bO()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/i;->d(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/i$e;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/i;->ie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/internal/k;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/i$e;)Lcom/google/android/gms/common/internal/i$e;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$g;->WC:Lcom/google/android/gms/common/internal/i;

    invoke-static {v0, v6, v1}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected ji()V
    .locals 0

    return-void
.end method

.method protected synthetic k(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/i$g;->b(Ljava/lang/Boolean;)V

    return-void
.end method
