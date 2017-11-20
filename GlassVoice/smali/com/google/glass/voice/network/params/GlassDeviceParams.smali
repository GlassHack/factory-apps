.class public final Lcom/google/glass/voice/network/params/GlassDeviceParams;
.super Ljava/lang/Object;
.source "GlassDeviceParams.java"

# interfaces
.implements Lcom/google/android/speech/params/DeviceParams;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/voice/network/params/GlassDeviceParams;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/voice/network/params/GlassDeviceParams;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/network/params/GlassDeviceParams;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getSearchDomainCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
