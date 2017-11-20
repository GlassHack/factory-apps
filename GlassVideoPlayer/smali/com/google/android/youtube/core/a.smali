.class public final Lcom/google/android/youtube/core/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Throwable;I)Z
    .locals 1

    .prologue
    .line 47
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {p0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 47
    goto :goto_0
.end method
