.class public final Lcom/google/glass/voice/VoiceSearchResultsHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field public static final ACTION_VOICE_SEARCH_RESULT:Ljava/lang/String; = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

.field static final ACTION_VOICE_SEARCH_RESULT_CHILD:Ljava/lang/String; = "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT_CHILD"

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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 31
    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    if-eqz p1, :cond_0

    .line 36
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    const/high16 v0, 0x200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    :cond_0
    const-string v0, "cardResult"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object v1

    .line 31
    :cond_1
    const-string v0, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT_CHILD"

    goto :goto_0
.end method
