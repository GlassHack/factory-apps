.class public Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final authType:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

.field public final scope:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/model/UserAuth$AuthType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authType:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    .line 50
    iput-object p2, p0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->scope:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static createClientLogin(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    invoke-direct {v0, v1, p0}, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;-><init>(Lcom/google/android/youtube/core/model/UserAuth$AuthType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createOAuth(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oauth2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;-><init>(Lcom/google/android/youtube/core/model/UserAuth$AuthType;Ljava/lang/String;)V

    return-object v0
.end method
