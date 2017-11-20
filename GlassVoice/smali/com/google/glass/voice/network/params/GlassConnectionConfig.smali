.class public final Lcom/google/glass/voice/network/params/GlassConnectionConfig;
.super Ljava/lang/Object;
.source "GlassConnectionConfig.java"

# interfaces
.implements Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheSize()J
    .locals 2

    .prologue
    .line 17
    const-wide/32 v0, 0xa00000

    return-wide v0
.end method

.method public getConnectTimeoutMs()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x2710

    return v0
.end method

.method public getReadTimeoutMs()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x2710

    return v0
.end method

.method public isSpdyEnabled()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public isSslSessionCacheEnabled()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
