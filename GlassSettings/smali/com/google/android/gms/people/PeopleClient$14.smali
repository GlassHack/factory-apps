.class Lcom/google/android/gms/people/PeopleClient$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/BaseImplementation$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/people/PeopleClient;->loadRemoteImage(Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;Ljava/lang/String;)V
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
        "Lcom/google/android/gms/people/Images$LoadImageResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Mk:Lcom/google/android/gms/people/PeopleClient;

.field final synthetic Mu:Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$14;->Mk:Lcom/google/android/gms/people/PeopleClient;

    iput-object p2, p0, Lcom/google/android/gms/people/PeopleClient$14;->Mu:Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/Images$LoadImageResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$14;->Mu:Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/people/Images$LoadImageResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->cu()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/Images$LoadImageResult;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;->onImageLoaded(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/people/Images$LoadImageResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/PeopleClient$14;->a(Lcom/google/android/gms/people/Images$LoadImageResult;)V

    return-void
.end method
