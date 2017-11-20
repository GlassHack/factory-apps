.class public abstract Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;
.super Ljava/lang/Object;
.source "HtmlAnswerCardParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$1;,
        Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
    }
.end annotation


# static fields
.field protected static final GLASS_CARD_CLASS:Ljava/lang/String; = "gls-crd"

.field protected static final GLASS_COMMON_SECTION_CLASS:Ljava/lang/String; = "gls-com"

.field protected static final GLASS_IN_BUNDLE_CLASS:Ljava/lang/String; = "gls-in-bdl"

.field protected static final GLASS_IN_COVER_CLASS:Ljava/lang/String; = "gls-in-tl"

.field protected static final GLASS_IN_IS_CLASS:Ljava/lang/String; = "gls-in-is"

.field protected static final GLASS_MENU_ACTION_CLASS:Ljava/lang/String; = "gls-ma"

.field protected static final GLASS_NO_BUNDLE_CLASS:Ljava/lang/String; = "gls-no-bdl"

.field protected static final GLASS_NO_COVER_CLASS:Ljava/lang/String; = "gls-no-tl"

.field protected static final GLASS_NO_IS_CLASS:Ljava/lang/String; = "gls-no-is"

.field protected static final GLASS_TTS_CLASS:Ljava/lang/String; = "gls-tts"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method protected static classNamesContain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "classNames"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected static contextAllowedForClassNames(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .param p1, "classNames"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$search$results$HtmlAnswerCard$DisplayContext:[I

    invoke-virtual {p0}, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :pswitch_0
    const-string v2, " gls-no-is "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v2, " gls-no-tl "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v2, " gls-no-bdl "

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static contextualClassFor(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$search$results$HtmlAnswerCard$DisplayContext:[I

    invoke-virtual {p0}, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "gls-in-is"

    goto :goto_0

    .line 90
    :pswitch_1
    const-string v0, "gls-in-tl"

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "gls-in-bdl"

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static getContextsAllowedByClassNames(Ljava/util/List;)Ljava/util/EnumSet;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "classnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 123
    .local v1, "r":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "classname":Ljava/lang/String;
    const-string v3, "gls-no-is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    sget-object v3, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->INITIAL_SEARCH:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    const-string v3, "gls-no-tl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    sget-object v3, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->COVER:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    const-string v3, "gls-no-bdl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    sget-object v3, Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;->BUNDLE:Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "classname":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method protected static parseMenuAction(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "actionSpec"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "actionParams":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->validateActionSpec(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    .end local v0    # "actionParams":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to parse menu action JSON"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static validateActionSpec(Lorg/json/JSONObject;)Z
    .locals 5
    .param p0, "spec"    # Lorg/json/JSONObject;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-static {p0}, Lcom/google/glass/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v0

    .line 160
    .local v0, "action":Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return v1

    .line 163
    :cond_0
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$1;->$SwitchMap$com$google$glass$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {v0}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 209
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Don\'t know how to validate params for recognized action: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :pswitch_0
    const-string v3, "value"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "READ_ALOUD action with no value: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 169
    goto :goto_0

    .line 171
    :pswitch_1
    const-string v3, "phoneNumber"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "VOICE_CALL action with no number: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 175
    goto :goto_0

    .line 177
    :pswitch_2
    const-string v3, "address"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "NAVIGATE action with no address: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_3
    const-string v3, "lat"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "NAVIGATE action with no lat: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_4
    const-string v3, "lng"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 186
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "NAVIGATE action with no lng: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 189
    goto/16 :goto_0

    .line 191
    :pswitch_3
    const-string v3, "url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "VIEW_WEB_SITE action with no url: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 195
    goto/16 :goto_0

    .line 197
    :pswitch_4
    const-string v3, "url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 198
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "PLAY_VIDEO action with no url: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 201
    goto/16 :goto_0

    .line 203
    :pswitch_5
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 204
    sget-object v3, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "CUSTOM action with no title: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 207
    goto/16 :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public abstract parseForContext(Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;Ljava/lang/String;Z)Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser$HtmlAnswerCardResults;
.end method
