.class final Lcom/google/android/youtube/core/converter/http/ao;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ak;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ao;->a:Lcom/google/android/youtube/core/converter/http/ak;

    .line 64
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    const-string v0, "http://gdata.youtube.com/schemas/2007/userevents.cat"

    const-string v1, "scheme"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "term"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 71
    const-string v1, "BULLETIN_POSTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIDEO_UPLOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    .line 90
    :goto_0
    if-eqz v1, :cond_a

    .line 91
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 97
    :cond_1
    :goto_1
    return-void

    .line 73
    :cond_2
    const-string v1, "VIDEO_RATED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_LIKED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 75
    :cond_3
    const-string v1, "VIDEO_SHARED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 77
    :cond_4
    const-string v1, "VIDEO_FAVORITED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 79
    :cond_5
    const-string v1, "VIDEO_COMMENTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 81
    :cond_6
    const-string v1, "VIDEO_RECOMMENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RECOMMENDED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 83
    :cond_7
    const-string v1, "VIDEO_ADDED_TO_PLAYLIST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 84
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_ADDED_TO_PLAYLIST:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 85
    :cond_8
    const-string v1, "FRIEND_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 86
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 87
    :cond_9
    const-string v1, "USER_SUBSCRIPTION_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 88
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    move-object v1, v0

    goto :goto_0

    .line 93
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected event action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v1, v0

    goto/16 :goto_0
.end method
