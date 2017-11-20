.class public Lcom/google/glass/widget/GlasswareIconBinder;
.super Ljava/lang/Object;
.source "GlasswareIconBinder.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .param p1, "companionProxy"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/glass/widget/GlasswareIconBinder;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 39
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/view/View;)V
    .locals 15
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 50
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/glass/entity/EntityUtils;->getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "projectId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    if-eqz p2, :cond_0

    .line 60
    sget v3, Lcom/google/glass/common/R$id;->glassware_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 61
    .local v10, "iconView":Landroid/widget/ImageView;
    if-nez v10, :cond_2

    .line 62
    sget-object v3, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "View does not contain expected glassware icon view"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v11, 0x1

    .line 71
    .local v11, "hasEmail":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v12, 0x1

    .line 72
    .local v12, "hasPhoneNumber":Z
    :goto_2
    iget-object v3, p0, Lcom/google/glass/widget/GlasswareIconBinder;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v3}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v13

    .line 74
    .local v13, "isSmsEnabled":Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 106
    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    .line 107
    sget v3, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 70
    .end local v11    # "hasEmail":Z
    .end local v12    # "hasPhoneNumber":Z
    .end local v13    # "isSmsEnabled":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 71
    .restart local v11    # "hasEmail":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 77
    .restart local v12    # "hasPhoneNumber":Z
    .restart local v13    # "isSmsEnabled":Z
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v14

    .line 78
    .local v14, "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasSource()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 79
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "api:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 80
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "api:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    .end local v11    # "hasEmail":Z
    .end local v12    # "hasPhoneNumber":Z
    .end local v13    # "isSmsEnabled":Z
    .end local v14    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 121
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;

    .line 122
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    .line 123
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v4

    sget-object v5, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    .line 125
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    .line 126
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v7}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->getIoTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    sget-object v9, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    invoke-direct/range {v1 .. v10}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    .line 130
    .local v1, "glasswareIconLoadingTask":Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v3, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 133
    sget v3, Lcom/google/glass/common/R$id;->tag_loading_task:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 81
    .end local v1    # "glasswareIconLoadingTask":Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;
    .end local v2    # "context":Landroid/content/Context;
    .restart local v11    # "hasEmail":Z
    .restart local v12    # "hasPhoneNumber":Z
    .restart local v13    # "isSmsEnabled":Z
    .restart local v14    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_6
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 87
    .end local v14    # "persona":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :pswitch_1
    sget v3, Lcom/google/glass/common/R$drawable;->ic_email_50:I

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 92
    :pswitch_2
    if-eqz v13, :cond_7

    .line 93
    sget v3, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 96
    :cond_7
    if-eqz v11, :cond_8

    .line 97
    sget v3, Lcom/google/glass/common/R$drawable;->ic_email_50:I

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 100
    :cond_8
    sget-object v3, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No companion device or email for entity with SMS messaging preference [entityId=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 100
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 110
    :cond_9
    if-eqz v11, :cond_a

    .line 111
    sget v3, Lcom/google/glass/common/R$drawable;->ic_email_50:I

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 114
    :cond_a
    sget-object v3, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No companion device or email for entity with default messaging preference [entityId=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 114
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recycle(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget v1, Lcom/google/glass/common/R$id;->tag_loading_task:I

    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;

    .line 148
    .local v0, "glasswareIconLoadingTask":Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->cancel(Z)V

    .line 150
    sget v1, Lcom/google/glass/common/R$id;->tag_loading_task:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
