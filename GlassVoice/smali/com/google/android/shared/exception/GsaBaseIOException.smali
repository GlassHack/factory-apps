.class public abstract Lcom/google/android/shared/exception/GsaBaseIOException;
.super Ljava/io/IOException;
.source "GsaBaseIOException.java"

# interfaces
.implements Lcom/google/android/shared/exception/GsaError;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asException()Ljava/lang/Exception;
    .locals 0

    .prologue
    .line 20
    return-object p0
.end method
