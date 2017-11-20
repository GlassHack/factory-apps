.class Lcom/google/glass/setup/SetupFlowController;
.super Ljava/lang/Object;
.source "SetupFlowController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/SetupFlowController$6;,
        Lcom/google/glass/setup/SetupFlowController$Transition;,
        Lcom/google/glass/setup/SetupFlowController$SetupMethod;,
        Lcom/google/glass/setup/SetupFlowController$State;,
        Lcom/google/glass/setup/SetupFlowController$CallBack;
    }
.end annotation


# static fields
.field private static final AUTO_ADVANCE_DURATION_MS:I = 0x5dc

.field private static final SLEEP_DELAY_MS:I = 0x1f4

.field private static final SLEEP_DURATION_MS:I = 0x1f4

.field private static final SUCCESSFUL_TETHERED_DURATION_MS:I = 0x5dc

.field static final TRANSITION_DIRECTION_BACKWARD:I = -0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TRANSITION_DIRECTION_FORWARD:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

.field private currentState:Lcom/google/glass/setup/SetupFlowController$State;

.field private final localeSelectionAdapter:Lcom/google/glass/setup/LocaleSelectionAdapter;

.field private final phoneSelectionAdapter:Lcom/google/glass/setup/PhoneSelectionAdapter;

.field private selectedLocale:Ljava/util/Locale;

.field private final stackView:Lcom/google/glass/setup/SetupStackView;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/SetupFlowController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/setup/SetupFlowController$CallBack;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 3
    .param p1, "callBack"    # Lcom/google/glass/setup/SetupFlowController$CallBack;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    .line 204
    iput-object p2, p0, Lcom/google/glass/setup/SetupFlowController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 206
    invoke-interface {p1}, Lcom/google/glass/setup/SetupFlowController$CallBack;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 207
    .local v0, "container":Landroid/view/ViewGroup;
    sget v1, Lcom/google/glass/setup/R$id;->stackView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/setup/SetupStackView;

    iput-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    .line 209
    new-instance v1, Lcom/google/glass/setup/PhoneSelectionAdapter;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/setup/PhoneSelectionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->phoneSelectionAdapter:Lcom/google/glass/setup/PhoneSelectionAdapter;

    .line 210
    new-instance v1, Lcom/google/glass/setup/LocaleSelectionAdapter;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/setup/LocaleSelectionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->localeSelectionAdapter:Lcom/google/glass/setup/LocaleSelectionAdapter;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/setup/SetupFlowController;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/SetupFlowController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupFlowController;->setHintViewVisible(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/setup/SetupFlowController;)Lcom/google/glass/setup/SetupFlowController$CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupFlowController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/setup/SetupFlowController;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/SetupFlowController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController;->selectedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/setup/SetupFlowController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private handleClick(I)Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 633
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$6;->$SwitchMap$com$google$glass$setup$SetupFlowController$State:[I

    iget-object v2, p0, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupFlowController$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 697
    :pswitch_0
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    return-object v1

    .line 635
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->phoneSelectionAdapter:Lcom/google/glass/setup/PhoneSelectionAdapter;

    invoke-virtual {v1, p1}, Lcom/google/glass/setup/PhoneSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .line 636
    .local v0, "setupMethod":Lcom/google/glass/setup/SetupFlowController$SetupMethod;
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$6;->$SwitchMap$com$google$glass$setup$SetupFlowController$SetupMethod:[I

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 658
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 638
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "a"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 640
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->WAIT_FOR_COMPANION:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 641
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v1, v0}, Lcom/google/glass/setup/SetupFlowController$CallBack;->onPrepareForSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 644
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "i"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 646
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->IOS_WAIT_FOR_PAIRING:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 647
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v1, v0}, Lcom/google/glass/setup/SetupFlowController$CallBack;->onPrepareForSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 650
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->OOBE_PAIRING_METHOD_CHOSEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "c"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 652
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->VISIT_WEB_SITE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 653
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 655
    :pswitch_5
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SETUP_HELP:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 656
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 660
    .end local v0    # "setupMethod":Lcom/google/glass/setup/SetupFlowController$SetupMethod;
    :pswitch_6
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->POST_TAP:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 661
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0

    .line 663
    :pswitch_7
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_PASSED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 664
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->START_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->CLEAR_AND_PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 665
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 667
    :pswitch_8
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 668
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 670
    :pswitch_9
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SHOW_DEVICE_ID:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 671
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 673
    :pswitch_a
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->PRE_SCAN_QR_CODE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 674
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 676
    :pswitch_b
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->COMPUTER:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v1, v2}, Lcom/google/glass/setup/SetupFlowController$CallBack;->onPrepareForSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)Z

    .line 677
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 680
    :pswitch_c
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->COMPUTER:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v1, v2}, Lcom/google/glass/setup/SetupFlowController$CallBack;->onPrepareForSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)Z

    .line 681
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 683
    :pswitch_d
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v1}, Lcom/google/glass/setup/SetupFlowController$CallBack;->startBarcodeScanner()V

    .line 684
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 686
    :pswitch_e
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_SELECT_LOCALE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 687
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 689
    :pswitch_f
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->localeSelectionAdapter:Lcom/google/glass/setup/LocaleSelectionAdapter;

    invoke-virtual {v1, p1}, Lcom/google/glass/setup/LocaleSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    iget-object v1, v1, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->selectedLocale:Ljava/util/Locale;

    .line 690
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_CONFIRM:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 691
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 694
    :pswitch_10
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_SELECT_LOCALE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    .line 695
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    goto/16 :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 636
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "highlight"    # Ljava/lang/String;
    .param p3, "highlightColorArgb"    # I

    .prologue
    .line 796
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 797
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 798
    .local v1, "start":I
    if-ltz v1, :cond_0

    .line 799
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 801
    :cond_0
    return-object v0
