.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsGCMBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "SubscribedFeedsGCMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-class v0, Lcom/google/android/gsf/subscribedfeeds/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
