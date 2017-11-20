.class public Lcom/google/android/wearable/gmsclient/WearableClient;
.super Ljava/lang/Object;
.source "WearableClient.java"

# interfaces
.implements Lcom/google/android/wearable/util/Dumpable;


# static fields
.field public static final TAG:Ljava/lang/String; = "WearableClient"


# instance fields
.field private final mAssetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

.field private final mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

.field private final mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

.field private final mNodeManager:Lcom/google/android/wearable/gmsclient/NodeManager;

.field private final mRpcManager:Lcom/google/android/wearable/gmsclient/MessageManager;

.field private final mWearableConnectionManager:Lcom/google/android/wearable/gmsclient/ConnectionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V
    .locals 2
    .param p1, "clientBuilder"    # Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-direct {v0, p1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .line 21
    new-instance v0, Lcom/google/android/wearable/gmsclient/DataManager;

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/DataManager;-><init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    .line 22
    new-instance v0, Lcom/google/android/wearable/gmsclient/MessageManager;

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/MessageManager;-><init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mRpcManager:Lcom/google/android/wearable/gmsclient/MessageManager;

    .line 23
    new-instance v0, Lcom/google/android/wearable/gmsclient/AssetManager;

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/AssetManager;-><init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mAssetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

    .line 24
    new-instance v0, Lcom/google/android/wearable/gmsclient/NodeManager;

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/NodeManager;-><init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mNodeManager:Lcom/google/android/wearable/gmsclient/NodeManager;

    .line 25
    new-instance v0, Lcom/google/android/wearable/gmsclient/ConnectionManager;

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/ConnectionManager;-><init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mWearableConnectionManager:Lcom/google/android/wearable/gmsclient/ConnectionManager;

    .line 26
    return-void
.end method


# virtual methods
.method public acquireApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v0}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 1
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 58
    const-string v0, "WearableClient"

    invoke-virtual {p1, v0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 60
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V

    .line 61
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 62
    return-void
.end method

.method public getAssetManager()Lcom/google/android/wearable/gmsclient/AssetManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mAssetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

    return-object v0
.end method

.method public getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mDataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    return-object v0
.end method

.method public getNodeManager()Lcom/google/android/wearable/gmsclient/NodeManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mNodeManager:Lcom/google/android/wearable/gmsclient/NodeManager;

    return-object v0
.end method

.method public getRpcManager()Lcom/google/android/wearable/gmsclient/MessageManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mRpcManager:Lcom/google/android/wearable/gmsclient/MessageManager;

    return-object v0
.end method

.method public getWearableConnectionManager()Lcom/google/android/wearable/gmsclient/ConnectionManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mWearableConnectionManager:Lcom/google/android/wearable/gmsclient/ConnectionManager;

    return-object v0
.end method

.method public releaseApiClient()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/WearableClient;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v0}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 34
    return-void
.end method