.end method

.method private pushView()V
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v1

    .line 220
    .local v1, "topView":Lcom/google/glass/setup/SetupCardScrollView;
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/google/glass/setup/SetupCardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/setup/SetupFlowController;->stopVideoInCard(Landroid/view/View;)V

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupStackView;->pushView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v0

    .line 225
    .local v0, "scrollView":Lcom/google/glass/setup/SetupCardScrollView;
    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupCardScrollView;->setOnSettledAfterSwipeListener(Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;)V

    .line 226
    invoke-virtual {v0, p0}, Lcom/google/glass/setup/SetupCardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    iget-object v2, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v2}, Lcom/google/glass/setup/SetupFlowController$CallBack;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/setup/SetupCardScrollView;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 228
    return-void
.end method

.method private setHintViewVisible(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 260
    sget v1, Lcom/google/glass/setup/R$id;->hintView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "hintView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    return-void
.end method

.method private setupRotateInstruction(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
    .param p3, "direction"    # I

    .prologue
    .line 231
    iget-object v2, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v0

    .line 232
    .local v0, "scrollView":Lcom/google/glass/setup/SetupCardScrollView;
    sget v2, Lcom/google/glass/setup/R$id;->postSwipeForwardInstruction:I

    .line 233
    invoke-virtual {v0, v2}, Lcom/google/glass/setup/SetupCardScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 234
    .local v1, "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v1}, Lcom/google/glass/widget/SmoothRotatingTextView;->clearAllMessages()V

    .line 238
    if-lez p3, :cond_0

    .line 239
    sget v2, Lcom/google/glass/setup/R$style;->LargeOverlayText:I

    sget v3, Lcom/google/glass/setup/R$drawable;->ic_done_50:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;II)V

    .line 242
    :cond_0
    sget v2, Lcom/google/glass/setup/R$style;->MediumOverlayText:I

    invoke-virtual {v1, p2, v2}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;I)V

    .line 243
    new-instance v2, Lcom/google/glass/setup/SetupFlowController$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/glass/setup/SetupFlowController$1;-><init>(Lcom/google/glass/setup/SetupFlowController;Lcom/google/glass/widget/SmoothRotatingTextView;Lcom/google/glass/setup/SetupCardScrollView;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SmoothRotatingTextView;->setTextRotationAnimation(Lcom/google/glass/widget/SmoothRotatingTextView$TextRotationAnimation;)V

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/SmoothRotatingTextView;->setRepeat(Z)V

    .line 257
    :cond_1
    return-void
.end method

.method private startVideoInCard(Landroid/view/View;)V
    .locals 2
    .param p1, "card"    # Landroid/view/View;

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 611
    sget v1, Lcom/google/glass/setup/R$id;->videoView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/GlassVideoView;

    .line 612
    .local v0, "videoView":Lcom/google/glass/widget/GlassVideoView;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->start()V

    .line 616
    .end local v0    # "videoView":Lcom/google/glass/widget/GlassVideoView;
    :cond_0
    return-void
.end method

.method private stopVideoInCard(Landroid/view/View;)V
    .locals 2
    .param p1, "card"    # Landroid/view/View;

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 620
    sget v1, Lcom/google/glass/setup/R$id;->videoView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/GlassVideoView;

    .line 621
    .local v0, "videoView":Lcom/google/glass/widget/GlassVideoView;
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->stop()V

    .line 625
    .end local v0    # "videoView":Lcom/google/glass/widget/GlassVideoView;
    :cond_0
    return-void
.end method

.method private switchView(I)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 566
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/setup/SetupFlowController;->switchViews(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private switchViews(II)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextViewId"    # I

    .prologue
    const/4 v0, -0x1

    .line 570
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/google/glass/setup/SetupFlowController;->switchViews(IIII)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private switchViews(IIII)Landroid/view/View;
    .locals 3
    .param p1, "prevViewId"    # I
    .param p2, "viewId"    # I
    .param p3, "nextViewId"    # I
    .param p4, "direction"    # I

    .prologue
    .line 576
    iget-object v2, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/google/glass/setup/SetupFlowController;->pushView()V

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v2}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v1

    .line 580
    .local v1, "scrollView":Lcom/google/glass/setup/SetupCardScrollView;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/glass/setup/SetupCardScrollView;->setViews(IIII)V

    .line 582
    invoke-virtual {v1}, Lcom/google/glass/setup/SetupCardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 583
    .local v0, "curView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/glass/setup/SetupFlowController;->startVideoInCard(Landroid/view/View;)V

    .line 584
    return-object v0
.end method

.method private switchViews(Lcom/google/android/glass/widget/CardScrollAdapter;)Landroid/view/View;
    .locals 2
    .param p1, "adapter"    # Lcom/google/android/glass/widget/CardScrollAdapter;

    .prologue
    .line 590
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/google/glass/setup/SetupFlowController;->pushView()V

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v0

    .line 594
    .local v0, "scrollView":Lcom/google/glass/setup/SetupCardScrollView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 595
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/SetupCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 596
    invoke-virtual {v0, p1}, Lcom/google/glass/setup/SetupCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 597
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupCardScrollView;->activate()V

    .line 598
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupCardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getCurrentState()Lcom/google/glass/setup/SetupFlowController$State;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    return-object v0
.end method

.method getSelectedLocaleForTest()Ljava/util/Locale;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 810
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 811
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController;->selectedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 701
    sget-object v2, Lcom/google/glass/setup/SetupFlowController$6;->$SwitchMap$com$google$glass$setup$SetupFlowController$State:[I

    iget-object v3, p0, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    invoke-virtual {v3}, Lcom/google/glass/setup/SetupFlowController$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 750
    :goto_0
    return v0

    .line 703
    :pswitch_1
    sget-object v2, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    if-ne p1, v2, :cond_0

    .line 704
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_DOWN_BLANK_SCREEN:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    :cond_0
    move v0, v1

    .line 707
    goto :goto_0

    .line 709
    :pswitch_2
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->TAP:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 712
    :pswitch_3
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->WAIT_FOR_COMPANION:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 715
    :pswitch_4
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ANDROID:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v1, v2}, Lcom/google/glass/setup/SetupFlowController$CallBack;->cancelSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)V

    .line 716
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 719
    :pswitch_5
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 722
    :pswitch_6
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_1:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 725
    :pswitch_7
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->VISIT_WEB_SITE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 728
    :pswitch_8
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 731
    :pswitch_9
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 737
    :pswitch_a
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->IPHONE:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v1, v2}, Lcom/google/glass/setup/SetupFlowController$CallBack;->cancelSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)V

    .line 738
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 741
    :pswitch_b
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_2:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 744
    :pswitch_c
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_SELECT_LOCALE:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 747
    :pswitch_d
    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->START_SETUP:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 629
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v0}, Lcom/google/glass/setup/SetupFlowController$CallBack;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/google/glass/setup/SetupFlowController;->handleClick(I)Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 630
    return-void
