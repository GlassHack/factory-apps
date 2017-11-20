.class public interface abstract Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionConfig"
.end annotation


# virtual methods
.method public abstract getCacheSize()J
.end method

.method public abstract getConnectTimeoutMs()I
.end method

.method public abstract getReadTimeoutMs()I
.end method

.method public abstract isSpdyEnabled()Z
.end method

.method public abstract isSslSessionCacheEnabled()Z
.end method
