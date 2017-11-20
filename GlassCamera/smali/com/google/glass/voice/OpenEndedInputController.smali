.class public Lcom/google/glass/voice/OpenEndedInputController;
.super Ljava/lang/Object;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/OpenEndedInputController$18;,
        Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;,
        Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;,
        Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;,
        Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;,
        Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;,
        Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;,
        Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;,
        Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;,
        Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;
    }
.end annotation


# static fields
.field private static final ANIMATE_IN_DURATION_MILLIS:J = 0x64L

.field private static final ANIMATE_OUT_DURATION_MILLIS:J = 0xc8L

.field private static final CAMERA_BUTTON_RECEIVER:Landroid/content/IntentFilter;

.field public static final DICTATION:Lcom/google/glass/voice/VoiceConfig;

.field private static final ENDPOINT_CONFIRM_THRESHOLD_MILLIS:I = 0x3e8

.field private static final LOW_CONFIDENCE_THRESHOLD:F = 0.8f

.field private static final MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS:J

.field private static final MSG_ON_OPEN_ENDED_INPUT_EVENT:I = 0xe

.field private static final MSG_SEND_FINAL_RESULT:I = 0xf

.field private static final MSG_SHOW_GLASS_ERROR:I = 0x10

.field private static final MSG_SHOW_KEYBOARD_MODE_TIP:I = 0x11

.field private static final MSG_SHOW_PROGRESS_BAR:I = 0xa

.field private static final MSG_STOP_PROGRESS_BAR:I = 0xb

.field public static final NO_OP_SANITIZER:Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

.field private static final SHOW_KEYBOARD_MODE_TIP_DELAY:J = 0x7d0L

.field private static final SHOW_PHOTO_DELAY_MILLIS:J = 0x3e8L

.field private static final SHOW_PROGRESS_BAR_DELAY_MILLIS:J = 0xfaL

.field private static final SHOW_RESULT_DURATION_MAX_ADDITIONAL:J = 0xbb8L

.field private static final SHOW_RESULT_DURATION_MINIMUM:J = 0x7d0L

.field private static final THUMBNAIL_FADE_MILLIS:J = 0xc8L


# instance fields
.field private audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

.field private final cameraButtonReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final cameraClient:Lcom/google/glass/camera/CameraClientV1;

.field private final cameraListener:Lcom/google/glass/camera/CameraListener;

.field private final companionManager:Lcom/google/glass/voice/CompanionInputEntryManager;

.field private final companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

.field private final contentView:Landroid/view/ViewGroup;

.field private final context:Landroid/content/Context;

.field private final correctionController:Lcom/google/glass/voice/InputCorrectionController;

.field private cropMarksView:Lcom/google/glass/widget/CropMarksView;

.field private currentMode:Lcom/google/glass/voice/InputMode;

.field private endOfSpeechTime:J

.field private final errorDismissedRunnable:Ljava/lang/Runnable;

.field private final eyeGestureReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private gradient:Landroid/widget/ImageView;

.field public final handler:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private hasSearchResponse:Z

.field private id:J

.field private final inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

.field private inputModeChangeListener:Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;

.field private final inputModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;"
        }
    .end annotation
.end field

.field private inputSessionOpen:Z

.field private final intent:Landroid/content/Intent;

.field private isActivated:Z

.field private isFinalResultSent:Z

.field private isRetry:Z

.field private isStreamingTextViewTextSubmitted:Z

.field private keyboardFinishMethod:Ljava/lang/String;

.field private keyboardModeTip:Landroid/widget/TextView;

.field private keyboardStartMethod:Ljava/lang/String;

.field private lastSpeechLevel:I

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private logFirstRecognizedText:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

.field private omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

.field private omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

.field private final onInputCanceledListener:Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private prompt:Landroid/widget/TextView;

.field private final queuedEventsForTests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/OpenEndedInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field final recognitionListener:Landroid/speech/RecognitionListener;

.field private recognitionResult:Ljava/lang/CharSequence;

.field private recognitionResultConfidence:F

.field private recognitionResultsCount:I

.field private recognitionUpdatesCount:I

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private sanitizedLowConfText:Ljava/lang/String;

.field private sanitizedPostfixText:Ljava/lang/String;

.field private sanitizedPrefixText:Ljava/lang/String;

.field private sanitizedRecognitionResult:Ljava/lang/CharSequence;

