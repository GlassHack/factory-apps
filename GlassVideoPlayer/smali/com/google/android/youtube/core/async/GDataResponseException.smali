.class public Lcom/google/android/youtube/core/async/GDataResponseException;
.super Lorg/apache/http/client/HttpResponseException;
.source "SourceFile"


# static fields
.field private static final YOUTUBE_SIGNUP_REQUIRED_LIST:Ljava/util/List;


# instance fields
.field public final errors:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataResponseException;->YOUTUBE_SIGNUP_REQUIRED_LIST:Ljava/util/List;

    .line 26
    sget-object v0, Lcom/google/android/youtube/core/async/GDataResponseException;->YOUTUBE_SIGNUP_REQUIRED_LIST:Ljava/util/List;

    new-instance v1, Lcom/google/android/youtube/core/model/d;

    .line 27
    const-string v2, "yt:service"

    const-string v3, "youtube_signup_required"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/google/android/youtube/core/model/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", GData error(s):\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "none"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 44
    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 43
    :goto_1
    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataResponseException;->errors:Ljava/util/List;

    .line 45
    return-void

    .line 42
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static createYouTubeSignupRequired(ILjava/lang/String;)Lcom/google/android/youtube/core/async/GDataResponseException;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/youtube/core/async/GDataResponseException;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataResponseException;->YOUTUBE_SIGNUP_REQUIRED_LIST:Ljava/util/List;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/youtube/core/async/GDataResponseException;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public containsDisabledInMaintenanceModeError()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    .line 71
    const-string v0, "yt:service"

    const-string v1, "disabled_in_maintenance_mode"

    .line 70
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataResponseException;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/d;

    .line 58
    if-eqz p1, :cond_2

    iget-object v2, v0, Lcom/google/android/youtube/core/model/d;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v0, Lcom/google/android/youtube/core/model/d;->b:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :cond_3
    if-eqz p3, :cond_4

    iget-object v2, v0, Lcom/google/android/youtube/core/model/d;->c:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :cond_4
    if-eqz p4, :cond_5

    .line 62
    iget-object v0, v0, Lcom/google/android/youtube/core/model/d;->d:Ljava/lang/String;

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsInvalidUriError()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    .line 91
    const-string v0, "GData"

    const-string v1, "InvalidRequestUriException"

    .line 90
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public containsVideoIsPrivateError()Z
    .locals 4

    .prologue
    .line 84
    .line 85
    const-string v0, "GData"

    const-string v1, "ServiceForbiddenException"

    const/4 v2, 0x0

    .line 86
    const-string v3, "Private video"

    .line 84
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public containsYouTubeSignupRequiredError()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    .line 76
    const-string v0, "yt:service"

    const-string v1, "youtube_signup_required"

    .line 75
    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const-string v0, "GData"

    const-string v1, "InvalidRequestUriException"

    .line 80
    const-string v2, "Missing or invalid username."

    .line 79
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/android/youtube/core/async/GDataResponseException;->containsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 75
    goto :goto_0
.end method
