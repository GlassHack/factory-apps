.class public abstract Lcom/google/glass/voice/menu/Requirements;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/voice/menu/Requirements$1;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/Requirements$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
