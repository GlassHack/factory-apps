.class public final Lcom/google/glass/voice/VoiceSearchResultsHelper;
.super Ljava/lang/Object;
.source "VoiceSearchResultsHelper.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field public static final ACTION_VOICE_SEARCH_RESULT:Ljava/lang/String; = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_VOICE_SEARCH_RESULT_CHILD:Ljava/lang/String; = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT_CHILD"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_BASE_URL:Ljava/lang/String; = "baseUrl"

.field public static final EXTRA_CARD_RESULT:Ljava/lang/String; = "cardResult"

.field public static final EXTRA_END_OF_SPEECH_TIME:Ljava/lang/String; = "endofSpeech"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_RECOGNITION_RESULT:Ljava/lang/String; = "recognitionResult"

.field public static final EXTRA_RESULTS_RECEIVED_TIME:Ljava/lang/String; = "resultsReceivedTime"

.field public static final EXTRA_SOURCE_OF_RESULTS:Ljava/lang/String; = "source"

.field public static final EXTRA_SOURCE_OF_RESULTS_DEBUG_ACTIVITY:Ljava/lang/String; = "debugActivity"

.field public static final EXTRA_SOURCE_OF_RESULTS_FOLLOW_ON_CARDS:Ljava/lang/String; = "followOnCards"

.field public static final EXTRA_SOURCE_OF_RESULTS_QUERY_ACTIVITY:Ljava/lang/String; = "queryActivity"

.field public static final EXTRA_SOURCE_OF_RESULTS_SEARCH_ACTIVITY:Ljava/lang/String; = "searchActivity"

.field public static final EXTRA_SOURCE_OF_RESULTS_TIMELINE:Ljava/lang/String; = "timeline"

.field public static final EXTRA_SOURCE_OF_RESULTS_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final EXTRA_START_TIME:Ljava/lang/String; = "startTime"

.field public static final EXTRA_TIMELINE_ITEM_ID:Ljava/lang/String; = "timelineItemId"

.field public static final TIME_NOT_SET:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "clearOldResultInstances"    # Z

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 31
    const-string v1, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 35
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    :cond_0
    const-string v1, "cardResult"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    return-object v0

    .line 31
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT_CHILD"

    goto :goto_0
.end method
