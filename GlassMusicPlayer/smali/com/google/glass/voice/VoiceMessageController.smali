.class public Lcom/google/glass/voice/VoiceMessageController;
.super Lcom/google/glass/voice/VoiceInputActionController;
.source "SourceFile"


# static fields
.field public static final CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS:J = 0x1f4L

.field private static final KEY_SWIPE_TIPS_VIEW_COUNT:Ljava/lang/String; = "voice_message_swipe_tips_view_count"

.field private static final MSG_CONFIRM_SEND:I = 0x0

.field private static final SWIPE_TIPS_SHOW_DELAY_MILLIS:J = 0x3e8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final allowOmniInput:Z

.field private background:Landroid/view/ViewGroup;

.field private final context:Landroid/content/Context;

.field private currentInputMode:Lcom/google/glass/voice/InputMode;

.field private defaultInputMode:Lcom/google/glass/voice/InputMode;

.field private final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private final handler:Landroid/os/Handler;

.field private hasMultipleInputModes:Z

.field private hasSwipedBetweenInputModes:Z

.field private final isFromTimeline:Z

.field private final isReplyAll:Z

.field private final messageType:I

.field final omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private recognitionResult:Ljava/lang/String;

.field private final replyToId:Ljava/lang/String;

.field private sendConfirmed:Z

.field private sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private swipeTipLayout:Landroid/view/ViewGroup;

.field private thumbnail:Lcom/google/glass/camera/Picture;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

.field private final toId:Ljava/lang/String;

