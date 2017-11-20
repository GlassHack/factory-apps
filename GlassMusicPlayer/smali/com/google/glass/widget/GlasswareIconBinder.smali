.class public Lcom/google/glass/widget/GlasswareIconBinder;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    if-eqz p2, :cond_0

    .line 60
    sget v0, Lcom/google/glass/common/R$id;->glassware_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 61
    if-nez v9, :cond_2

    .line 62
    sget-object v0, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "View does not contain expected glassware icon view"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 71
    :goto_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    .line 72
    :goto_2
    iget-object v4, p0, Lcom/google/glass/widget/GlasswareIconBinder;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v4}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v4

    .line 74
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 106
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 107
    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 70
    goto :goto_1

    :cond_4
    move v3, v2

    .line 71
    goto :goto_2

    .line 77
    :pswitch_0
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 79
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v7, v0

    .line 120
    :cond_5
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;

    .line 122
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    .line 123
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v3

    sget-object v4, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    .line 125
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    .line 126
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v6}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->getIoTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    sget-object v8, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    .line 130
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 133
    sget v1, Lcom/google/glass/common/R$id;->tag_loading_task:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 81
    :cond_6
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 87
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$drawable;->ic_email_50:I

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 92
    :pswitch_2
    if-eqz v4, :cond_7

    .line 93
    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 96
    :cond_7
    if-eqz v0, :cond_8

    .line 97
    sget v0, Lcom/google/glass/common/R$drawable;->ic_email_50:I

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 100
    :cond_8
    sget-object v0, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No companion device or email for entity with SMS messaging preference [entityId=%s]."

    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 100
    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 110
    :cond_9
    if-eqz v0, :cond_a

    .line 111
    sget v0, Lcom/google/glass/common/R$drawable;->ic_email_50:I

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 114
    :cond_a
    sget-object v0, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No companion device or email for entity with default messaging preference [entityId=%s]."

    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 114
    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recycle(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget v0, Lcom/google/glass/common/R$id;->tag_loading_task:I

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;->cancel(Z)V

    .line 150
    sget v0, Lcom/google/glass/common/R$id;->tag_loading_task:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
