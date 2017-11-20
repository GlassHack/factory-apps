.class public Lcom/google/android/gms/people/PeopleClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;,
        Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;,
        Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$OnAddCircleFinishedListener;,
        Lcom/google/android/gms/people/PeopleClient$b;,
        Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;,
        Lcom/google/android/gms/people/PeopleClient$f;,
        Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;,
        Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;,
        Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$a;,
        Lcom/google/android/gms/people/PeopleClient$e;,
        Lcom/google/android/gms/people/PeopleClient$c;,
        Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$d;,
        Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;,
        Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PeopleClient"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final Mi:Lcom/google/android/gms/internal/fc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .param p4, "clientApplicationId"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/PeopleClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
    .param p4, "clientApplicationId"    # I
    .param p5, "realClientPackage"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fc;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/PeopleClient;-><init>(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/fc;)V
    .locals 0
    .param p1, "impl"    # Lcom/google/android/gms/internal/fc;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    return-void
.end method


# virtual methods
.method public FOR_TEST_DO_NOT_USE_blockPerson(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "gaiaId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/people/PeopleClient;->blockPerson(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public FOR_TEST_DO_NOT_USE_unblockPerson(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "gaiaId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/people/PeopleClient;->unblockPerson(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addCircle(Lcom/google/android/gms/people/PeopleClient$OnAddCircleFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAddCircleFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "circleName"    # Ljava/lang/String;
    .param p5, "circleDescription"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$4;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnAddCircleFinishedListener;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPeopleToCircle(Lcom/google/android/gms/people/PeopleClient$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$b;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "circleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/people/PeopleClient$b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "qualifiedPersonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$3;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$b;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public blockPerson(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "gaiaId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$f;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    const/4 v5, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc;->disconnect()V

    return-void
.end method

.method public expGetEmailTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc;->expGetEmailTypeMapBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public expGetPhoneTypeMapBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc;->expGetPhoneTypeMapBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public expLoadPeopleForAggregation(Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZI)V
    .locals 13
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "searchFields"    # I
    .param p6, "peopleOnly"    # Z
    .param p7, "projection"    # I
    .param p8, "extraColumns"    # I
    .param p9, "filterGaiaId"    # Ljava/lang/String;
    .param p10, "includeEvergreenPeople"    # Z
    .param p11, "gaiaMapTypeBitMask"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$7;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$ExpOnLoadPeopleForAggregationListener;)V

    const/4 v11, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/String;ZII)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public isSyncToContactsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc;->isSyncToContactsEnabled()Z

    move-result v0

    return v0
.end method

.method public loadAddToCircleConsent(Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$5;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnAddToCircleConsentLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "includeInvisible"    # Z
    .param p5, "query"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/people/PeopleClient;->loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V

    return-void
.end method

.method public loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "includeInvisible"    # Z
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "peopleOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v7, 0x27

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/people/PeopleClient;->loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V

    return-void
.end method

.method public loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V
    .locals 9
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "includeInvisible"    # Z
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "peopleOnly"    # Z
    .param p7, "projection"    # I

    .prologue
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/people/PeopleClient;->loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZII)V

    return-void
.end method

.method public loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZII)V
    .locals 10
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "includeInvisible"    # Z
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "peopleOnly"    # Z
    .param p7, "projection"    # I
    .param p8, "extraColumns"    # I

    .prologue
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/people/PeopleClient;->loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;)V

    return-void
.end method

.method public loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;)V
    .locals 11
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "includeInvisible"    # Z
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "peopleOnly"    # Z
    .param p7, "projection"    # I
    .param p8, "extraColumns"    # I
    .param p9, "filterGaiaId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/people/PeopleClient;->loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;Z)V

    return-void
.end method

.method public loadAggregatedPeople(Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;Z)V
    .locals 12
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "includeInvisible"    # Z
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "peopleOnly"    # Z
    .param p7, "projection"    # I
    .param p8, "extraColumns"    # I
    .param p9, "filterGaiaId"    # Ljava/lang/String;
    .param p10, "includeEvergreenPeople"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$9;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnAggregatedPeopleLoadedListener;)V

    const/4 v11, 0x0

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;ZI)V

    return-void
.end method

.method public loadAvatarByUrl(Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;Ljava/lang/String;II)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "avatarSize"    # I
    .param p4, "options"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$13;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$13;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/g;

    return-void
.end method

