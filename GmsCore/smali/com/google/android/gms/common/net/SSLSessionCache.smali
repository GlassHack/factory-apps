.class public final Lcom/google/android/gms/common/net/SSLSessionCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "sslcache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 67
    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLSessionCache;->a:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v2

    .line 71
    const-string v3, "SSLSessionCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create SSL session cache in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