.field private savedActionResponseResults:[B

.field private savedHtmlAnswerCardResults:Ljava/lang/String;

.field private shouldCallOnDoneAfterPhoto:Z

.field private final speakAgainRunnable:Ljava/lang/Runnable;

.field private speechRecognizer:Landroid/speech/SpeechRecognizer;

.field private final speechRecognizerProvider:Lcom/google/glass/voice/SpeechRecognizerProvider;

.field private startTime:J

.field private streamingTextView:Lcom/google/glass/voice/StreamingTextView;

.field private triggerMethod:I

.field private triggerTimeMillis:J

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private viewsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 135
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 136
    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManager$SoundId;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/glass/voice/OpenEndedInputController;->MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS:J

    .line 169
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController;->DICTATION:Lcom/google/glass/voice/VoiceConfig;

    .line 485
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController;->CAMERA_BUTTON_RECEIVER:Landroid/content/IntentFilter;

    .line 489
    sget-object v0, Lcom/google/glass/voice/OpenEndedInputController;->CAMERA_BUTTON_RECEIVER:Landroid/content/IntentFilter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 613
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$9;

    invoke-direct {v0}, Lcom/google/glass/voice/OpenEndedInputController$9;-><init>()V

    sput-object v0, Lcom/google/glass/voice/OpenEndedInputController;->NO_OP_SANITIZER:Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/voice/SpeechRecognizerProvider;Landroid/content/Intent;Landroid/view/ViewGroup;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/PowerHelper;Landroid/view/LayoutInflater;Ljava/util/List;Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraManager"    # Lcom/google/android/glass/media/CameraManager;
    .param p3, "speechRecognizerProvider"    # Lcom/google/glass/voice/SpeechRecognizerProvider;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "contentView"    # Landroid/view/ViewGroup;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p7, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p8, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p10, "onInputCanceledListener"    # Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/glass/media/CameraManager;",
            "Lcom/google/glass/voice/SpeechRecognizerProvider;",
            "Landroid/content/Intent;",
            "Landroid/view/ViewGroup;",
            "Lcom/google/glass/userevent/UserEventHelper;",
            "Lcom/google/glass/util/PowerHelper;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;",
            "Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 634
    .local p9, "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/InputMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->hasSearchResponse:Z

    .line 175
    const-string v1, ""

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    .line 176
    const-string v1, ""

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    .line 177
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultConfidence:F

    .line 178
    const-string v1, ""

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPrefixText:Ljava/lang/String;

    .line 179
    const-string v1, ""

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedLowConfText:Ljava/lang/String;

    .line 180
    const-string v1, ""

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPostfixText:Ljava/lang/String;

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->logFirstRecognizedText:Z

    .line 193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->isRetry:Z

    .line 200
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    .line 231
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->endOfSpeechTime:J

    .line 265
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->queuedEventsForTests:Ljava/util/List;

    .line 271
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$1;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    .line 302
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$2;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    .line 319
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$3;

    .line 320
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/OpenEndedInputController$3;-><init>(Lcom/google/glass/voice/OpenEndedInputController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    .line 424
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$4;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$4;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionListener:Landroid/speech/RecognitionListener;

    .line 444
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$5;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$5;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->speakAgainRunnable:Ljava/lang/Runnable;

    .line 457
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$6;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$6;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->errorDismissedRunnable:Ljava/lang/Runnable;

    .line 470
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$7;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$7;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->eyeGestureReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 492
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$8;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/voice/OpenEndedInputController;->CAMERA_BUTTON_RECEIVER:Landroid/content/IntentFilter;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/voice/OpenEndedInputController$8;-><init>(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraButtonReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 529
    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->READY_FOR_CAMERA_BUTTON:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .line 1255
    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputCameraListener;-><init>(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/OpenEndedInputController$1;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraListener:Lcom/google/glass/camera/CameraListener;

    .line 635
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    .line 636
    iput-object p3, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizerProvider:Lcom/google/glass/voice/SpeechRecognizerProvider;

    .line 637
    iput-object p4, p0, Lcom/google/glass/voice/OpenEndedInputController;->intent:Landroid/content/Intent;

    .line 638
    iput-object p8, p0, Lcom/google/glass/voice/OpenEndedInputController;->layoutInflater:Landroid/view/LayoutInflater;

    .line 639
    iput-object p9, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModes:Ljava/util/List;

    .line 640
    iput-object p6, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 641
    iput-object p5, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    .line 642
    iput-object p7, p0, Lcom/google/glass/voice/OpenEndedInputController;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 643
    iput-object p10, p0, Lcom/google/glass/voice/OpenEndedInputController;->onInputCanceledListener:Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    .line 644
    new-instance v1, Lcom/google/glass/camera/CameraClientV1;

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraListener:Lcom/google/glass/camera/CameraListener;

    invoke-direct {v1, p1, p2, v2, p6}, Lcom/google/glass/camera/CameraClientV1;-><init>(Landroid/content/Context;Lcom/google/android/glass/media/CameraManager;Lcom/google/glass/camera/CameraListener;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    .line 647
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->CVS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/InputMode;

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->getEnableCorrections()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->KTE:Lcom/google/glass/util/Labs$Feature;

    .line 650
    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 651
    .local v0, "shouldEnableCorrections":Z
    :goto_0
    invoke-static {}, Lcom/google/glass/voice/InputCorrectionControllerProvider;->getInstance()Lcom/google/glass/voice/InputCorrectionControllerProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/glass/voice/InputCorrectionControllerProvider;->from(Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;Landroid/content/Context;Z)Lcom/google/glass/voice/InputCorrectionController;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    .line 655
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 656
    new-instance v1, Lcom/google/glass/voice/CompanionInputEntryManager;

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 657
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManagerCallback:Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/CompanionInputEntryManager;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/context/BroadcastReceiverRegistrar;Lcom/google/glass/voice/CompanionInputEntryManager$CompanionInputEntryManagerCallback;)V

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManager:Lcom/google/glass/voice/CompanionInputEntryManager;

    .line 658
    return-void

    .line 650
    .end local v0    # "shouldEnableCorrections":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/OpenEndedInputController;->showNewTextStreamingTextView(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Lcom/google/glass/voice/network/SpeechException;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->showError(Lcom/google/glass/voice/network/SpeechException;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardFinishMethod:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/OpenEndedInputController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputSessionOpen:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputCorrectionController;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/OpenEndedInputController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showInitialKeyboardModeTip()V

    return-void
.end method

.method static synthetic access$1602(Lcom/google/glass/voice/OpenEndedInputController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->isFinalResultSent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/OpenEndedInputController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/InputMode;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/InputMode;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Lcom/google/glass/voice/InputMode;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->dispatchGwsResults()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/OpenEndedInputController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->isStreamingTextViewTextSubmitted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/StreamingTextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->queuedEventsForTests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->updatePowerHelper(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->updateKeepScreenOn(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showListening()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showRecording()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showRecognizing()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showNoSpeechDetected()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->onDone()V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/OpenEndedInputController;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->submitStreamingTextViewTextAsRecognitionResult()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/glass/voice/OpenEndedInputController;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # [B

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->onActionResponse([B)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/glass/voice/OpenEndedInputController;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->lastSpeechLevel:I

    return v0
.end method

.method static synthetic access$3202(Lcom/google/glass/voice/OpenEndedInputController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->lastSpeechLevel:I

    return p1
.end method

.method static synthetic access$3300(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/glass/voice/OpenEndedInputController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->logSearchStarted(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->resetUi()V

    return-void
.end method

.method static synthetic access$3602(Lcom/google/glass/voice/OpenEndedInputController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->isRetry:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->setVoiceConfigForCurrentInputMode()V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/glass/voice/OpenEndedInputController;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/google/glass/voice/OpenEndedInputController;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/google/glass/voice/OpenEndedInputController;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardStartMethod:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->cancelSpeechRecognition()V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->startNewInputSession()V

    return-void
.end method

.method static synthetic access$4502(Lcom/google/glass/voice/OpenEndedInputController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->hasSearchResponse:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/google/glass/voice/OpenEndedInputController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/google/glass/voice/OpenEndedInputController;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/glass/voice/OpenEndedInputController;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # [B

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/voice/OpenEndedInputController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->isVoiceInputSessionOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->setOmniInputState(Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->callOnDoneAfterPhoto()V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->releaseCamera()V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/glass/voice/OpenEndedInputController;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/widget/CropMarksView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->cropMarksView:Lcom/google/glass/widget/CropMarksView;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->startReviewMode()V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/AudioInputRelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->onInputCanceledListener:Lcom/google/glass/voice/OpenEndedInputController$OnInputCanceledListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p1, "x1"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->sendOpenEndedInputMessage(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    return-void
.end method

.method private animateIn(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1951
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1952
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1953
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1954
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 1955
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$16;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/OpenEndedInputController$16;-><init>(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/Runnable;)V

    .line 1956
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1964
    return-void
.end method

.method private animateOut(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1968
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    .line 1969
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1970
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 1971
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$17;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/OpenEndedInputController$17;-><init>(Lcom/google/glass/voice/OpenEndedInputController;Landroid/view/View;)V

    .line 1972
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1978
    return-void
.end method

.method private final callOnDoneAfterPhoto()V
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->shouldCallOnDoneAfterPhoto:Z

    if-eqz v0, :cond_0

    .line 1517
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->onDone()V

    .line 1519
    :cond_0
    return-void
.end method

.method private cancelSpeechRecognition()V
    .locals 4

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 1013
    :cond_0
    return-void

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "SpeechRecognizer was never bound or already unbound."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "results"    # Ljava/lang/CharSequence;

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v0}, Lcom/google/glass/voice/InputMode;->getResultSanitizer()Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;->sanitize(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private disableModeSwitching()V
    .locals 1

    .prologue
    .line 2125
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->isActivated:Z

    if-eqz v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 2128
    :cond_0
    return-void
.end method

.method private dispatchGwsResults()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1759
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 1760
    .local v2, "inputEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/OpenEndedInputEvent;>;"
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1761
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No saved results to send!"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1782
    :cond_0
    return-void

    .line 1764
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    if-eqz v3, :cond_2

    .line 1765
    sget-object v3, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v3}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v3

    const-string v4, "protoBytes"

    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putByteArrayExtra(Ljava/lang/String;[B)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1769
    sget-object v3, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v3}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v3

    const-string v4, "resultDoc"

    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    :cond_3
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    if-eqz v3, :cond_0

    .line 1775
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v3}, Lcom/google/glass/voice/InputMode;->getEventReceivers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;

    .line 1776
    .local v1, "eventReceiver":Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .line 1777
    .local v0, "event":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Dispatching GWS result type: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1778
    invoke-interface {v1, p0, v0}, Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;->onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_0
.end method

.method private getConfidenceBasedResultDuration()J
    .locals 2

    .prologue
    .line 2112
    iget v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultConfidence:F

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const-wide/16 v0, 0x7d0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getInterval(J)J
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    const-wide/16 v0, -0x1

    .line 2138
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2140
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    goto :goto_0
.end method

.method private getNetworkTypeForLogging()I
    .locals 2

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1910
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 701
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private final getType()I
    .locals 1

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/InputMode;->getLoggingType()I

    move-result v0

    return v0
.end method

.method private hasTakenPicture()Z
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->PROCESSING_PHOTO:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-virtual {v1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeViewHierarchy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 718
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->viewsInitialized:Z

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Views already initialized, ignoring initializeViewHierarchy call."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    :goto_0
    return-void

    .line 723
    :cond_0
    iput-boolean v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->viewsInitialized:Z

    .line 725
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenEndedInputController requires at least one input mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputMode;

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    .line 730
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->layoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/google/glass/common/R$layout;->voice_input_view:I

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 731
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    sget v1, Lcom/google/glass/common/R$id;->mode_slider_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    .line 733
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, v5}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModes:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/OpenEndedInputController$InputModeCardScrollAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 739
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    new-instance v1, Lcom/google/glass/voice/OpenEndedInputController$10;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/OpenEndedInputController$10;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private initializeVoiceInput()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->intent:Landroid/content/Intent;

    const-string v1, "trigger_method"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 690
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->intent:Landroid/content/Intent;

    const-string v1, "trigger_time"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerTimeMillis:J

    .line 697
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->setVoiceConfigForCurrentInputMode()V

    .line 698
    return-void

    .line 693
    :cond_0
    iput v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 694
    iput-wide v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerTimeMillis:J

    goto :goto_0
.end method

.method private isMessageShowing()Z
    .locals 1

    .prologue
    .line 1504
    invoke-static {}, Lcom/google/glass/widget/MessageDialogManager$Provider;->getInstance()Lcom/google/glass/widget/MessageDialogManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialogManager;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialogManager;->isMessageShowing()Z

    move-result v0

    return v0
.end method

.method private isVoiceInputSessionOpen()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputSessionOpen:Z

    return v0
.end method

.method private logError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 6
    .param p1, "exception"    # Lcom/google/glass/voice/network/SpeechException;

    .prologue
    .line 1915
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1916
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "error"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1917
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "detail"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1918
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getDetail()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "network"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 1919
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getNetworkTypeForLogging()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 1920
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1921
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1915
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1922
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1923
    const-string v1, "time"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    .line 1924
    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/OpenEndedInputController;->getInterval(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1923
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1926
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1927
    return-void
.end method

.method private logSearchStarted(I)V
    .locals 6
    .param p1, "trigger"    # I

    .prologue
    .line 705
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 710
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 711
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 712
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 710
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private maybeAllowManualEndpointing()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1078
    iget-wide v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    invoke-direct {p0, v5, v6}, Lcom/google/glass/voice/OpenEndedInputController;->getInterval(J)J

    move-result-wide v1

    .line 1079
    .local v1, "timeSinceStart":J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 1080
    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Manually endpointed after %d ms"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1083
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "tss"

    aput-object v8, v7, v4

    .line 1084
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v4, 0x2

    const-string v8, "recognition"

    aput-object v8, v7, v4

    const/4 v4, 0x3

    .line 1085
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->hasRecognitionResult()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x4

    const-string v8, "type"

    aput-object v8, v7, v4

    const/4 v4, 0x5

    .line 1086
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x6

    const-string v8, "trigger"

    aput-object v8, v7, v4

    const/4 v4, 0x7

    iget v8, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1087
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 1082
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_MANUAL_ENDPOINT:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v4, v5, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1089
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->cancelSpeechRecognition()V

    .line 1092
    .end local v0    # "eventTuple":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private onActionResponse([B)V
    .locals 3
    .param p1, "actionResponseBytes"    # [B

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Capturing action response"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->hasSearchResponse:Z

    .line 1755
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    .line 1756
    return-void
.end method

.method private onDone()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1522
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->isTakingPicture()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1523
    iput-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->shouldCallOnDoneAfterPhoto:Z

    .line 1540
    :goto_0
    return-void

    .line 1526
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSanitizedRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1527
    .local v0, "hasResult":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSanitizedRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/OpenEndedInputController;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v1

    .line 1528
    .local v1, "resultGracePeriodDuration":J
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->hasTakenPicture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1529
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/InputMode;->shouldShowPostRecognitionGracePeriod()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1531
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1532
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showCancelTip()V

    .line 1538
    :cond_2
    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/OpenEndedInputController;->sendFinalResultMessage(J)V

    .line 1539
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showDone()V

    goto :goto_0

    .line 1526
    .end local v0    # "hasResult":Z
    .end local v1    # "resultGracePeriodDuration":J
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1533
    .restart local v0    # "hasResult":Z
    .restart local v1    # "resultGracePeriodDuration":J
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1535
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceMessageController;->fadeIn(Landroid/view/View;)V

    goto :goto_2
.end method

.method private onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "htmlResults"    # Ljava/lang/String;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Capturing Html Answer card results"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->hasSearchResponse:Z

    .line 1749
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    .line 1750
    return-void
.end method

.method private postNoSpeechDetected()V
    .locals 3

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 2067
    invoke-static {v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v2

    .line 2066
    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2067
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2068
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->FINISHED_DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    if-ne v0, v1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraClientV1;->release()V

    .line 983
    :cond_0
    return-void
.end method

.method private resetUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1017
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1018
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1023
    :cond_0
    iput-boolean v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->isRetry:Z

    .line 1024
    iput-boolean v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->hasSearchResponse:Z

    .line 1025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    .line 1026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    .line 1027
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultConfidence:F

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logFirstRecognizedText:Z

    .line 1029
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1030
    sget v0, Lcom/google/glass/common/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 1031
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 1033
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->queuedEventsForTests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1034
    return-void
.end method

.method private sendDirectGwsRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "updatedRecognitionResult"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1142
    iput-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    .line 1143
    iput-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    .line 1144
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->hasSearchResponse:Z

    .line 1146
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 1147
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 1148
    .local v1, "locationManager":Landroid/location/LocationManager;
    new-instance v2, Lcom/google/glass/location/LocationManagerHelper;

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 1149
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    .line 1150
    .local v2, "locationManagerHelper":Lcom/google/glass/location/LocationManagerHelper;
    new-instance v0, Lcom/google/glass/voice/network/DirectGwsRequest;

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/google/glass/voice/network/DirectGwsRequest;-><init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V

    .line 1151
    .local v0, "directGwsRequest":Lcom/google/glass/voice/network/DirectGwsRequest;
    const/4 v3, 0x1

    new-instance v4, Lcom/google/glass/voice/OpenEndedInputController$12;

    invoke-direct {v4, p0, p1}, Lcom/google/glass/voice/OpenEndedInputController$12;-><init>(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3, v4}, Lcom/google/glass/voice/network/DirectGwsRequest;->sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V

    .line 1210
    return-void
.end method

.method private sendFinalResultMessage(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/16 v2, 0xf

    .line 1786
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1787
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1788
    return-void
.end method

.method private sendOpenEndedInputMessage(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "inputEvent"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2118
    return-void
.end method

.method private setOmniInputState(Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)V
    .locals 2
    .param p1, "state"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .prologue
    .line 915
    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-virtual {v1}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "State transfers must progress is numerical order."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertTrue(ZLjava/lang/String;)V

    .line 917
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    .line 918
    return-void

    .line 915
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSpeechLevelSource()V
    .locals 1

    .prologue
    .line 1597
    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$14;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/OpenEndedInputController$14;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 1603
    .local v0, "voiceInputHelperSpeechLevelSource":Lcom/google/glass/voice/network/SpeechLevelSource;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/OpenEndedInputController;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 1604
    return-void
.end method

.method private setVoiceConfigForCurrentInputMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1325
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/InputMode;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 1327
    .local v1, "voiceConfig":Lcom/google/glass/voice/VoiceConfig;
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "setVoiceConfigForCurrentInputMode %s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1328
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    invoke-interface {v2}, Lcom/google/glass/voice/InputCorrectionController;->isReturningFromCorrection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->stopListening()V

    .line 1343
    :goto_0
    return-void

    .line 1332
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->cancelSpeechRecognition()V

    .line 1335
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizerProvider:Lcom/google/glass/voice/SpeechRecognizerProvider;

    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/SpeechRecognizerProvider;->create(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 1336
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 1338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1339
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "voiceConfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1340
    const-string v2, "enableOpenEndedInputEvents"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1341
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showCancelTip()V
    .locals 3

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing cancel tip"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    sget v0, Lcom/google/glass/common/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeIn(Landroid/view/View;)V

    .line 1578
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->gradient:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeIn(Landroid/view/View;)V

    .line 1579
    return-void
.end method

.method private showDone()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1543
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 1546
    iget-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->hasSearchResponse:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->isSearchResponseExpected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->isMessageShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1548
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error to display, but error already on screen"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1552
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1555
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1556
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "query"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1558
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1559
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1555
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1560
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1561
    const-string v1, "time"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    .line 1562
    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/OpenEndedInputController;->getInterval(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1561
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1564
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1566
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/common/R$string;->voice_search_no_answer:I

    .line 1567
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    .line 1568
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 1569
    invoke-virtual {v1, v6}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 1570
    invoke-virtual {v1, v6}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    .line 1571
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private showError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 9
    .param p1, "exception"    # Lcom/google/glass/voice/network/SpeechException;

    .prologue
    const/4 v7, 0x0

    .line 1859
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1860
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Received error while already showing error on screen: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1861
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1860
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1891
    :goto_0
    return-void

    .line 1865
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->logError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 1867
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v3}, Lcom/google/glass/voice/InputMode;->getErrorHandler()Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

    move-result-object v0

    .line 1868
    .local v0, "errorHandler":Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;
    invoke-interface {v0}, Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;->shouldShowError()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1869
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Ignoring open-ended recognition error"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1873
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->cancelSpeechRecognition()V

    .line 1874
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 1875
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/OpenEndedInputController;->animateOut(Landroid/view/View;)V

    .line 1876
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1877
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1878
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1880
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->hasTakenPicture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1882
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    .line 1883
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    iget v8, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultConfidence:F

    invoke-static {v5, v6, v7, v8}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forRecognitionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v5

    .line 1882
    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1884
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1886
    :cond_2
    invoke-interface {v0, p1}, Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;->getErrorUi(Lcom/google/glass/voice/network/SpeechException;)Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    move-result-object v1

    .line 1887
    .local v1, "errorUi":Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;
    new-instance v2, Lcom/google/glass/app/GlassError;

    invoke-direct {v2}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 1888
    .local v2, "glassError":Lcom/google/glass/app/GlassError;
    invoke-virtual {v1, p0, v2}, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->bindGlassError(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/app/GlassError;)V

    .line 1889
    invoke-interface {v0}, Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;->shouldPreemptVoiceMenu()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassError;->setPreemptVoiceMenu(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private showInitialKeyboardModeTip()V
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 1410
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/common/R$string;->voice_input_keyboard_mode_start_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1411
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeIn(Landroid/view/View;)V

    .line 1413
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->gradient:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeIn(Landroid/view/View;)V

    .line 1415
    :cond_0
    return-void
.end method

.method private showKeyboardMode()V
    .locals 3

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing keyboard mode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1583
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1587
    :cond_0
    sget v0, Lcom/google/glass/common/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 1588
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/common/R$string;->voice_input_keyboard_mode_finish_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1589
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeIn(Landroid/view/View;)V

    .line 1590
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showUsingKeyboard()V

    .line 1591
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/common/R$string;->voice_input_keyboard_mode_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1592
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1593
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1594
    return-void
.end method

.method private showListening()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 1354
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->setSpeechLevelSource()V

    .line 1356
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 1357
    .local v1, "listeningStartTimeMillis":J
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1358
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1359
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v3, :cond_0

    .line 1360
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v3, v5}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 1363
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/InputMode;->getPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1369
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/glass/voice/OpenEndedInputController;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1370
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    new-instance v4, Lcom/google/glass/voice/OpenEndedInputController$13;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/OpenEndedInputController$13;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    invoke-direct {p0, v3, v4}, Lcom/google/glass/voice/OpenEndedInputController;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1384
    :goto_0
    iget-wide v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerTimeMillis:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 1385
    const-string v3, "l"

    iget-wide v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerTimeMillis:J

    sub-long v4, v1, v4

    .line 1386
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "m"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1387
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1385
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1393
    .end local v0    # "eventTuple":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v3, :cond_1

    .line 1394
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v3}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 1397
    :cond_1
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->KTE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManager:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-virtual {v3}, Lcom/google/glass/voice/CompanionInputEntryManager;->isKeyboardModeAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1399
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1406
    :goto_2
    return-void

    .line 1379
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1380
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    :cond_3
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showListening()V

    goto :goto_0

    .line 1390
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x42

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "We have no idea when the trigger method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was initiated."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1403
    :cond_5
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->gradient:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 1404
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    goto :goto_2
.end method

.method private showNewTextStreamingTextView(Ljava/lang/String;I)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;
    .param p2, "diffStartIndex"    # I

    .prologue
    const/16 v1, 0x8

    .line 1218
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->isShowingFinalText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/StreamingTextView;->updateKeyboardInputText(Ljava/lang/CharSequence;I)V

    .line 1226
    return-void
.end method

.method private showNoSpeechDetected()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1463
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->isMessageShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No-speech error to display, but error already on screen"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1501
    :goto_0
    return-void

    .line 1468
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->cancelSpeechRecognition()V

    .line 1469
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 1470
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1471
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1474
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1475
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "recognition"

    aput-object v4, v3, v6

    .line 1476
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->hasRecognitionResult()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 1477
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1478
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1474
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1481
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->hasTakenPicture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1483
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v2, 0xe

    const-string v3, ""

    invoke-static {v3}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forFinalResult(Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1484
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1488
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->getErrorHandler()Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;->shouldShowNoSpeechDetected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1489
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/common/R$string;->error_no_speech_detected:I

    .line 1490
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$string;->error_tap_speak_again:I

    .line 1491
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$drawable;->ic_warning_150:I

    .line 1492
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 1493
    invoke-virtual {v1, v7}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->speakAgainRunnable:Ljava/lang/Runnable;

    .line 1494
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->errorDismissedRunnable:Ljava/lang/Runnable;

    .line 1495
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setOnDismissRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    .line 1496
    invoke-virtual {v2}, Lcom/google/glass/voice/InputMode;->getErrorHandler()Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;->shouldPreemptVoiceMenu()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPreemptVoiceMenu(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    .line 1497
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1500
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Ignoring no speech detected"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 1459
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/InputMode;->shouldShowProgressOnRecognitionResult()Z

    move-result v0

    return v0
.end method

.method private showRecognizing()V
    .locals 6

    .prologue
    .line 1431
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->endOfSpeechTime:J

    .line 1433
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 1434
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->animateOut(Landroid/view/View;)V

    .line 1435
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1436
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/InputMode;->shouldPlayVoiceCompletedSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1447
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1448
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1449
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1450
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1447
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1451
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1452
    const-string v1, "time"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    .line 1453
    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/OpenEndedInputController;->getInterval(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1452
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1455
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1456
    return-void
.end method

.method private showRecording()V
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 1421
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1423
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showRecording()V

    .line 1424
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 1427
    :cond_0
    return-void
.end method

.method private startNewInputSession()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 834
    iput-boolean v8, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputSessionOpen:Z

    .line 835
    iget v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    invoke-direct {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->logSearchStarted(I)V

    .line 836
    iput-object v7, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedHtmlAnswerCardResults:Ljava/lang/String;

    .line 837
    iput-object v7, p0, Lcom/google/glass/voice/OpenEndedInputController;->savedActionResponseResults:[B

    .line 838
    iput-boolean v6, p0, Lcom/google/glass/voice/OpenEndedInputController;->isStreamingTextViewTextSubmitted:Z

    .line 839
    iput-boolean v6, p0, Lcom/google/glass/voice/OpenEndedInputController;->isFinalResultSent:Z

    .line 840
    iput-boolean v6, p0, Lcom/google/glass/voice/OpenEndedInputController;->shouldCallOnDoneAfterPhoto:Z

    .line 842
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v4}, Lcom/google/glass/voice/InputMode;->getAudioInputViewResId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/voice/AudioInputRelativeLayout;

    iput-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    .line 845
    sget v4, Lcom/google/glass/common/R$id;->voice_input_prompt:I

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    .line 846
    sget v4, Lcom/google/glass/common/R$id;->streaming_text:I

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/voice/StreamingTextView;

    iput-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    .line 847
    sget v4, Lcom/google/glass/common/R$id;->progress_slider:I

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/SliderView;

    iput-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 848
    sget v4, Lcom/google/glass/common/R$id;->crop_marks:I

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/CropMarksView;

    iput-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->cropMarksView:Lcom/google/glass/widget/CropMarksView;

    .line 849
    sget v4, Lcom/google/glass/common/R$id;->keyboard_mode_tip:I

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    .line 850
    sget v4, Lcom/google/glass/common/R$id;->gradient:I

    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->gradient:Landroid/widget/ImageView;

    .line 853
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->resetUi()V

    .line 856
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 857
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_2

    .line 858
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v4}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 861
    new-instance v4, Lcom/google/glass/voice/network/SpeechException;

    const-string v5, "AbortNoConnectivity"

    const-string v6, ""

    invoke-direct {v4, v7, v5, v6}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->logError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 862
    new-instance v4, Lcom/google/glass/app/GlassError;

    invoke-direct {v4}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v5, Lcom/google/glass/common/R$string;->voice_network_connectivity:I

    .line 863
    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$string;->error_tap_connection_settings:I

    .line 864
    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    .line 865
    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v4

    .line 866
    invoke-virtual {v4, v8}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v4

    sget-object v5, Lcom/google/glass/app/GlassError$OnConfirmAction;->SHOW_CONNECTIVITY_STATUS_CARD:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 867
    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    .line 868
    invoke-virtual {v4, v5}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 907
    :cond_1
    :goto_0
    return-void

    .line 872
    :cond_2
    sget v4, Lcom/google/glass/common/R$id;->initial_selected_voice_command_text:I

    .line 873
    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 874
    .local v2, "initialSelectedCommandTextView":Landroid/widget/TextView;
    sget v4, Lcom/google/glass/common/R$id;->final_selected_voice_command_text:I

    .line 875
    invoke-virtual {p0, v4}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 880
    .local v1, "finalSelectedCommandTextView":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 881
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/InputMode;->getFinalSelectedCommand()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "finalSelectedCommandText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 883
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 885
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 891
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/google/glass/voice/OpenEndedInputController$11;

    invoke-direct {v5, p0, v2}, Lcom/google/glass/voice/OpenEndedInputController$11;-><init>(Lcom/google/glass/voice/OpenEndedInputController;Landroid/widget/TextView;)V

    .line 892
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 904
    .end local v0    # "finalSelectedCommandText":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModeChangeListener:Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;

    if-eqz v4, :cond_1

    .line 905
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModeChangeListener:Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;

    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-interface {v4, v5}, Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;->onInputModeChanged(Lcom/google/glass/voice/InputMode;)V

    goto :goto_0

    .line 900
    .restart local v0    # "finalSelectedCommandText":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/voice/InputMode;->getSelectedCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private startReviewMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1101
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v2}, Lcom/google/glass/voice/StreamingTextView;->getText()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "currentInput":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManager:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-virtual {v2, v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->requestInputScreen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1103
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Started keyboard edit mode"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    const-string v2, "start"

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardStartMethod:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, "eventTuple":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1107
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1108
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 1109
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->endInputSession()V

    .line 1110
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showKeyboardMode()V

    .line 1115
    .end local v1    # "eventTuple":Ljava/lang/String;
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not start keyboard mode"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0
.end method

.method private stopListening()V
    .locals 3

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 1351
    :goto_0
    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring stopListening() with null SpeechRecognizer."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private submitStreamingTextViewTextAsRecognitionResult()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1122
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Submitting current streaming text view text as recognition result"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    const-string v2, "finish"

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardFinishMethod:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->KEYBOARD_TEXT_ENTRY_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1127
    iput-boolean v6, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputSessionOpen:Z

    .line 1128
    iput-boolean v6, p0, Lcom/google/glass/voice/OpenEndedInputController;->isStreamingTextViewTextSubmitted:Z

    .line 1129
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v2}, Lcom/google/glass/voice/StreamingTextView;->getText()Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, "streamingText":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardModeTip:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v2}, Lcom/google/glass/voice/InputMode;->isSearchResponseExpected()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v2}, Lcom/google/glass/voice/InputMode;->isNavigationResponseExpected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1132
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Search or navigation response expected; resubmitting for final result"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    invoke-direct {p0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->sendDirectGwsRequest(Ljava/lang/String;)V

    .line 1137
    :goto_0
    return-void

    .line 1135
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forRecognitionResult(Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/voice/OpenEndedInputController;->sendOpenEndedInputMessage(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_0
.end method

.method private updateKeepScreenOn(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V
    .locals 2
    .param p1, "msg"    # Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .prologue
    .line 1997
    sget-object v0, Lcom/google/glass/voice/OpenEndedInputController$18;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    invoke-virtual {p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 2011
    :goto_0
    return-void

    .line 2000
    :sswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 2006
    :sswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 1997
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePowerHelper(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)V
    .locals 2
    .param p1, "msg"    # Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .prologue
    .line 1981
    sget-object v0, Lcom/google/glass/voice/OpenEndedInputController$18;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    invoke-virtual {p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1994
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1987
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->powerHelper:Lcom/google/glass/util/PowerHelper;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    goto :goto_0

    .line 1981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "stableText"    # Ljava/lang/CharSequence;
    .param p2, "pendingText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    .line 1612
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->disableModeSwitching()V

    .line 1614
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 1615
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1616
    .local v2, "stableCleaned":Ljava/lang/CharSequence;
    invoke-direct {p0, p2}, Lcom/google/glass/voice/OpenEndedInputController;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1618
    .local v1, "pendingCleaned":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1619
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1654
    .end local v1    # "pendingCleaned":Ljava/lang/CharSequence;
    .end local v2    # "stableCleaned":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1627
    .restart local v1    # "pendingCleaned":Ljava/lang/CharSequence;
    .restart local v2    # "stableCleaned":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1628
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v3, :cond_2

    .line 1629
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v3, v7}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 1630
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v3, v2, v1}, Lcom/google/glass/voice/StreamingTextView;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1635
    .end local v1    # "pendingCleaned":Ljava/lang/CharSequence;
    .end local v2    # "stableCleaned":Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->logFirstRecognizedText:Z

    if-eqz v3, :cond_4

    .line 1636
    iput-boolean v7, p0, Lcom/google/glass/voice/OpenEndedInputController;->logFirstRecognizedText:Z

    .line 1638
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1639
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "type"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    .line 1640
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1641
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1638
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1642
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    iget-wide v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 1643
    const-string v3, "time"

    iget-wide v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    .line 1644
    invoke-direct {p0, v4, v5}, Lcom/google/glass/voice/OpenEndedInputController;->getInterval(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1643
    invoke-static {v0, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1646
    :cond_3
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1651
    .end local v0    # "eventTuple":Ljava/lang/StringBuilder;
    :cond_4
    monitor-enter p0

    .line 1652
    :try_start_0
    iget v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionUpdatesCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionUpdatesCount:I

    .line 1653
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public activate()V
    .locals 5

    .prologue
    .line 770
    iget-boolean v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->isActivated:Z

    if-eqz v2, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->isActivated:Z

    .line 776
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 777
    .local v1, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->eyeGestureReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v2, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 778
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraButtonReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v2, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 779
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->initializeViewHierarchy()V

    .line 781
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->KTE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 782
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManager:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-virtual {v2}, Lcom/google/glass/voice/CompanionInputEntryManager;->activate()V

    .line 785
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    invoke-interface {v2}, Lcom/google/glass/voice/InputCorrectionController;->isReturningFromCorrection()Z

    move-result v2

    if-nez v2, :cond_3

    .line 786
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->initializeVoiceInput()V

    .line 788
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 790
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    invoke-interface {v2}, Lcom/google/glass/voice/InputCorrectionController;->isReturningFromCorrection()Z

    move-result v2

    if-nez v2, :cond_4

    .line 791
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->startNewInputSession()V

    goto :goto_0

    .line 793
    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    .line 794
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/glass/voice/InputCorrectionController;->resetAfterReturningFromCorrection(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 795
    .local v0, "recognitionEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    if-eqz v0, :cond_0

    .line 796
    invoke-direct {p0, v0}, Lcom/google/glass/voice/OpenEndedInputController;->sendOpenEndedInputMessage(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto :goto_0
.end method

.method captureOmniInputPhoto()Z
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 939
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "captureOmniInputPhoto"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/InputMode;->isOmniInputEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    sget-object v3, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->READY_FOR_CAMERA_BUTTON:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    if-eq v2, v3, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v0

    .line 945
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    invoke-interface {v2}, Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;->shouldCaptureOmniInputPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->disableModeSwitching()V

    .line 950
    sget-object v2, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->PROCESSING_PHOTO:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    invoke-direct {p0, v2}, Lcom/google/glass/voice/OpenEndedInputController;->setOmniInputState(Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;)V

    .line 951
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->cropMarksView:Lcom/google/glass/widget/CropMarksView;

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/CropMarksView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->cropMarksView:Lcom/google/glass/widget/CropMarksView;

    invoke-virtual {v0}, Lcom/google/glass/widget/CropMarksView;->play()V

    .line 953
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 955
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->hasRecognitionResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    iput-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->shouldCallOnDoneAfterPhoto:Z

    .line 959
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 960
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->stopListening()V

    .line 967
    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraClient:Lcom/google/glass/camera/CameraClientV1;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/camera/CameraClientV1;->takePicture(J)V

    move v0, v1

    .line 968
    goto :goto_0

    .line 964
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->endInputSession()V

    goto :goto_1
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 808
    iget-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->isActivated:Z

    if-nez v1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 812
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->isActivated:Z

    .line 814
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 815
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->eyeGestureReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 816
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->cameraButtonReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 818
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->KTE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManager:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-virtual {v1}, Lcom/google/glass/voice/CompanionInputEntryManager;->deactivate()Z

    .line 821
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->endInputSession()V

    .line 822
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 823
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->releaseCamera()V

    .line 824
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    invoke-interface {v1}, Lcom/google/glass/voice/InputCorrectionController;->deactivate()V

    goto :goto_0
.end method

.method public endInputSession()V
    .locals 2

    .prologue
    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputSessionOpen:Z

    .line 998
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->queuedEventsForTests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1000
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->cancelSpeechRecognition()V

    .line 1001
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 910
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->modeSliderView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 911
    .local v0, "currentView":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "currentView":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2076
    invoke-static {}, Lcom/google/glass/util/SystemServiceWrapper;->getInstance()Lcom/google/glass/util/SystemServiceWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 2077
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SystemServiceWrapper;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2078
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->contentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCorrectionController()Lcom/google/glass/voice/InputCorrectionController;
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    return-object v0
.end method

.method public final getCurrentMode()Lcom/google/glass/voice/InputMode;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    return-object v0
.end method

.method public final getEndOfSpeechTime()J
    .locals 2

    .prologue
    .line 1855
    iget-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->endOfSpeechTime:J

    return-wide v0
.end method

.method public getErrorOnConfirmRunnable(Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "response"    # Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    .prologue
    .line 1935
    iget-boolean v0, p1, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->isNetworkError:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/voice/OpenEndedInputController$15;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/OpenEndedInputController$15;-><init>(Lcom/google/glass/voice/OpenEndedInputController;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->speakAgainRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 1846
    iget-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    return-wide v0
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 2

    .prologue
    .line 2148
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getInputModes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InputMode;

    invoke-virtual {v0}, Lcom/google/glass/voice/InputMode;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getInputModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModes:Ljava/util/List;

    return-object v0
.end method

.method public getLoggingExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2162
    .local v0, "extraBundle":Landroid/os/Bundle;
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2163
    const-string v1, "endofSpeech"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->endOfSpeechTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2164
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2165
    return-object v0
.end method

.method public getQueuedEventsForTests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/OpenEndedInputEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->queuedEventsForTests:Ljava/util/List;

    return-object v0
.end method

.method public getRawRecognitionResult()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public declared-synchronized getRecognitionResultsCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1820
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultsCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionUpdatesCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1829
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionUpdatesCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecognizedTextLineCount()I
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->getLineCount()I

    move-result v0

    .line 1660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultDuration(Ljava/lang/String;)J
    .locals 14
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 2089
    const-wide/16 v0, 0x0

    .line 2090
    .local v0, "duration":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v2, v0

    .line 2103
    .end local v0    # "duration":J
    .local v2, "duration":J
    :goto_0
    return-wide v2

    .line 2093
    .end local v2    # "duration":J
    .restart local v0    # "duration":J
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    invoke-virtual {v4}, Lcom/google/glass/voice/InputMode;->shouldShowPostRecognitionGracePeriod()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2094
    const-wide/16 v4, 0x7d0

    const-wide v6, 0x40a7700000000000L    # 3000.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 2095
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x4061800000000000L    # 140.0

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-long v6, v6

    add-long v0, v4, v6

    :cond_1
    :goto_1
    move-wide v2, v0

    .line 2103
    .end local v0    # "duration":J
    .restart local v2    # "duration":J
    goto :goto_0

    .line 2096
    .end local v2    # "duration":J
    .restart local v0    # "duration":J
    :cond_2
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->KTE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->companionManager:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-virtual {v4}, Lcom/google/glass/voice/CompanionInputEntryManager;->isKeyboardModeAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    .line 2097
    invoke-virtual {v4}, Lcom/google/glass/voice/InputMode;->getEnableCorrections()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2098
    :cond_4
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Corrections available; getting confidence based result duration"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2101
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getConfidenceBasedResultDuration()J

    move-result-wide v0

    goto :goto_1
.end method

.method public getSanitizedRecognitionResult()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .prologue
    .line 1838
    iget-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    return-wide v0
.end method

.method public getTriggerMethod()I
    .locals 1

    .prologue
    .line 2057
    iget v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    return v0
.end method

.method public getVoiceInputCallback()Landroid/speech/RecognitionListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1792
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasRecognitionResult()Z
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetry()Z
    .locals 1

    .prologue
    .line 1931
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->isRetry:Z

    return v0
.end method

.method public isTakingPicture()Z
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->PROCESSING_PHOTO:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputState:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    sget-object v1, Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;->DISPLAYING_THUMBNAIL:Lcom/google/glass/voice/OpenEndedInputController$OmniInputState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    .line 1230
    invoke-interface {v1, p1, p2, p3}, Lcom/google/glass/voice/InputCorrectionController;->onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, "correctedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1232
    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    .line 1234
    :cond_0
    return-void
.end method

.method public onCameraButtonPressed(Z)Z
    .locals 2
    .param p1, "longPress"    # Z

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    if-nez v0, :cond_0

    .line 925
    const/4 v0, 0x0

    .line 931
    :goto_0
    return v0

    .line 928
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->captureOmniInputPhoto()Z

    move-result v0

    if-nez v0, :cond_2

    .line 929
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 931
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1037
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "On confirm entered"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPrefixText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedLowConfText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPostfixText:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    .line 1040
    invoke-virtual {v4}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v4

    sget-object v5, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    if-eq v4, v5, :cond_1

    move v4, v7

    :goto_0
    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    .line 1041
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1038
    invoke-interface/range {v0 .. v5}, Lcom/google/glass/voice/InputCorrectionController;->onConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v6

    .line 1042
    .local v6, "correctionStartedEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    if-eqz v6, :cond_2

    .line 1043
    invoke-direct {p0, v6}, Lcom/google/glass/voice/OpenEndedInputController;->sendOpenEndedInputMessage(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 1069
    :cond_0
    :goto_1
    return v7

    .end local v6    # "correctionStartedEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    :cond_1
    move v4, v8

    .line 1040
    goto :goto_0

    .line 1046
    .restart local v6    # "correctionStartedEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    :cond_2
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->KTE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1049
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->isStreamingTextViewTextSubmitted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->isFinalResultSent:Z

    if-eqz v0, :cond_4

    .line 1050
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_1

    .line 1051
    :cond_4
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->USING_KEYBOARD:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    if-eq v0, v1, :cond_5

    .line 1052
    const-string v0, "1"

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardStartMethod:Ljava/lang/String;

    .line 1053
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->startReviewMode()V

    goto :goto_1

    .line 1054
    :cond_5
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputSessionOpen:Z

    if-nez v0, :cond_0

    .line 1056
    const-string v0, "1"

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->keyboardFinishMethod:Ljava/lang/String;

    .line 1057
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 1058
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->submitStreamingTextViewTextAsRecognitionResult()V

    goto :goto_1

    .line 1063
    :cond_6
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    if-ne v0, v1, :cond_7

    .line 1064
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    move v7, v8

    .line 1065
    goto :goto_1

    .line 1069
    :cond_7
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->maybeAllowManualEndpointing()Z

    move-result v7

    goto :goto_1
.end method

.method public onDismiss(Z)V
    .locals 6
    .param p1, "isDismissedByUser"    # Z

    .prologue
    .line 1237
    iget-boolean v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->viewsInitialized:Z

    if-nez v1, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1242
    :cond_0
    if-eqz p1, :cond_1

    .line 1244
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1245
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1246
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1247
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1244
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1250
    .end local v0    # "eventTuple":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    invoke-interface {v1}, Lcom/google/glass/voice/InputCorrectionController;->onDismiss()V

    .line 1251
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->deactivate()V

    goto :goto_0
.end method

.method public receiveEvent(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1797
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1798
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "openEndedInputEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1799
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 1800
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 2152
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->deactivate()V

    .line 2153
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->activate()V

    .line 2154
    return-void
.end method

.method public setInputModeChangeListener(Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;)Lcom/google/glass/voice/OpenEndedInputController;
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputModeChangeListener:Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;

    .line 662
    return-object p0
.end method

.method public setOmniInputListener(Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;)Lcom/google/glass/voice/OpenEndedInputController;
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController;->omniInputListener:Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;

    .line 677
    return-object p0
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "promptText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2040
    iget-boolean v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->inputSessionOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 2041
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot set prompt text; outside of input session or no prompt view available."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2046
    :goto_0
    return-void

    .line 2045
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .param p1, "speechLevelSource"    # Lcom/google/glass/voice/network/SpeechLevelSource;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/AudioInputRelativeLayout;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 1609
    return-void
.end method

.method protected showFinalRecognitionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 10
    .param p1, "prefixText"    # Ljava/lang/String;
    .param p2, "lowConfText"    # Ljava/lang/String;
    .param p3, "postfixText"    # Ljava/lang/String;
    .param p4, "confidence"    # F
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1667
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResult:Ljava/lang/CharSequence;

    .line 1668
    iput p4, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultConfidence:F

    .line 1669
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->prompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_3

    .line 1671
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 1672
    invoke-direct {p0, p1}, Lcom/google/glass/voice/OpenEndedInputController;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPrefixText:Ljava/lang/String;

    .line 1673
    invoke-direct {p0, p2}, Lcom/google/glass/voice/OpenEndedInputController;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedLowConfText:Ljava/lang/String;

    .line 1674
    invoke-direct {p0, p3}, Lcom/google/glass/voice/OpenEndedInputController;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPostfixText:Ljava/lang/String;

    .line 1675
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPrefixText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedLowConfText:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPostfixText:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    .line 1678
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->hasTakenPicture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1681
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->postNoSpeechDetected()V

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPrefixText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedLowConfText:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedPostfixText:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController;->currentMode:Lcom/google/glass/voice/InputMode;

    iget v6, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultConfidence:F

    invoke-interface/range {v0 .. v6}, Lcom/google/glass/voice/InputCorrectionController;->maybeUnderlineLowConfidenceSegments(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/voice/InputMode;F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1686
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->USING_KEYBOARD:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    if-ne v0, v1, :cond_2

    .line 1687
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 1689
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->sanitizedRecognitionResult:Ljava/lang/CharSequence;

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/voice/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1693
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->correctionController:Lcom/google/glass/voice/InputCorrectionController;

    sget v0, Lcom/google/glass/common/R$id;->cancel_tip:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultConfidence:F

    invoke-interface {v1, v0, v2}, Lcom/google/glass/voice/InputCorrectionController;->maybeShowCorrectionHint(Landroid/widget/TextView;F)V

    .line 1696
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->showProgressOnRecognitionResult()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1697
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 1705
    :goto_1
    iget-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->endOfSpeechTime:J

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->getInterval(J)J

    move-result-wide v8

    .line 1709
    .local v8, "timeToRecognitionFromEndOfSpeech":J
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getCurrentMode()Lcom/google/glass/voice/InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/InputMode;->shouldPlayVoiceResultSound()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-wide v0, Lcom/google/glass/voice/OpenEndedInputController;->MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS:J

    cmp-long v0, v8, v0

    if-lez v0, :cond_4

    .line 1711
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 1716
    :cond_4
    const-string v0, "id"

    iget-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->id:J

    .line 1717
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "confidence"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1718
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "network"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 1719
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getNetworkTypeForLogging()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 1720
    invoke-direct {p0}, Lcom/google/glass/voice/OpenEndedInputController;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "trigger"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/google/glass/voice/OpenEndedInputController;->triggerMethod:I

    .line 1721
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1716
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1722
    .local v7, "eventTuple":Ljava/lang/StringBuilder;
    iget-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 1723
    const-string v0, "time_total"

    iget-wide v1, p0, Lcom/google/glass/voice/OpenEndedInputController;->startTime:J

    .line 1724
    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/OpenEndedInputController;->getInterval(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1723
    invoke-static {v7, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1726
    :cond_5
    iget-wide v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->endOfSpeechTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 1727
    const-string v0, "time_from_eos"

    .line 1729
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1727
    invoke-static {v7, v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1732
    :cond_6
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1735
    monitor-enter p0

    .line 1736
    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->recognitionResultsCount:I

    .line 1737
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->USING_KEYBOARD:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    if-ne v0, v1, :cond_0

    .line 1742
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->DONE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/OpenEndedInputController;->sendOpenEndedInputMessage(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    goto/16 :goto_0

    .line 1701
    .end local v7    # "eventTuple":Ljava/lang/StringBuilder;
    .end local v8    # "timeToRecognitionFromEndOfSpeech":J
    :cond_7
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1702
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    goto/16 :goto_1

    .line 1737
    .restart local v7    # "eventTuple":Ljava/lang/StringBuilder;
    .restart local v8    # "timeToRecognitionFromEndOfSpeech":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
