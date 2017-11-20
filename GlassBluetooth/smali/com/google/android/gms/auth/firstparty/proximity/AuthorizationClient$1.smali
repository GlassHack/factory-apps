.class Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;->authorize(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rr:Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

.field final synthetic rs:Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$1;->rs:Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient;

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$1;->rr:Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/auth/firstparty/proximity/a;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/AuthorizationClient$1;->rr:Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/proximity/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/AuthorizationRequest;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
