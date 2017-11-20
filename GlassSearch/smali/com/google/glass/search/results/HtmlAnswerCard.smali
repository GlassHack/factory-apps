.class public Lcom/google/glass/search/results/HtmlAnswerCard;
.super Ljava/lang/Object;
.source "HtmlAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/HtmlAnswerCard$1;,
        Lcom/google/glass/search/results/HtmlAnswerCard$Builder;,
        Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;,
        Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;,
        Lcom/google/glass/search/results/HtmlAnswerCard$DisplayContext;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field actions:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public builtWithImplicitTts:Z

.field public final displayHtml:Ljava/lang/String;

.field public final ttsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;)V
    .locals 0
    .param p1, "displayHtml"    # Ljava/lang/String;
    .param p2, "ttsFormatString"    # Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "actions":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/google/glass/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/google/glass/search/results/HtmlAnswerCard;->ttsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .line 158
    iput-object p3, p0, Lcom/google/glass/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;Lcom/google/glass/search/results/HtmlAnswerCard$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/google/glass/search/results/HtmlAnswerCard$1;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/search/results/HtmlAnswerCard;-><init>(Ljava/lang/String;Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;)V

    return-void
.end method

.method public static actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    .locals 7
    .param p0, "spec"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 104
    const-string v1, ""

    .line 107
    .local v1, "actionName":Ljava/lang/String;
    :try_start_0
    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->valueOf(Ljava/lang/String;)Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Menu action spec with no \'type\' field: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Menu action spec with unrecognized \'type\' field: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static addMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "voiceMenu"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lorg/json/JSONObject;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const/4 v2, 0x0

    .line 186
    invoke-static {p2}, Lcom/google/glass/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v6

    .line 187
    .local v6, "action":Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    if-nez v6, :cond_0

    .line 188
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not adding action from invalid spec."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {v6}, Lcom/google/glass/search/results/HtmlAnswerCard;->menuItemIdFromType(Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;)I

    move-result v5

    .line 192
    .local v5, "id":I
    if-gez v5, :cond_1

    .line 193
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skipping unknown/custom action without explicit item ID."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 196
    invoke-static/range {v0 .. v5}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method public static addMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 10
    .param p0, "voiceMenu"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lorg/json/JSONObject;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    invoke-static {p2}, Lcom/google/glass/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v8

    .line 222
    .local v8, "action":Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    if-nez v8, :cond_1

    .line 223
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not adding action from invalid spec."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {p2}, Lcom/google/glass/search/results/parsers/HtmlAnswerCardParser;->validateActionSpec(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not adding menu action that failed validation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_2
    const-string v0, "hidden"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard$1;->$SwitchMap$com$google$glass$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {v8}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Don\'t know how to add validated menu action of type %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :pswitch_0
    const-string v0, "lang"

    const-string v1, "en"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, "lang":Ljava/lang/String;
    const-string v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v9}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->READ_ALOUD:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget v6, Lcom/google/glass/search/R$drawable;->ic_read_aloud_50:I

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuItem(ZLandroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;ILcom/google/android/glass/app/ContextualMenus$Command;ILjava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_3
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not adding READ_ALOUD action we can\'t read"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    .end local v9    # "lang":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static/range {p0 .. p5}, Lcom/google/glass/search/results/HtmlAnswerCard;->addVoiceCallMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-static {p1}, Lcom/google/glass/search/SearchApplication;->from(Landroid/content/Context;)Lcom/google/glass/search/SearchApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/search/SearchApplication;->isNavigationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static/range {p0 .. p5}, Lcom/google/glass/search/results/HtmlAnswerCard;->addNavigateMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 262
    :pswitch_3
    invoke-static/range {p0 .. p5}, Lcom/google/glass/search/results/HtmlAnswerCard;->addViewWebSiteMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 265
    :pswitch_4
    invoke-static/range {p0 .. p5}, Lcom/google/glass/search/results/HtmlAnswerCard;->addPlayVideoMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 268
    :pswitch_5
    const/4 v5, 0x0

    sget v6, Lcom/google/glass/search/R$drawable;->ic_gear_50:I

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuItem(ZLandroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;ILcom/google/android/glass/app/ContextualMenus$Command;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 234
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

.method static addMenuItem(ZLandroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;ILcom/google/android/glass/app/ContextualMenus$Command;ILjava/lang/String;)V
    .locals 8
    .param p0, "voiceMenu"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "spec"    # Lorg/json/JSONObject;
    .param p4, "id"    # I
    .param p5, "command"    # Lcom/google/android/glass/app/ContextualMenus$Command;
    .param p6, "standardBitmapResId"    # I
    .param p7, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/google/android/glass/app/ContextualMenus$Command;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const/16 v7, 0x46

    .line 284
    if-eqz p0, :cond_2

    .line 286
    if-nez p5, :cond_0

    .line 316
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {p5}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "itemName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 299
    .local v0, "bitmap":Landroid/graphics/drawable/Drawable;
    const-string v6, "icon"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "iconUrl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 301
    new-instance v1, Lcom/google/glass/util/IconProvider;

    invoke-direct {v1, p1, v7, v7}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;II)V

    .line 302
    .local v1, "iconProvider":Lcom/google/glass/util/IconProvider;
    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 303
    .local v4, "loadedIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 304
    move-object v0, v4

    .line 308
    .end local v1    # "iconProvider":Lcom/google/glass/util/IconProvider;
    .end local v4    # "loadedIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v6, Lcom/google/glass/widget/MenuItemDescriptor;

    invoke-direct {v6}, Lcom/google/glass/widget/MenuItemDescriptor;-><init>()V

    .line 309
    invoke-virtual {v6, p4}, Lcom/google/glass/widget/MenuItemDescriptor;->setId(I)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    .line 310
    invoke-virtual {v6, v3}, Lcom/google/glass/widget/MenuItemDescriptor;->setTitle(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    .line 311
    invoke-virtual {v6, v0}, Lcom/google/glass/widget/MenuItemDescriptor;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    .line 312
    invoke-virtual {v6, v2}, Lcom/google/glass/widget/MenuItemDescriptor;->setExtra(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    .line 313
    invoke-virtual {v6, p7}, Lcom/google/glass/widget/MenuItemDescriptor;->setDescription(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    .line 314
    invoke-virtual {v6, p5}, Lcom/google/glass/widget/MenuItemDescriptor;->setCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v7

    const-string v6, "disabled"

    .line 315
    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Lcom/google/glass/widget/MenuItemDescriptor;->setEnabled(Z)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    .line 308
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v0    # "bitmap":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v3    # "itemName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .line 293
    .local v5, "touchCommandLabel":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 294
    invoke-static {p5}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/glass/app/ContextualMenu$Item;->getTouchMenuLabelId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    :cond_3
    const-string v6, "title"

    invoke-virtual {p3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "itemName":Ljava/lang/String;
    goto :goto_1

    .line 315
    .end local v5    # "touchCommandLabel":Ljava/lang/String;
    .restart local v0    # "bitmap":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "iconUrl":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method static addNavigateMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 15
    .param p0, "voiceMenu"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lorg/json/JSONObject;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "id"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const-string v1, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, "address":Ljava/lang/String;
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 343
    .local v14, "name":Ljava/lang/String;
    const-string v1, "lat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 344
    .local v10, "lat":D
    const-string v1, "lng"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 345
    .local v12, "lng":D
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not adding NAVIGATE action with invalid spec"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string v1, "LOCATION_COORDINATES_KEY"

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v10, v2, v3

    const/4 v3, 0x1

    aput-wide v12, v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 352
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 353
    const-string v1, "LOCATION_NAME_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_1
    const-string v1, "LOCATION_ADDRESS_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v6, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget v7, Lcom/google/glass/search/R$drawable;->ic_directions_50:I

    const/4 v8, 0x0

    move v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-static/range {v1 .. v8}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuItem(ZLandroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;ILcom/google/android/glass/app/ContextualMenus$Command;ILjava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_2
    const-string v1, "LOCATION_NAME_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static addPlayVideoMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 9
    .param p0, "voiceMenu"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lorg/json/JSONObject;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "id"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not adding PLAY_VIDEO action without URL"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :goto_0
    return-void

    .line 409
    :cond_0
    const-string v0, "URL_VIDEO_KEY"

    invoke-virtual {p4, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->PLAY_VIDEO:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget v6, Lcom/google/glass/search/R$drawable;->ic_play_50:I

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuItem(ZLandroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;ILcom/google/android/glass/app/ContextualMenus$Command;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static addViewWebSiteMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 9
    .param p0, "voiceMenu"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lorg/json/JSONObject;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "id"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 375
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not adding VIEW_WEB_SITE action without URL"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string v0, "URL_KEY"

    invoke-virtual {p4, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object v7, v8

    .line 383
    .local v7, "description":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 384
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 386
    :cond_1
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->OPEN_THIS_WEBSITE:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget v6, Lcom/google/glass/search/R$drawable;->ic_world_50:I

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuItem(ZLandroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;ILcom/google/android/glass/app/ContextualMenus$Command;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static addVoiceCallMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 9
    .param p0, "voiceMenu"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spec"    # Lorg/json/JSONObject;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "id"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const-string v0, "phoneNumber"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "phoneNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not adding VOICE_CALL action without phone number"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v0, "PHONE_NUMBER_KEY"

    invoke-virtual {p4, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v5, Lcom/google/android/glass/app/ContextualMenus$Command;->CALL_THIS_NUMBER:Lcom/google/android/glass/app/ContextualMenus$Command;

    sget v6, Lcom/google/glass/search/R$drawable;->ic_phone_out_50:I

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuItem(ZLandroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;ILcom/google/android/glass/app/ContextualMenus$Command;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static makeActionOfType(Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "type"    # Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .prologue
    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v0, "spec":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static makeReadAloudActionSpec(Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "tts"    # Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .prologue
    .line 123
    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->READ_ALOUD:Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    invoke-static {v1}, Lcom/google/glass/search/results/HtmlAnswerCard;->makeActionOfType(Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    .local v0, "spec":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "value"

    iget-object v2, p0, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v1, "lang"

    iget-object v2, p0, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static menuItemIdFromType(Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;)I
    .locals 4
    .param p0, "action"    # Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard$1;->$SwitchMap$com$google$glass$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {p0}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    sget-object v1, Lcom/google/glass/search/results/HtmlAnswerCard;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Don\'t have a standard index to use with menu actions of type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v0, -0x1

    :goto_0
    :pswitch_0
    return v0

    .line 202
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 204
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 206
    :pswitch_3
    const/16 v0, 0x9

    goto :goto_0

    .line 208
    :pswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 210
    :pswitch_5
    const/16 v0, 0x11

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addMenuActionsToResults(ZLandroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "voiceMenu"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    .local p3, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    iget-object v1, p0, Lcom/google/glass/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 168
    .local v0, "spec":Lorg/json/JSONObject;
    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/glass/search/results/HtmlAnswerCard;->addMenuActionToResults(ZLandroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 170
    .end local v0    # "spec":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public getActionSpecs()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/glass/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
