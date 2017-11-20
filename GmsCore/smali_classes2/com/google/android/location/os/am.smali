.class public final Lcom/google/android/location/os/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljavax/crypto/SecretKey;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljavax/crypto/SecretKey;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no encryption key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x20

    new-array v0, v0, [B

    return-object v0
.end method
