.class public Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/fitness/RecordingApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/co$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;->dY()Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest$a;->dY()Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "request"    # Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/co$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/co$1;-><init>(Lcom/google/android/gms/internal/co;Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/fitness/data/Subscription$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/Subscription$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/fitness/data/Subscription$Builder;->setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription$Builder;->build()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->setSubscription(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->build()Lcom/google/android/gms/fitness/request/SubscribeRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SubscribeRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;-><init>()V

    new-instance v1, Lcom/google/android/gms/fitness/data/Subscription$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/Subscription$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/fitness/data/Subscription$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/Subscription$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription$Builder;->build()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->setSubscription(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SubscribeRequest$Builder;->build()Lcom/google/android/gms/fitness/request/SubscribeRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SubscribeRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SubscribeRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "request"    # Lcom/google/android/gms/fitness/request/SubscribeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/SubscribeRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/co$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/co$2;-><init>(Lcom/google/android/gms/internal/co;Lcom/google/android/gms/fitness/request/SubscribeRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "dataSource"    # Lcom/google/android/gms/fitness/data/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;->setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;->build()Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "dataType"    # Lcom/google/android/gms/fitness/data/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest$Builder;->build()Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "subscription"    # Lcom/google/android/gms/fitness/data/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/Subscription;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "request"    # Lcom/google/android/gms/fitness/request/UnsubscribeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/UnsubscribeRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/co$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/co$3;-><init>(Lcom/google/android/gms/internal/co;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
