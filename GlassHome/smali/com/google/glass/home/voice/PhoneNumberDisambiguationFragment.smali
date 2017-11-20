.class public Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;
.super Lcom/google/glass/entity/EntityListFragment;
.source "PhoneNumberDisambiguationFragment.java"


# instance fields
.field private final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private firstTipsView:Lcom/google/glass/widget/TipsView;

.field private gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

.field private final hasUserStartedSwiping:Z

.field private final phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 5
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListFragment;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->phoneNumbers:Ljava/util/List;

    .line 34
    iput-boolean v1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->hasUserStartedSwiping:Z

    .line 41
    iput-object p1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 42
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 43
    .local v0, "mp":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasPhoneNumberPersona()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->hasPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->phoneNumbers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "mp":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->dialCurrentPhoneNumber()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getPhoneNumberLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;Lcom/google/glass/widget/TipsView;)Lcom/google/glass/widget/TipsView;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;
    .param p1, "x1"    # Lcom/google/glass/widget/TipsView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->firstTipsView:Lcom/google/glass/widget/TipsView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method private cancelGracePeriod()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$GracePeriod;->cancel()V

    .line 130
    :cond_0
    return-void
.end method

.method private dialCurrentPhoneNumber()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->phoneNumbers:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getCardScrollView()Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 134
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "phoneNumber":Ljava/lang/String;
    new-instance v1, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Landroid/content/Context;Ljava/lang/String;)Z

    .line 136
    return-void
.end method

.method private getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->phoneNumbers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 140
    .local v0, "mp":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneNumberLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->phoneNumbers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 145
    .local v0, "mp":Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPhoneNumberPersona()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona$PhoneNumberPersona;->getLabel()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 154
    sget v1, Lcom/google/glass/home/R$string;->phone_number_other_label:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 147
    :pswitch_0
    sget v1, Lcom/google/glass/home/R$string;->phone_number_home_label:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 149
    :pswitch_1
    sget v1, Lcom/google/glass/home/R$string;->phone_number_mobile_label:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :pswitch_2
    sget v1, Lcom/google/glass/home/R$string;->phone_number_work_label:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$2;-><init>(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->dialCurrentPhoneNumber()V

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->cancelGracePeriod()V

    .line 63
    invoke-super {p0}, Lcom/google/glass/entity/EntityListFragment;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/glass/entity/EntityListFragment;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getCardScrollView()Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/glass/widget/Slider;->from(Landroid/view/View;)Lcom/google/android/glass/widget/Slider;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$1;-><init>(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/Slider;->startGracePeriod(Ljava/lang/Runnable;)Lcom/google/android/glass/widget/Slider$GracePeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->gracePeriod:Lcom/google/android/glass/widget/Slider$GracePeriod;

    .line 58
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 2
    .param p1, "scrollPosition"    # F

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->onScrollPositionChanged(F)V

    .line 75
    invoke-direct {p0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->cancelGracePeriod()V

    .line 76
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->firstTipsView:Lcom/google/glass/widget/TipsView;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->getPhoneNumberLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setTip(Ljava/lang/String;)V

    .line 78
    return-void
.end method
