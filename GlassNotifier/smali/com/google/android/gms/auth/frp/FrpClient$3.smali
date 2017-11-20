.class Lcom/google/android/gms/auth/frp/FrpClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/frp/FrpClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/frp/FrpClient;->unlockFactoryResetProtection(Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;)Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;
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
        "Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic JD:Lcom/google/android/gms/auth/frp/FrpClient;

.field final synthetic JE:Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/frp/FrpClient;Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/frp/FrpClient$3;->JD:Lcom/google/android/gms/auth/frp/FrpClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/frp/FrpClient$3;->JE:Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/google/android/gms/auth/frp/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/frp/FrpClient$3;->c(Lcom/google/android/gms/auth/frp/a;)Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/auth/frp/a;)Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/frp/FrpClient$3;->JE:Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/frp/a;->unlockFactoryResetProtection(Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionRequest;)Lcom/google/android/gms/auth/frp/UnlockFactoryResetProtectionResponse;

    move-result-object v0

    return-object v0
.end method
