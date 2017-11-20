.class public Lcom/google/glass/voice/VoiceUtils;
.super Ljava/lang/Object;
.source "VoiceUtils.java"


# static fields
.field public static final ACTION_CLOSE_VOICE_MENU:Ljava/lang/String; = "com.google.glass.voice.action.CLOSE_MENU"

.field public static final ACTION_PRELOAD_ENITIES:Ljava/lang/String; = "com.google.glass.voice.action.PRELOAD"

.field public static final ACTION_PRELOAD_PHRASES:Ljava/lang/String; = "com.google.glass.voice.PRELOAD_PHRASES"

.field public static final ACTION_REOPEN_MICROPHONE:Ljava/lang/String; = "com.google.glass.voice.action.REOPEN_MIC"

.field public static final EXTRA_CONTENT_TYPES:Ljava/lang/String; = "content_types"

.field public static final EXTRA_PRELOAD_PHRASES:Ljava/lang/String; = "preload_phrases"

.field private static final GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final PATTERN_HASHTAG:Ljava/util/regex/Pattern;

.field private static final PATTERN_HASHTAG_CONTENT:Ljava/util/regex/Pattern;

.field private static final PATTERN_HASHTAG_SPACES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 40
    const-string v0, "(hash\\s?tag\\s(?!$))"

    .line 41
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "(#.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_CONTENT:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "\\s+([^#])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_SPACES:Ljava/util/regex/Pattern;

    .line 129
    const-string v0, "^(\\s?you\\s?|\\s?good\\s?|\\s?get\\s?)?(\\s?(di|e)rections?\\s?)?(\\s?to\\s?)?"

    .line 130
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceUtils;->GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 129
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
    .line 74
    if-nez p0, :cond_1

    .line 75
    const/4 p0, 0x0

    .line 111
    .end local p0    # "input":Ljava/lang/CharSequence;
    .local v1, "hashtagMatcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 78
    .end local v1    # "hashtagMatcher":Ljava/util/regex/Matcher;
    .restart local p0    # "input":Ljava/lang/CharSequence;
    :cond_1
    sget-object v5, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 79
    .restart local v1    # "hashtagMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    const/16 v5, 0x23

    invoke-static {p0, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 91
    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    .local v3, "output":Ljava/lang/StringBuffer;
    sget-object v5, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_CONTENT:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 98
    .local v0, "hashtagContentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 101
    sget-object v5, Lcom/google/glass/voice/VoiceUtils;->PATTERN_HASHTAG_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 102
    .local v2, "hashtagSpacesMatcher":Ljava/util/regex/Matcher;
    const-string v5, "$1"

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 109
    .end local v2    # "hashtagSpacesMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-object p0, v3

    .line 111
    goto :goto_0
.end method

.method public static preloadEntities(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTypes"    # [Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.voice.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "content_types"

    .line 161
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public static stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "query"    # Ljava/lang/CharSequence;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 152
    if-eqz p0, :cond_0

    .line 153
    sget-object v0, Lcom/google/glass/voice/VoiceUtils;->GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 155
    .end local p0    # "query":Ljava/lang/CharSequence;
    :cond_0
    return-object p0
.end method
