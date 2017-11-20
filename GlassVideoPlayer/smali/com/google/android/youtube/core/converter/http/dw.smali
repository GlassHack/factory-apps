.class final Lcom/google/android/youtube/core/converter/http/dw;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/k;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 99
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 100
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    .line 101
    sget-object v1, Lcom/google/android/youtube/core/model/UserProfile$Gender;->MALE:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender(Lcom/google/android/youtube/core/model/UserProfile$Gender;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 103
    sget-object v1, Lcom/google/android/youtube/core/model/UserProfile$Gender;->FEMALE:Lcom/google/android/youtube/core/model/UserProfile$Gender;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->gender(Lcom/google/android/youtube/core/model/UserProfile$Gender;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_0
.end method
