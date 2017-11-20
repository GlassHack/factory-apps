.class Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->clearFactoryResetChallenges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$19;->HF:Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$19;->q(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public q(Lcom/google/android/gms/auth/firstparty/dataservice/w;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/auth/firstparty/dataservice/w;->clearFactoryResetChallenges()V

    const/4 v0, 0x0

    return-object v0
.end method
