.class public Lcom/google/android/wearable/gmsclient/SimpleWearableListener;
.super Ljava/lang/Object;
.source "SimpleWearableListener.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 0
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    .line 11
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 0
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 15
    return-void
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 0
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 19
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 0
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 23
    return-void
.end method
