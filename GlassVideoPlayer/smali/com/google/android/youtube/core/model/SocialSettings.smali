.class public Lcom/google/android/youtube/core/model/SocialSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ID_TO_NETWORK:Ljava/util/Map;


# instance fields
.field public final facebook:Lcom/google/android/youtube/core/model/h;

.field public final orkut:Lcom/google/android/youtube/core/model/h;

.field public final twitter:Lcom/google/android/youtube/core/model/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/youtube/core/model/SocialSettings;->ID_TO_NETWORK:Ljava/util/Map;

    .line 28
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings;->ID_TO_NETWORK:Ljava/util/Map;

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->FACEBOOK:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->id:Ljava/lang/String;

    sget-object v2, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->FACEBOOK:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings;->ID_TO_NETWORK:Ljava/util/Map;

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->TWITTER:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->id:Ljava/lang/String;

    sget-object v2, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->TWITTER:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/google/android/youtube/core/model/SocialSettings;->ID_TO_NETWORK:Ljava/util/Map;

    sget-object v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ORKUT:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->id:Ljava/lang/String;

    sget-object v2, Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;->ORKUT:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/model/h;Lcom/google/android/youtube/core/model/h;Lcom/google/android/youtube/core/model/h;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/youtube/core/model/SocialSettings;->facebook:Lcom/google/android/youtube/core/model/h;

    .line 35
    iput-object p2, p0, Lcom/google/android/youtube/core/model/SocialSettings;->twitter:Lcom/google/android/youtube/core/model/h;

    .line 36
    iput-object p3, p0, Lcom/google/android/youtube/core/model/SocialSettings;->orkut:Lcom/google/android/youtube/core/model/h;

    .line 37
    return-void
.end method
