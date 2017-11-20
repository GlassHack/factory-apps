.class Lcom/google/android/gms/people/PeopleClient$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->setAvatar(Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/BaseImplementation$b",
        "<",
        "Lcom/google/android/gms/people/Images$SetAvatarResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Mp:Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$6;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$6;->Mp:Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Images$SetAvatarResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$6;->Mp:Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/Images$SetAvatarResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/Images$SetAvatarResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;->onAvatarSet(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Images$SetAvatarResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$6;->a(Lcom/google/android/gms/people/Images$SetAvatarResult;)V

    return-void
.end method