.end method

.method public onSettledAfterSwipe(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 755
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$6;->$SwitchMap$com$google$glass$setup$SetupFlowController$State:[I

    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupFlowController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 757
    :sswitch_0
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->POST_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 760
    :sswitch_1
    if-lez p1, :cond_1

    .line 761
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 763
    :cond_1
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z

    goto :goto_0

    .line 767
    :sswitch_2
    if-gez p1, :cond_0

    .line 768
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->POST_SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z

    goto :goto_0

    .line 772
    :sswitch_3
    if-lez p1, :cond_2

    .line 773
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->TAP:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 774
    :cond_2
    if-gez p1, :cond_0

    .line 775
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 779
    :sswitch_4
    if-gez p1, :cond_0

    .line 780
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->POST_SWIPE_DOWN:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z

    goto :goto_0

    .line 784
    :sswitch_5
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->IOS_DOWNLOAD_MYGLASS:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 787
    :sswitch_6
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_VIDEO_2:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 790
    :sswitch_7
    sget-object v0, Lcom/google/glass/setup/SetupFlowController$State;->LOCALE_SELECTOR_CONFIRMED:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$Transition;->UPDATE:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x12 -> :sswitch_5
        0x17 -> :sswitch_6
        0x1a -> :sswitch_7
    .end sparse-switch
.end method

.method startVideoInCurrentCard()V
    .locals 2

    .prologue
    .line 603
    iget-object v1, p0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v0

    .line 604
    .local v0, "scrollView":Lcom/google/glass/setup/SetupCardScrollView;
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/google/glass/setup/SetupCardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/setup/SetupFlowController;->startVideoInCard(Landroid/view/View;)V

    .line 607
    :cond_0
    return-void
.end method

.method switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z
    .locals 1
    .param p1, "state"    # Lcom/google/glass/setup/SetupFlowController$State;
    .param p2, "transition"    # Lcom/google/glass/setup/SetupFlowController$Transition;

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z

    move-result v0

    return v0
.end method

.method switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z
    .locals 17
    .param p1, "state"    # Lcom/google/glass/setup/SetupFlowController$State;
    .param p2, "transition"    # Lcom/google/glass/setup/SetupFlowController$Transition;
    .param p3, "direction"    # I

    .prologue
    .line 275
    sget-object v12, Lcom/google/glass/setup/SetupFlowController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Switch to state %s from %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v12}, Lcom/google/glass/setup/SetupFlowController$CallBack;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 281
    const/4 v12, 0x0

    .line 562
    :goto_0
    return v12

    .line 284
    :cond_0
    sget-object v12, Lcom/google/glass/setup/SetupFlowController$Transition;->CLEAR_AND_PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 285
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->popView()Lcom/google/glass/setup/SetupCardScrollView;

    goto :goto_1

    .line 288
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/setup/SetupFlowController;->pushView()V

    .line 300
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    .line 301
    sget-object v12, Lcom/google/glass/setup/SetupFlowController$6;->$SwitchMap$com$google$glass$setup$SetupFlowController$State:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->currentState:Lcom/google/glass/setup/SetupFlowController$State;

    invoke-virtual {v13}, Lcom/google/glass/setup/SetupFlowController$State;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 562
    :cond_3
    :goto_3
    const/4 v12, 0x1

    goto :goto_0

    .line 289
    :cond_4
    sget-object v12, Lcom/google/glass/setup/SetupFlowController$Transition;->PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_5

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/setup/SetupFlowController;->pushView()V

    goto :goto_2

    .line 291
    :cond_5
    sget-object v12, Lcom/google/glass/setup/SetupFlowController$Transition;->POP:Lcom/google/glass/setup/SetupFlowController$Transition;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 292
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->popView()Lcom/google/glass/setup/SetupCardScrollView;

    goto :goto_2

    .line 293
    :cond_6
    sget-object v12, Lcom/google/glass/setup/SetupFlowController$Transition;->POP_TO_CHOOSE_PHONE:Lcom/google/glass/setup/SetupFlowController$Transition;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 294
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    .line 295
    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getTopView()Lcom/google/glass/setup/SetupCardScrollView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->phoneSelectionAdapter:Lcom/google/glass/setup/PhoneSelectionAdapter;

    if-eq v12, v13, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->popView()Lcom/google/glass/setup/SetupCardScrollView;

    goto :goto_4

    .line 303
    :pswitch_0
    sget v12, Lcom/google/glass/setup/R$layout;->low_battery_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    goto :goto_3

    .line 307
    :pswitch_1
    if-lez p3, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v13, Lcom/google/glass/userevent/UserEventAction;->OOBE_TUTORIAL_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v12, v13}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 310
    :cond_7
    sget v12, Lcom/google/glass/setup/R$layout;->swipe_forward_tutorial_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->post_swipe_forward_tutorial_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/glass/setup/SetupFlowController;->switchViews(II)Landroid/view/View;

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->great:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    .line 313
    invoke-virtual {v13}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/google/glass/setup/R$string;->swipe_forward_or_back:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->setupRotateInstruction(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 317
    :pswitch_2
    sget v12, Lcom/google/glass/setup/R$layout;->swipe_forward_tutorial_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->post_swipe_forward_tutorial_view:I

    sget v14, Lcom/google/glass/setup/R$layout;->swipe_down_tutorial_view:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/google/glass/setup/SetupFlowController;->switchViews(IIII)Landroid/view/View;

    move-result-object v11

    .line 320
    .local v11, "view":Landroid/view/View;
    sget v12, Lcom/google/glass/setup/R$id;->postSwipeForwardInstruction:I

    .line 321
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 322
    .local v8, "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    if-eqz v8, :cond_8

    .line 323
    invoke-virtual {v8}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    .line 325
    :cond_8
    if-gez p3, :cond_3

    .line 326
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/glass/setup/SetupFlowController;->setHintViewVisible(Landroid/view/View;)V

    goto/16 :goto_3

    .line 331
    .end local v8    # "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_3
    sget v12, Lcom/google/glass/setup/R$layout;->post_swipe_forward_tutorial_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->swipe_down_tutorial_view:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/google/glass/setup/SetupFlowController;->switchViews(IIII)Landroid/view/View;

    .line 333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->great:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    .line 334
    invoke-virtual {v13}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/google/glass/setup/R$string;->swipe_forward_or_back:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    .line 333
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->setupRotateInstruction(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 338
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    new-instance v13, Lcom/google/glass/setup/SetupFlowController$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/glass/setup/SetupFlowController$2;-><init>(Lcom/google/glass/setup/SetupFlowController;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/glass/setup/SetupStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 346
    :pswitch_5
    sget v12, Lcom/google/glass/setup/R$layout;->swipe_down_tutorial_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->post_swipe_down_tutorial_view:I

    sget v14, Lcom/google/glass/setup/R$layout;->tap_tutorial_view:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/google/glass/setup/SetupFlowController;->switchViews(IIII)Landroid/view/View;

    move-result-object v11

    .line 348
    .restart local v11    # "view":Landroid/view/View;
    sget v12, Lcom/google/glass/setup/R$id;->postSwipeForwardInstruction:I

    .line 349
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 350
    .restart local v8    # "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->perfect:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    .line 351
    invoke-virtual {v13}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/google/glass/setup/R$string;->swipe_down_action:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 350
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v13, v1}, Lcom/google/glass/setup/SetupFlowController;->setupRotateInstruction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    if-lez p3, :cond_9

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v12}, Lcom/google/glass/setup/SetupFlowController$CallBack;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    new-instance v13, Lcom/google/glass/setup/SetupFlowController$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8}, Lcom/google/glass/setup/SetupFlowController$3;-><init>(Lcom/google/glass/setup/SetupFlowController;Lcom/google/glass/widget/SmoothRotatingTextView;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/glass/setup/SetupStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 365
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/glass/setup/SetupFlowController;->setHintViewVisible(Landroid/view/View;)V

    goto/16 :goto_3

    .line 370
    .end local v8    # "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_6
    sget v12, Lcom/google/glass/setup/R$layout;->post_swipe_down_tutorial_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->tap_tutorial_view:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/google/glass/setup/SetupFlowController;->switchViews(IIII)Landroid/view/View;

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->perfect:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    .line 373
    invoke-virtual {v13}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/google/glass/setup/R$string;->swipe_down_action:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    .line 372
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->setupRotateInstruction(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 378
    :pswitch_7
    sget v12, Lcom/google/glass/setup/R$layout;->post_tap_tutorial_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 379
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    invoke-virtual {v12}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->great:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    .line 380
    invoke-virtual {v13}, Lcom/google/glass/setup/SetupStackView;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/google/glass/setup/R$string;->tap_to_select_option:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 379
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v13, v1}, Lcom/google/glass/setup/SetupFlowController;->setupRotateInstruction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 381
    sget v12, Lcom/google/glass/setup/R$id;->postSwipeForwardInstruction:I

    .line 382
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 383
    .restart local v8    # "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    if-eqz v8, :cond_3

    .line 384
    invoke-virtual {v8}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    goto/16 :goto_3

    .line 389
    .end local v8    # "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_8
    sget v12, Lcom/google/glass/setup/R$layout;->start_setup_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    goto/16 :goto_3

    .line 392
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->phoneSelectionAdapter:Lcom/google/glass/setup/PhoneSelectionAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchViews(Lcom/google/android/glass/widget/CardScrollAdapter;)Landroid/view/View;

    goto/16 :goto_3

    .line 396
    :pswitch_a
    sget v12, Lcom/google/glass/setup/R$layout;->wait_for_companion_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 397
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 398
    .local v2, "context":Landroid/content/Context;
    sget v12, Lcom/google/glass/setup/R$id;->text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 399
    .local v10, "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_3

    .line 400
    sget v12, Lcom/google/glass/setup/R$string;->install_myglass:I

    .line 401
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->ios_download_my_glass_green_part:I

    .line 402
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 403
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/google/glass/setup/R$color;->state_green:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 404
    .local v5, "highlightGreen":Ljava/lang/CharSequence;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 409
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "highlightGreen":Ljava/lang/CharSequence;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_b
    sget v12, Lcom/google/glass/setup/R$layout;->show_device_id_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 410
    .restart local v11    # "view":Landroid/view/View;
    sget v12, Lcom/google/glass/setup/R$id;->device_id:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 411
    .local v3, "deviceIdView":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 413
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->buildProvisionalName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 412
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 418
    .end local v3    # "deviceIdView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_c
    sget v12, Lcom/google/glass/setup/R$layout;->visit_website_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 419
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 420
    .restart local v2    # "context":Landroid/content/Context;
    sget v12, Lcom/google/glass/setup/R$id;->text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 421
    .restart local v10    # "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_3

    .line 422
    sget v12, Lcom/google/glass/setup/R$string;->setup_computer:I

    .line 423
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->setup_computer_green_part:I

    .line 424
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 425
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/google/glass/setup/R$color;->state_green:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 422
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 426
    .restart local v5    # "highlightGreen":Ljava/lang/CharSequence;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 431
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "highlightGreen":Ljava/lang/CharSequence;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_d
    sget v12, Lcom/google/glass/setup/R$layout;->pre_scan_qr_code:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    goto/16 :goto_3

    .line 435
    :pswitch_e
    sget v12, Lcom/google/glass/setup/R$layout;->skip_setup_confirm_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    goto/16 :goto_3

    .line 438
    :pswitch_f
    sget v12, Lcom/google/glass/setup/R$layout;->ios_wait_for_pairing_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 439
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 440
    .restart local v2    # "context":Landroid/content/Context;
    sget v12, Lcom/google/glass/setup/R$id;->text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 441
    .restart local v10    # "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_3

    .line 442
    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->buildProvisionalName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "deviceName":Ljava/lang/String;
    sget v12, Lcom/google/glass/setup/R$string;->ios_wait_for_pairing:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    invoke-virtual {v2, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$color;->state_green:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 444
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v12}, Lcom/google/glass/setup/SetupFlowController;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 450
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_10
    sget v12, Lcom/google/glass/setup/R$layout;->ios_turn_on_hotspot_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->ios_download_my_glass_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/glass/setup/SetupFlowController;->switchViews(II)Landroid/view/View;

    move-result-object v11

    .line 452
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 453
    .restart local v2    # "context":Landroid/content/Context;
    sget v12, Lcom/google/glass/setup/R$id;->text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 454
    .restart local v10    # "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_3

    .line 455
    sget v12, Lcom/google/glass/setup/R$string;->ios_turn_on_hotspot:I

    .line 456
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->ios_turn_on_hotspot_green_part:I

    .line 457
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 458
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/google/glass/setup/R$color;->state_green:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 455
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 459
    .restart local v5    # "highlightGreen":Ljava/lang/CharSequence;
    sget v12, Lcom/google/glass/setup/R$string;->ios_turn_on_hotspot_gray_part:I

    .line 461
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 462
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/google/glass/setup/R$color;->text_gray:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 459
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/google/glass/setup/SetupFlowController;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 463
    .local v6, "highlightGreenAndGray":Ljava/lang/CharSequence;
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 468
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "highlightGreen":Ljava/lang/CharSequence;
    .end local v6    # "highlightGreenAndGray":Ljava/lang/CharSequence;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_11
    sget v12, Lcom/google/glass/setup/R$layout;->ios_successful_tethered:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    new-instance v13, Lcom/google/glass/setup/SetupFlowController$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/glass/setup/SetupFlowController$4;-><init>(Lcom/google/glass/setup/SetupFlowController;)V

    const-wide/16 v14, 0x5dc

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/glass/setup/SetupStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 477
    :pswitch_12
    sget v12, Lcom/google/glass/setup/R$layout;->ios_download_my_glass_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 478
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 479
    .restart local v2    # "context":Landroid/content/Context;
    sget v12, Lcom/google/glass/setup/R$id;->text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 480
    .restart local v10    # "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_3

    .line 481
    sget v12, Lcom/google/glass/setup/R$string;->ios_download_my_glass:I

    .line 482
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->ios_download_my_glass_green_part:I

    .line 483
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 484
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/google/glass/setup/R$color;->state_green:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 481
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 485
    .restart local v5    # "highlightGreen":Ljava/lang/CharSequence;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 490
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "highlightGreen":Ljava/lang/CharSequence;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_13
    sget v12, Lcom/google/glass/setup/R$layout;->finalizing_setup:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 492
    .restart local v11    # "view":Landroid/view/View;
    sget v12, Lcom/google/glass/setup/R$id;->slider:I

    .line 493
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/glass/widget/SliderView;

    .line 494
    .local v7, "slider":Lcom/google/glass/widget/SliderView;
    invoke-virtual {v7}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    goto/16 :goto_3

    .line 498
    .end local v7    # "slider":Lcom/google/glass/widget/SliderView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_14
    sget v12, Lcom/google/glass/setup/R$layout;->help_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 499
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 500
    .restart local v2    # "context":Landroid/content/Context;
    sget v12, Lcom/google/glass/setup/R$id;->text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 501
    .restart local v10    # "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_3

    .line 502
    sget v12, Lcom/google/glass/setup/R$string;->setup_help:I

    .line 503
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->setup_help_green_part:I

    .line 504
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 505
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/google/glass/setup/R$color;->state_green:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 502
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/google/glass/setup/SetupFlowController;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 506
    .restart local v5    # "highlightGreen":Ljava/lang/CharSequence;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 511
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "highlightGreen":Ljava/lang/CharSequence;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_15
    sget v12, Lcom/google/glass/setup/R$layout;->locale_selector_video_1_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->locale_selector_video_2_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/glass/setup/SetupFlowController;->switchViews(II)Landroid/view/View;

    goto/16 :goto_3

    .line 514
    :pswitch_16
    sget v12, Lcom/google/glass/setup/R$layout;->locale_selector_video_2_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    goto/16 :goto_3

    .line 517
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->localeSelectionAdapter:Lcom/google/glass/setup/LocaleSelectionAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchViews(Lcom/google/android/glass/widget/CardScrollAdapter;)Landroid/view/View;

    goto/16 :goto_3

    .line 520
    :pswitch_18
    sget v12, Lcom/google/glass/setup/R$layout;->confirm_locale_view:I

    sget v13, Lcom/google/glass/setup/R$layout;->locale_confirmed_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/glass/setup/SetupFlowController;->switchViews(II)Landroid/view/View;

    move-result-object v11

    .line 521
    .restart local v11    # "view":Landroid/view/View;
    sget v12, Lcom/google/glass/setup/R$id;->localeName:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 522
    .restart local v10    # "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_a

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->selectedLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/setup/SetupFlowController;->selectedLocale:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :cond_a
    sget v12, Lcom/google/glass/setup/R$id;->instruction:I

    .line 526
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 527
    .restart local v8    # "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    if-eqz v8, :cond_3

    .line 529
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->swipe_to_confirm:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupFlowController;->selectedLocale:Ljava/util/Locale;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/google/glass/locale/LocaleHelper;->getStringInLocale(Landroid/content/Context;ILjava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$style;->SmallOverlayText:I

    .line 528
    invoke-virtual {v8, v12, v13}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;I)V

    .line 533
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->tap_to_dismiss:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$style;->SmallOverlayText:I

    .line 532
    invoke-virtual {v8, v12, v13}, Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;I)V

    .line 535
    invoke-virtual {v8}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    goto/16 :goto_3

    .line 540
    .end local v8    # "smoothRotatingTextView":Lcom/google/glass/widget/SmoothRotatingTextView;
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :pswitch_19
    sget v12, Lcom/google/glass/setup/R$layout;->locale_confirmed_view:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/glass/setup/SetupFlowController;->switchView(I)Landroid/view/View;

    move-result-object v11

    .line 541
    .restart local v11    # "view":Landroid/view/View;
    sget v12, Lcom/google/glass/setup/R$id;->text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 542
    .restart local v10    # "textView":Landroid/widget/TextView;
    if-eqz v10, :cond_b

    .line 543
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/google/glass/setup/R$string;->language_confirmed:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/setup/SetupFlowController;->selectedLocale:Ljava/util/Locale;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/google/glass/locale/LocaleHelper;->getStringInLocale(Landroid/content/Context;ILjava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->callBack:Lcom/google/glass/setup/SetupFlowController$CallBack;

    invoke-interface {v12}, Lcom/google/glass/setup/SetupFlowController$CallBack;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v12

    sget-object v13, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v12, v13}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/setup/SetupFlowController;->stackView:Lcom/google/glass/setup/SetupStackView;

    new-instance v13, Lcom/google/glass/setup/SetupFlowController$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/glass/setup/SetupFlowController$5;-><init>(Lcom/google/glass/setup/SetupFlowController;)V

    const-wide/16 v14, 0x5dc

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/glass/setup/SetupStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
