.class Lcom/google/android/gms/auth/frp/FrpClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/frp/FrpClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/frp/FrpClient;->isChallengeRequired()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/frp/FrpClient$a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic JD:Lcom/google/android/gms/auth/frp/FrpClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/frp/FrpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/frp/FrpClient$2;->JD:Lcom/google/android/gms/auth/frp/FrpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/auth/frp/a;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/auth/frp/a;->isChallengeRequired()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/auth/frp/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/frp/FrpClient$2;->a(Lcom/google/android/gms/auth/frp/a;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
