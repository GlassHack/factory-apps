.class public abstract Lcom/google/android/gms/location/reporting/GmmUlrServiceStub;
.super Lcom/google/android/gms/location/reporting/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/reporting/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllGmmSettings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/reporting/GmmSettings;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getAllGmmSettingsInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/reporting/GmmSettings;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/GmmUlrServiceStub;->getAllGmmSettings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