.field private final toName:Ljava/lang/String;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/google/googlex/glass/common/proto/TimelineNano$Entity;ZZ)V
    .locals 2

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionController;-><init>()V

    .line 140
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceMessageController$1;-><init>(Lcom/google/glass/voice/VoiceMessageController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceMessageController$2;-><init>(Lcom/google/glass/voice/VoiceMessageController;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    .line 219
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/google/glass/voice/VoiceMessageController;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 221
    iput-object p3, p0, Lcom/google/glass/voice/VoiceMessageController;->toId:Ljava/lang/String;

    .line 222
    iput-object p4, p0, Lcom/google/glass/voice/VoiceMessageController;->replyToId:Ljava/lang/String;

    .line 223
    iput-object p5, p0, Lcom/google/glass/voice/VoiceMessageController;->toName:Ljava/lang/String;

    .line 224
    iput-boolean p6, p0, Lcom/google/glass/voice/VoiceMessageController;->isReplyAll:Z

    .line 225
    iput p7, p0, Lcom/google/glass/voice/VoiceMessageController;->messageType:I

    .line 226
    iput-object p8, p0, Lcom/google/glass/voice/VoiceMessageController;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 227
    iput-boolean p9, p0, Lcom/google/glass/voice/VoiceMessageController;->isFromTimeline:Z

    .line 228
    iput-boolean p10, p0, Lcom/google/glass/voice/VoiceMessageController;->allowOmniInput:Z

    .line 230
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 231
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->confirmSend()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/VoiceMessageController;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->hasMultipleModes()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/VoiceMessageController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->swipeTipLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/voice/TipsViewAnimator;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/voice/SendMessageTimelineCreatorJob;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->onMessageCommitted()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, Lcom/google/glass/voice/VoiceMessageController;->getSendMessageParams(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->onFinalResult()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/VoiceMessageController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/VoiceMessageController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->replyToId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/Picture;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController;->thumbnail:Lcom/google/glass/camera/Picture;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/glass/voice/VoiceMessageController;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMessageController;->isReplyAll:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/mosaic/MosaicView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/VoiceMessageController;->showImageUrlsInMosaicView(Lcom/google/glass/mosaic/MosaicView;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceMessageController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->background:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceMessageController;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendConfirmed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceMessageController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceMessageController;->showMosaicWrapper(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceMessageController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/VoiceMessageController;)Lcom/google/glass/voice/InputMode;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->currentInputMode:Lcom/google/glass/voice/InputMode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController;->currentInputMode:Lcom/google/glass/voice/InputMode;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/glass/voice/VoiceMessageController;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceMessageController;->hasSwipedBetweenInputModes:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->applyRecipientName()V

    return-void
.end method

.method private applyRecipientName()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 855
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->applyRecipientNameContactsV2()V

    .line 856
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->header:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->crop_marks:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->background:Landroid/view/ViewGroup;

    sget v1, Lcom/google/glass/common/R$id;->mosaic_wrapper:I

    .line 860
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->background:Landroid/view/ViewGroup;

    sget v2, Lcom/google/glass/common/R$id;->mosaic:I

    .line 866
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    .line 867
    new-instance v2, Lcom/google/glass/voice/VoiceMessageController$10;

    invoke-direct {v2, p0, v1}, Lcom/google/glass/voice/VoiceMessageController$10;-><init>(Lcom/google/glass/voice/VoiceMessageController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/google/glass/mosaic/MosaicView;->setCellsLoadedListener(Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;)V

    .line 874
    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceMessageController;->showMosaicView(Lcom/google/glass/mosaic/MosaicView;)V

    goto :goto_0
.end method

.method private applyRecipientNameContactsV2()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 878
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->getSendMessageParams(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v4

    .line 879
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->message_recipient:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 881
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->isReply()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->footer:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v5, Lcom/google/glass/common/R$id;->footer:I

    invoke-virtual {v1, v5}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v1, v4, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 890
    iget-object v1, v4, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 891
    :goto_1
    iget v5, v4, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messageType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 892
    :goto_2
    if-nez v2, :cond_1

    if-nez v1, :cond_5

    .line 893
    :cond_1
    iget-object v1, v4, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->source_icon:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 900
    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->getMessagingPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMessageController;->getModeDrawableId(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)I

    move-result v1

    .line 899
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 890
    goto :goto_1

    :cond_4
    move v2, v3

    .line 891
    goto :goto_2

    .line 895
    :cond_5
    iget-object v1, v4, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public static collectReplyMosaicImageUrls(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Ljava/util/List;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 787
    invoke-static {}, Lcom/google/common/collect/Sets;->b()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 790
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 791
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 793
    iget-object v0, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 796
    :goto_0
    iget-object v4, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 797
    iget-object v4, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/google/glass/entity/EntityHelper;->getPictureUrlViaPhoneNumber(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 807
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/google/glass/entity/EntityHelper;->getPictureUrlViaEmail(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 810
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 811
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_2
    if-eqz p3, :cond_5

    .line 819
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 820
    :goto_1
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 821
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v4, v2, v0

    .line 822
    iget-object v2, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    .line 823
    :goto_2
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 824
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 820
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 831
    :cond_4
    if-eqz p2, :cond_5

    .line 832
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 833
    :goto_3
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 834
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 840
    :cond_5
    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private confirmSend()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 427
    iput-boolean v14, p0, Lcom/google/glass/voice/VoiceMessageController;->sendConfirmed:Z

    .line 432
    sget v12, Lcom/google/glass/common/R$string;->voice_message_send_confirming:I

    .line 433
    sget v11, Lcom/google/glass/common/R$string;->voice_message_send_confirmed:I

    .line 434
    sget v10, Lcom/google/glass/common/R$drawable;->ic_reply_50:I

    .line 436
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->getSendMessageParams(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v13

    .line 437
    iget v2, v13, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messageType:I

    .line 438
    new-instance v0, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    iget-object v3, v13, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toId:Ljava/lang/String;

    iget-object v4, v13, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->toName:Ljava/lang/String;

    iget-object v5, v13, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->replyToId:Ljava/lang/String;

    iget-boolean v6, v13, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->isReplyAll:Z

    .line 444
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v7

    .line 445
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/voice/VoiceMessageController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    .line 447
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->thumbnail:Lcom/google/glass/camera/Picture;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->thumbnail:Lcom/google/glass/camera/Picture;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->setPicture(Lcom/google/glass/camera/Picture;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->recognitionResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->recognitionResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->setMessage(Ljava/lang/String;)V

    .line 453
    :cond_1
    invoke-virtual {v13}, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->getMessagingPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v13}, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->getMessagingPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->setMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->start()V

    .line 457
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->notifyReadyToCreateTemporaryItem()V

    .line 458
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    .line 460
    sget v2, Lcom/google/glass/common/R$string;->voice_message_send_glassware_confirming:I

    .line 461
    sget v1, Lcom/google/glass/common/R$string;->voice_message_send_glassware_confirmed:I

    .line 462
    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    .line 476
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v3}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->hasMessageOrPicture()Z

    move-result v3

    if-nez v3, :cond_5

    .line 477
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Empty message without picture sent! Canceling."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->cancel()V

    .line 479
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMessageController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCanceled()V

    .line 503
    :goto_1
    return-void

    .line 463
    :cond_3
    if-ne v2, v14, :cond_4

    .line 465
    sget v2, Lcom/google/glass/common/R$string;->voice_message_send_email_confirming:I

    .line 466
    sget v1, Lcom/google/glass/common/R$string;->voice_message_send_email_confirmed:I

    .line 468
    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    goto :goto_0

    .line 469
    :cond_4
    const/4 v0, 0x2

    if-ne v2, v0, :cond_6

    .line 471
    sget v2, Lcom/google/glass/common/R$string;->voice_message_send_sms_confirming:I

    .line 472
    sget v1, Lcom/google/glass/common/R$string;->voice_message_send_sms_confirmed:I

    .line 473
    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    goto :goto_0

    .line 483
    :cond_5
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/voice/VoiceMessageController;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v3, v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 484
    invoke-virtual {v3, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 485
    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 486
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_done_50:I

    .line 488
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceMessageController$5;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMessageController$5;-><init>(Lcom/google/glass/voice/VoiceMessageController;)V

    .line 489
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 483
    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceMessageController;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    goto :goto_1

    :cond_6
    move v0, v10

    move v1, v11

    move v2, v12

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/voice/VoiceMessageController;
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v12, -0x1

    const/4 v1, 0x0

    .line 236
    const-string v2, "TO_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    const-string v2, "REPLY_TO_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    const-string v2, "TO_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    const-string v2, "REPLY_ALL"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 240
    const-string v2, "MESSAGE_TYPE"

    invoke-virtual {p1, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 242
    const-string v2, "ENTITY_FOR_PROFILE_PHOTO"

    .line 243
    invoke-static {p1, v2}, Lcom/google/glass/entity/EntityUtils;->getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v8

    .line 244
    const-string v2, "trigger_method"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v9, 0x8

    if-ne v2, v9, :cond_3

    move v9, v0

    .line 247
    :goto_0
    const-string v2, "allow_omni_input"

    .line 248
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 251
    const-string v2, "trigger_method"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    sget-object v2, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Missing trigger method extra in intent, bailing: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-interface {v2, v11, v0}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_0
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 257
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "One of the extras TO_ID or REPLY_TO_ID should be specified"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    if-ne v7, v12, :cond_2

    .line 265
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "The MESSAGE_TYPE extra must be specified when specifying a TO_ID"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_2
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/glass/voice/VoiceMessageController;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/google/googlex/glass/common/proto/TimelineNano$Entity;ZZ)V

    return-object v0

    :cond_3
    move v9, v1

    .line 244
    goto :goto_0

    .line 258
    :cond_4
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 259
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Only one of the extras TO_ID or REPLY_TO_ID should be specified"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private createInputMode(ZLcom/google/glass/voice/VoiceMessageController$SendMessageParams;)Lcom/google/glass/voice/InputMode;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 640
    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->createDefaultInputMode()Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->voice_message_recipient_footer:I

    .line 641
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setLayoutId(I)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    .line 642
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/common/R$string;->open_ended_decorator_send_a_message:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/common/R$string;->voice_label_send_a_message:I

    .line 644
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 643
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    .line 645
    invoke-virtual {v0, v6}, Lcom/google/glass/voice/InputMode;->setPlayVoiceResultSound(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    .line 646
    invoke-virtual {v0, v7}, Lcom/google/glass/voice/InputMode;->setShowProgressOnRecognitionResult(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    .line 647
    invoke-virtual {v0, v6}, Lcom/google/glass/voice/InputMode;->setShowGracePeriodAfterRecognitionResults(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/LongInputEventReceiver;

    invoke-direct {v1}, Lcom/google/glass/voice/LongInputEventReceiver;-><init>()V

    .line 648
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceMessageController$7;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMessageController$7;-><init>(Lcom/google/glass/voice/VoiceMessageController;)V

    .line 649
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    const/4 v1, 0x2

    .line 661
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/InputMode;->setLoggingType(I)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 663
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    if-eqz p1, :cond_1

    sget v0, Lcom/google/glass/common/R$string;->voice_message_speak_message_or_take_a_photo:I

    .line 664
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/InputMode;->setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    .line 667
    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->enableOmniInput()Lcom/google/glass/voice/InputMode;

    .line 671
    :cond_0
    invoke-virtual {v1, p2}, Lcom/google/glass/voice/InputMode;->setId(Ljava/lang/Object;)Lcom/google/glass/voice/InputMode;

    .line 672
    return-object v1

    .line 663
    :cond_1
    sget v0, Lcom/google/glass/common/R$string;->voice_message_speak_message:I

    goto :goto_0
.end method

.method private defaultMessageModeFirst()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 622
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController$6;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceMessageController$6;-><init>(Lcom/google/glass/voice/VoiceMessageController;)V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method static fadeIn(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 390
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method static fadeOut(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 399
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceMessageController$4;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMessageController$4;-><init>(Landroid/view/View;)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private static getModeDrawableId(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)I
    .locals 2

    .prologue
    .line 904
    if-nez p0, :cond_0

    .line 906
    sget v0, Lcom/google/glass/common/R$drawable;->ic_hangout_30:I

    .line 914
    :goto_0
    return v0

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_30:I

    goto :goto_0

    .line 911
    :cond_1
    sget-object v0, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    sget v0, Lcom/google/glass/common/R$drawable;->ic_mail_30:I

    goto :goto_0

    .line 914
    :cond_2
    sget v0, Lcom/google/glass/common/R$drawable;->ic_hangout_30:I

    goto :goto_0
.end method

.method private static getSendMessageParams(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/google/glass/voice/InputMode;->getId()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    return-object v0
.end method

.method private getSwipeTipId()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMessageController;->getInputModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->getSendMessageParams(Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    move-result-object v0

    iget v0, v0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;->messageType:I

    .line 326
    packed-switch v0, :pswitch_data_0

    .line 336
    :pswitch_0
    sget-object v1, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown message type for swipe tip; [nextCardMessageType=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 336
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    sget v0, Lcom/google/glass/common/R$string;->voice_message_swipe_to_change_medium:I

    :goto_0
    return v0

    .line 328
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$string;->voice_message_swipe_to_email:I

    goto :goto_0

    .line 330
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$string;->voice_message_swipe_to_hangouts:I

    goto :goto_0

    .line 332
    :pswitch_3
    sget v0, Lcom/google/glass/common/R$string;->voice_message_swipe_to_SMS:I

    goto :goto_0

    .line 334
    :pswitch_4
    sget v0, Lcom/google/glass/common/R$string;->voice_message_swipe_to_change_medium:I

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private hasMultipleModes()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 343
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v1}, Lcom/google/glass/voice/OpenEndedInputController;->getInputModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCancelTip()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->cancel_tip:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 387
    return-void
.end method

.method private isGmailGlasswareEnabled()Z
    .locals 2

    .prologue
    .line 612
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->isMirrorGlasswareEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHangoutsGlasswareEnabled()Z
    .locals 2

    .prologue
    .line 607
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->isMirrorGlasswareEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isReply()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->replyToId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsAvailable()Z
    .locals 1

    .prologue
    .line 617
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v0

    return v0
.end method

.method private onFinalResult()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getSanitizedRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->recognitionResult:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void
.end method

.method private onMessageCommitted()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 510
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMessageController;->hasMultipleInputModes:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->defaultInputMode:Lcom/google/glass/voice/InputMode;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController;->currentInputMode:Lcom/google/glass/voice/InputMode;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 512
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_MULTIPLE_INPUT_MODES:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "swiped"

    iget-boolean v6, p0, Lcom/google/glass/voice/VoiceMessageController;->hasSwipedBetweenInputModes:Z

    .line 514
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "used_default"

    aput-object v8, v7, v2

    .line 515
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v1

    .line 513
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-virtual {v3, v4, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->notifyReadyToUpdateToFinalItem()V

    .line 519
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_1

    .line 523
    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v2, v3, v1}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceMessageController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    .line 528
    return-void

    :cond_2
    move v0, v2

    .line 511
    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->cancelIfNotFinished()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->hideCancelTip()V

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->recognitionResult:Ljava/lang/String;

    .line 369
    return-void
.end method

.method private showImageUrlsInMosaicView(Lcom/google/glass/mosaic/MosaicView;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 847
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    sget-object v2, Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 848
    invoke-static {p2, v2, v3, v1}, Lcom/google/glass/mosaic/ImageLoaders;->forImageUrls(Ljava/util/List;Lcom/google/glass/deferredcontent/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v2

    .line 850
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/CachedBitmapFactory;

    const/4 v3, 0x0

    .line 848
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    .line 847
    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Ljava/util/List;)V

    .line 851
    return-void
.end method

.method private showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/google/glass/widget/MessageDialogManager$Provider;->getInstance()Lcom/google/glass/widget/MessageDialogManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialogManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialogManager;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 507
    return-void
.end method

.method private showMosaicView(Lcom/google/glass/mosaic/MosaicView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 681
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 682
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 683
    sget-object v1, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Showing image urls from passed in entity."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceMessageController;->showImageUrlsInMosaicView(Lcom/google/glass/mosaic/MosaicView;Ljava/util/List;)V

    .line 709
    :goto_0
    :pswitch_0
    return-void

    .line 687
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Looking up image urls based on message type (%s) and toId (%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/voice/VoiceMessageController;->messageType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/voice/VoiceMessageController;->toId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    iget v0, p0, Lcom/google/glass/voice/VoiceMessageController;->messageType:I

    packed-switch v0, :pswitch_data_0

    .line 706
    :pswitch_1
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "messageType did not match any of the expected types"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 695
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceMessageController;->createMatchEntityTask(Lcom/google/glass/mosaic/MosaicView;)Lcom/google/glass/entity/MatchEntity;

    move-result-object v0

    .line 696
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/entity/MatchEntity;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 703
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceMessageController;->showMosaicViewForTimelineItemReply(Lcom/google/glass/mosaic/MosaicView;)V

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private showMosaicViewForTimelineItemReply(Lcom/google/glass/mosaic/MosaicView;)V
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->replyToId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 756
    :cond_0
    new-instance v1, Lcom/google/glass/voice/VoiceMessageController$9;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceMessageController$9;-><init>(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/mosaic/MosaicView;)V

    .line 780
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 779
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/voice/VoiceMessageController$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showMosaicWrapper(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 353
    return-void
.end method


# virtual methods
.method public createMatchEntityTask(Lcom/google/glass/mosaic/MosaicView;)Lcom/google/glass/entity/MatchEntity;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 716
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController$8;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/voice/VoiceMessageController$8;-><init>(Lcom/google/glass/voice/VoiceMessageController;Landroid/content/Context;Lcom/google/glass/mosaic/MosaicView;)V

    .line 737
    iget v1, p0, Lcom/google/glass/voice/VoiceMessageController;->messageType:I

    packed-switch v1, :pswitch_data_0

    .line 743
    :goto_0
    return-object v0

    .line 739
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/MatchEntity;->setEmailAddress(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;

    goto :goto_0

    .line 742
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/MatchEntity;->addPhoneNumber(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCreatorJob()Lcom/google/glass/voice/SendMessageTimelineCreatorJob;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    return-object v0
.end method

.method public getInputModes()Ljava/util/List;
    .locals 13

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->isReply()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceMessageController;->isFromTimeline:Z

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    const/4 v0, 0x1

    new-array v7, v0, [Lcom/google/glass/voice/InputMode;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/google/glass/voice/VoiceMessageController;->allowOmniInput:Z

    new-instance v0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    iget v1, p0, Lcom/google/glass/voice/VoiceMessageController;->messageType:I

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController;->toId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController;->toName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/voice/VoiceMessageController;->replyToId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/glass/voice/VoiceMessageController;->isReplyAll:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V

    invoke-direct {p0, v9, v0}, Lcom/google/glass/voice/VoiceMessageController;->createInputMode(ZLcom/google/glass/voice/VoiceMessageController$SendMessageParams;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    .line 546
    :cond_1
    iget-object v10, p0, Lcom/google/glass/voice/VoiceMessageController;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 547
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v8

    .line 548
    iget-object v0, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 549
    iget-object v11, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v12, v11

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v12, :cond_8

    aget-object v6, v11, v9

    .line 551
    invoke-static {v6}, Lcom/google/glass/entity/EntityUtils;->isHangoutPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z

    move-result v0

    .line 552
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->isHangoutsGlasswareEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 553
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Hangouts persona present for Entity, but Hangouts is not available."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :goto_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 558
    :cond_2
    const/4 v1, 0x3

    .line 559
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v10}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 563
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->isSmsAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 564
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Phone number present for Entity, but SMS is not available."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 567
    :cond_3
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->MMS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    .line 568
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 569
    const/4 v1, 0x2

    move v7, v0

    .line 578
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 582
    :cond_4
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V

    .line 585
    invoke-direct {p0, v7, v0}, Lcom/google/glass/voice/VoiceMessageController;->createInputMode(ZLcom/google/glass/voice/VoiceMessageController$SendMessageParams;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 570
    :cond_5
    sget-object v4, Lcom/google/glass/entity/EntityUtils;->GMAIL_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 571
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->isGmailGlasswareEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 572
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Email persona present for Entity, but GMail is not available."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 575
    :cond_6
    const/4 v1, 0x1

    .line 576
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v2

    move v7, v0

    goto :goto_3

    .line 587
    :cond_7
    invoke-static {v10}, Lcom/google/glass/entity/EntityUtils;->isHangoutEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 588
    const/4 v7, 0x1

    .line 589
    new-instance v0, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;

    const/4 v1, 0x3

    .line 590
    invoke-static {v10}, Lcom/google/glass/entity/EntityUtils;->getEntityGuid(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/VoiceMessageController$SendMessageParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)V

    .line 589
    invoke-direct {p0, v7, v0}, Lcom/google/glass/voice/VoiceMessageController;->createInputMode(ZLcom/google/glass/voice/VoiceMessageController$SendMessageParams;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->defaultMessageModeFirst()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceMessageController;->hasMultipleInputModes:Z

    .line 600
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputMode;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->defaultInputMode:Lcom/google/glass/voice/InputMode;

    .line 601
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->defaultInputMode:Lcom/google/glass/voice/InputMode;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->currentInputMode:Lcom/google/glass/voice/InputMode;

    :cond_9
    move-object v0, v8

    .line 603
    goto/16 :goto_0

    .line 593
    :cond_a
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No input modes available for to-entity."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    move v7, v0

    goto/16 :goto_3
.end method

.method public getOmniInputListener()Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    return-object v0
.end method

.method protected hideSwipeTip()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightTip()V

    .line 677
    return-void
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->reset()V

    .line 374
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onBack()Z

    move-result v0

    return v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onDismissAction()V
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/google/glass/voice/VoiceMessageController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->reset()V

    .line 360
    return-void
.end method

.method public onPrepareAction()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->setOmniInputListener(Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;)Lcom/google/glass/voice/OpenEndedInputController;

    .line 283
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    new-instance v1, Lcom/google/glass/voice/VoiceMessageController$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceMessageController$3;-><init>(Lcom/google/glass/voice/VoiceMessageController;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->setInputModeChangeListener(Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;)Lcom/google/glass/voice/OpenEndedInputController;

    .line 304
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->mosaic_wrapper:I

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 305
    invoke-virtual {v2}, Lcom/google/glass/voice/OpenEndedInputController;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->background:Landroid/view/ViewGroup;

    .line 306
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->background:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 308
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->voice_message_swipe_tip:I

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    .line 309
    invoke-virtual {v2}, Lcom/google/glass/voice/OpenEndedInputController;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 308
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->swipeTipLayout:Landroid/view/ViewGroup;

    .line 310
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->swipeTipLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->swipeTipLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/google/glass/common/R$id;->swipe_forward_tip:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TipsView;

    .line 313
    new-instance v0, Lcom/google/glass/voice/TipsViewAnimator;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMessageController;->swipeTipLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/google/glass/common/R$id;->swipe_forward_tip_gradient:I

    .line 315
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "voice_message_swipe_tips_view_count"

    const-wide/16 v5, 0x3e8

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/TipsViewAnimator;-><init>(Landroid/content/Context;Lcom/google/glass/widget/TipsView;Landroid/view/View;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->tipsViewAnimator:Lcom/google/glass/voice/TipsViewAnimator;

    .line 318
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->hasMultipleModes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceMessageController;->getSwipeTipId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/TipsView;->setTip(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->isTakingPicture()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController;->sendMessageCreatorJob:Lcom/google/glass/voice/SendMessageTimelineCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/voice/SendMessageTimelineCreatorJob;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
