.class public Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;
.super Ljava/lang/Object;
.source "WebAnswerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultMenuActionImplementations"
.end annotation


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final selectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

.field final synthetic this$0:Lcom/google/glass/search/results/WebAnswerView;


# direct methods
.method private constructor <init>(Lcom/google/glass/search/results/WebAnswerView;)V
    .locals 6
    .param p1, "this$0"    # Lcom/google/glass/search/results/WebAnswerView;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {p1}, Lcom/google/glass/search/results/WebAnswerView;->access$100(Lcom/google/glass/search/results/WebAnswerView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->activity:Lcom/google/glass/app/GlassActivity;

    .line 544
    new-instance v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->activity:Lcom/google/glass/app/GlassActivity;

    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/google/glass/voice/VoiceAnnotationHelper;

    iget-object v5, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {v4, v5}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V

    iput-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->selectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    .line 546
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/search/results/WebAnswerView;Lcom/google/glass/search/results/WebAnswerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p2, "x1"    # Lcom/google/glass/search/results/WebAnswerView$1;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;-><init>(Lcom/google/glass/search/results/WebAnswerView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;)Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->selectionHandler:Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;)Lcom/google/glass/app/GlassActivity;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method


# virtual methods
.method public getDefaultBehaviorForMenuAction(Lorg/json/JSONObject;)Ljava/lang/Runnable;
    .locals 12
    .param p1, "spec"    # Lorg/json/JSONObject;

    .prologue
    .line 549
    invoke-static {p1}, Lcom/google/glass/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v0

    .line 551
    .local v0, "action":Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;
    :try_start_0
    sget-object v8, Lcom/google/glass/search/results/WebAnswerView$1;->$SwitchMap$com$google$glass$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {v0}, Lcom/google/glass/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 614
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Don\'t know how to implement default behavior for action %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    :goto_0
    const/4 v8, 0x0

    :goto_1
    return-object v8

    .line 553
    :pswitch_0
    const-string v8, "value"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, "value":Ljava/lang/String;
    const-string v8, "lang"

    const-string v9, "en"

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "lang":Ljava/lang/String;
    new-instance v8, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;

    invoke-direct {v8, p0, v5, v2}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;-><init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 617
    .end local v2    # "lang":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/google/glass/search/results/WebAnswerView;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Couldn\'t invoke default behavior for invalid action\n%s\n%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 562
    .end local v1    # "e":Lorg/json/JSONException;
    :pswitch_1
    :try_start_1
    const-string v8, "phoneNumber"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "phoneNumber":Ljava/lang/String;
    new-instance v8, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$2;

    invoke-direct {v8, p0, v4}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$2;-><init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Ljava/lang/String;)V

    goto :goto_1

    .line 570
    .end local v4    # "phoneNumber":Ljava/lang/String;
    :pswitch_2
    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    .line 571
    .local v3, "location":Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    const-string v8, "lat"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 572
    const-string v8, "lng"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 573
    const-string v8, "name"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 574
    const-string v8, "name"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 576
    :cond_0
    const-string v8, "address"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 577
    const-string v8, "address"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 579
    :cond_1
    new-instance v8, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$3;

    invoke-direct {v8, p0, v3}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$3;-><init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)V

    goto :goto_1

    .line 592
    .end local v3    # "location":Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    :pswitch_3
    const-string v8, "url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/browser/BrowserHelper;->formatBrowserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "webSiteUrl":Ljava/lang/String;
    new-instance v8, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$4;

    invoke-direct {v8, p0, v7}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$4;-><init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 600
    .end local v7    # "webSiteUrl":Ljava/lang/String;
    :pswitch_4
    const-string v8, "url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "videoUrl":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 602
    new-instance v8, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$5;

    invoke-direct {v8, p0, v6}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$5;-><init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 609
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 612
    .end local v6    # "videoUrl":Ljava/lang/String;
    :pswitch_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 551
    nop

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
