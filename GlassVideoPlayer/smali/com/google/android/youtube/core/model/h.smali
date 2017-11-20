.class public final Lcom/google/android/youtube/core/model/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

.field public final b:Z

.field public final c:Ljava/util/Set;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;ZLjava/util/Set;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/core/model/h;->a:Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;

    .line 46
    iput-boolean p2, p0, Lcom/google/android/youtube/core/model/h;->b:Z

    .line 47
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/h;->c:Ljava/util/Set;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;ZLjava/util/Set;Lcom/google/android/youtube/core/model/h;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/model/h;-><init>(Lcom/google/android/youtube/core/model/SocialSettings$SocialNetwork;ZLjava/util/Set;)V

    return-void
.end method
