.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeRemoteException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuntimeRemoteException"
.end annotation


# instance fields
.field private final Ib:Landroid/os/RemoteException;


# direct methods
.method public constructor <init>(Landroid/os/RemoteException;)V
    .locals 0
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeRemoteException;->Ib:Landroid/os/RemoteException;

    return-void
.end method


# virtual methods
.method public getWrappedException()Landroid/os/RemoteException;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeRemoteException;->Ib:Landroid/os/RemoteException;

    return-object v0
.end method