.method public loadCircles(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "circleId"    # Ljava/lang/String;
    .param p5, "circleType"    # I
    .param p6, "circleNamePrefix"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$c;-><init>(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public loadCircles(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "circleId"    # Ljava/lang/String;
    .param p5, "circleType"    # I
    .param p6, "circleNamePrefix"    # Ljava/lang/String;
    .param p7, "getVisibility"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$c;-><init>(Lcom/google/android/gms/people/PeopleClient$OnCirclesLoadedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public loadContactThumbnailByContactId(Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;J)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;
    .param p2, "contactId"    # J

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$15;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$15;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;J)Lcom/google/android/gms/common/internal/g;

    return-void
.end method

.method public loadContactsGaiaIds(Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;
    .param p2, "filterContactInfo"    # Ljava/lang/String;
    .param p3, "filterGaiaId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$10;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$10;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnContactsGaiaIdsLoadedListener;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public loadOwner(Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$d;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/people/PeopleClient$d;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    const/4 v6, 0x0

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public loadOwnerAvatar(Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "avatarSize"    # I
    .param p5, "avatarOptions"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$11;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$11;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/g;

    return-void
.end method

.method public loadOwnerCoverPhoto(Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "minimumWidth"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$12;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/g;

    return-void
.end method

.method public loadOwners(Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;Z)V
    .locals 7
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;
    .param p2, "includePlusPages"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$d;

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/people/PeopleClient$d;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    move v3, p2

    move-object v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public loadOwners(Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;ZI)V
    .locals 7
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;
    .param p2, "includePlusPages"    # Z
    .param p3, "sortOrder"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$d;

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/people/PeopleClient$d;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOwnersLoadedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    const/4 v2, 0x0

    move v3, p2

    move-object v5, v4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$1;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;I)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "circleId"    # Ljava/lang/String;
    .param p6, "projection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p5, "qualifiedIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setCircleId(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setQualifiedIds(Ljava/util/Collection;)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;->setProjection(I)Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/people/PeopleClient;->loadPeople(Lcom/google/android/gms/people/PeopleClient$OnPeopleLoadedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$LoadPeopleOptions;)V

    return-void
.end method

.method public loadPeopleLive(Lcom/google/android/gms/people/PeopleClient$e;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$a;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$e;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/google/android/gms/people/PeopleClient$a;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$8;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$e;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/PeopleClient$a;)V

    return-void
.end method

.method public loadRemoteImage(Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$14;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$14;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnImageLoadedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;)Lcom/google/android/gms/common/internal/g;

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public registerOnDataChangedListenerForAllOwners(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;
    .param p2, "scopes"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public registerOnDataChangedListenerForOwner(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "scopes"    # I

    .prologue
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeCircle(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "circleId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$f;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pageId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    const-wide/16 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->b(Ljava/lang/String;Ljava/lang/String;JZZ)Z

    move-result v0

    return v0
.end method

.method public requestSync(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "allowanceSecond"    # J

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->b(Ljava/lang/String;Ljava/lang/String;JZZ)Z

    move-result v0

    return v0
.end method

.method public requestSync(Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 7
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "allowanceSecond"    # J
    .param p5, "isDisabledByBackgroundSync"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->b(Ljava/lang/String;Ljava/lang/String;JZZ)Z

    move-result v0

    return v0
.end method

.method public requestSyncByUserAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pageId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fc;->b(Ljava/lang/String;Ljava/lang/String;JZZ)Z

    move-result v0

    return v0
.end method

.method public setAvatar(Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "imageUri"    # Landroid/net/Uri;
    .param p5, "insertCameraImage"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$6;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnAvatarSetListener;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public setHasShownAddToCircleConsent(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$f;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/fc;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSyncToContactsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->setSyncToContactsEnabled(Z)V

    return-void
.end method

.method public setSyncToContactsSettings(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "enableForAccount"    # Z
    .param p4, "syncTarget"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$f;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method

.method public startSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pageId"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/people/PeopleClient;->requestSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public syncRawContact(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "rawContactUri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->syncRawContact(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public unblockPerson(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "gaiaId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$f;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterOnDataChangedListener(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fc;->unregisterOnDataChangedListener(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V

    return-void
.end method

.method public updateCircle(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "circleId"    # Ljava/lang/String;
    .param p5, "newName"    # Ljava/lang/String;
    .param p6, "newEnabledForSharing"    # Ljava/lang/Boolean;
    .param p7, "newCircleDescription"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$f;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/people/PeopleClient$f;-><init>(Lcom/google/android/gms/people/PeopleClient$OnOperationFinishedListener;Lcom/google/android/gms/people/PeopleClient$1;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public updatePersonCircles(Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "qualifiedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "circleIdsToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "circleIdsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/people/PeopleClient;->updatePersonCircles(Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V

    return-void
.end method

.method public updatePersonCircles(Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "qualifiedId"    # Ljava/lang/String;
    .param p7, "startView"    # Lcom/google/android/gms/internal/bh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/bh;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "circleIdsToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "circleIdsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient;->Mi:Lcom/google/android/gms/internal/fc;

    new-instance v1, Lcom/google/android/gms/people/PeopleClient$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/people/PeopleClient$2;-><init>(Lcom/google/android/gms/people/PeopleClient;Lcom/google/android/gms/people/PeopleClient$OnUpdatePersonCirclesFinishedListener;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/bh;)V

    return-void
.end method
