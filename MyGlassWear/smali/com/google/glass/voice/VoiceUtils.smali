.class public Lcom/google/glass/voice/VoiceUtils;
.super Ljava/lang/Object;
.source "VoiceUtils.java"


# static fields
.field private static final GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final PATTERN_HASHTAG:Ljava/util/regex/Pattern;

.field private static final PATTERN_HASHTAG_CONTENT:Ljava/util/regex/Pattern;

.field private static final PATTERN_HASHTAG_SPACES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 23
    const-string v0, "(hash\\s?tag\\s(?!$))"

    .line 24
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "(#.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_CONTENT:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "\\s+([^#])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_SPACES:Ljava/util/regex/Pattern;

    .line 112
    const-string v0, "^(\\s?you\\s?|\\s?good\\s?|\\s?get\\s?)?(\\s?(di|e)rections?\\s?)?(\\s?to\\s?)?"

    .line 113
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalizeHashtags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 p0, 0x0

    .line 94
    .end local p0    # "input":Ljava/lang/CharSequence;
    .local v1, "hashtagMatcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 61
    .end local v1    # "hashtagMatcher":Ljava/util/regex/Matcher;
    .restart local p0    # "input":Ljava/lang/CharSequence;
    :cond_1
    sget-object v5, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 62
    .restart local v1    # "hashtagMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const/16 v5, 0x23

    invoke-static {p0, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 74
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 80
    .local v3, "output":Ljava/lang/StringBuffer;
    sget-object v5, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_CONTENT:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 81
    .local v0, "hashtagContentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 84
    sget-object v5, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 85
    .local v2, "hashtagSpacesMatcher":Ljava/util/regex/Matcher;
    const-string v5, "$1"

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 88
    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 92
    .end local v2    # "hashtagSpacesMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-object p0, v3

    .line 94
    goto :goto_0
.end method

.method public static stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "query"    # Ljava/lang/CharSequence;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 136
    if-eqz p0, :cond_0

    .line 137
    sget-object v0, Lcom/google/glass/voice/VoiceUtils;->GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    .end local p0    # "query":Ljava/lang/CharSequence;
    :cond_0
    return-object p0
.end method
