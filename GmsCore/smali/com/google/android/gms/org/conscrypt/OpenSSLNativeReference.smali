.class public abstract Lcom/google/android/gms/org/conscrypt/OpenSSLNativeReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final context:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ctx == 0"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLNativeReference;->context:J

    .line 32
    return-void
.end method
