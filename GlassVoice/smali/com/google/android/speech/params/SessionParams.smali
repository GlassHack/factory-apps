.class public Lcom/google/android/speech/params/SessionParams;
.super Ljava/lang/Object;
.source "SessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/params/SessionParams$Builder;
    }
.end annotation


# static fields
.field private static final EMBEDDED_FALLBACK_TIMEOUT_DISABLED:I = -0x1

.field public static final MODE_CLOCKWORK:I = 0x9

.field public static final MODE_DICTATION:I = 0x3

.field public static final MODE_HANDS_FREE_COMMANDS:I = 0x5

.field public static final MODE_HANDS_FREE_CONTACTS:I = 0x4

.field public static final MODE_HOTWORD:I = 0x8

.field public static final MODE_INTENT_API:I = 0x0

.field public static final MODE_INVALID:I = -0x1

.field private static final MODE_MAX:I = 0x9

.field private static final MODE_MIN:I = 0x0

.field public static final MODE_SERVICE_API:I = 0x1

.field public static final MODE_SOUND_SEARCH_MUSIC:I = 0x6

.field public static final MODE_SOUND_SEARCH_TV:I = 0x7

.field public static final MODE_VOICE_ACTIONS:I = 0x2

.field public static final SPEAKER_MODE_ENROLLMENT:I = 0x1

.field public static final SPEAKER_MODE_NONE:I = 0x0

.field public static final SPEAKER_MODE_VERIFICATION:I = 0x2

.field private static final TIMEOUT_NO_SPEECH_DETECTED_MSEC:I = 0x4e20


# instance fields
.field private final mAlternatesEnabled:Z

.field private final mApplicationId:Ljava/lang/String;

.field private final mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

.field private final mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

.field private final mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

.field private final mIsStreamParsingEnabled:Z

.field private final mLocationOverride:Landroid/location/Location;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMaxNbest:I

.field private final mMaxRecordedAudioBufferSizeMs:I

.field private final mMinRecordedAudioBufferSizeMs:I

.field private final mMode:I

.field private final mNoSpeechDetectedEnabled:Z

.field private final mPartialResultsEnabled:Z

.field private final mProfanityFilterEnabled:Z

.field private final mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestId:Ljava/lang/String;

.field private final mResendingAudio:Z

.field private final mServerEndpointingEnabled:Z

.field private final mService:Ljava/lang/String;

.field private final mSoundSearchTtsEnabled:Z

.field private final mSpeakerMode:I

.field private final mSpokenBcp47Locale:Ljava/lang/String;

.field private final mStopOnEndOfSpeech:Z

.field private final mSuggestionsEnabled:Z

.field private final mTriggerApplication:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUseCircularBufferForRecordedAudio:Z

.field private final mUseMusicHotworder:Z


# direct methods
.method constructor <init>(ILcom/google/android/speech/params/AudioInputParams;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;ZIZZZZILandroid/location/Location;Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIZZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "audioInputParams"    # Lcom/google/android/speech/params/AudioInputParams;
    .param p3, "alternatesEnabled"    # Z
    .param p4, "resendingAudio"    # Z
    .param p5, "stopOnEndOfSpeech"    # Z
    .param p6, "spokenBcp47Locale"    # Ljava/lang/String;
    .param p7, "triggerApplication"    # Ljava/lang/String;
    .param p8, "greco3Grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p9, "greco3Mode"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p10, "useMusicHotworder"    # Z
    .param p11, "speakerMode"    # I
    .param p12, "noSpeechDetectedEnabled"    # Z
    .param p13, "partialResultsEnabled"    # Z
    .param p14, "profanityFilterEnabled"    # Z
    .param p15, "suggestionsEnabled"    # Z
    .param p16, "maxNbest"    # I
    .param p17, "locationOverride"    # Landroid/location/Location;
    .param p18, "recognitionContext"    # Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .param p19, "applicationId"    # Ljava/lang/String;
    .param p20, "requestId"    # Ljava/lang/String;
    .param p21, "service"    # Ljava/lang/String;
    .param p22, "soundSearchTtsEnabled"    # Z
    .param p23, "serverEndpointingEnabled"    # Z
    .param p24, "minRecordingBufferSizeMs"    # I
    .param p25, "maxRecordingBufferSizeMs"    # I
    .param p26, "useCircularRecordingBuffer"    # Z
    .param p27, "isStreamParsingEnabled"    # Z

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:I

    .line 120
    iput-object p2, p0, Lcom/google/android/speech/params/SessionParams;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    .line 121
    iput-boolean p3, p0, Lcom/google/android/speech/params/SessionParams;->mAlternatesEnabled:Z

    .line 122
    iput-boolean p4, p0, Lcom/google/android/speech/params/SessionParams;->mResendingAudio:Z

    .line 123
    iput-boolean p5, p0, Lcom/google/android/speech/params/SessionParams;->mStopOnEndOfSpeech:Z

    .line 124
    iput-object p6, p0, Lcom/google/android/speech/params/SessionParams;->mSpokenBcp47Locale:Ljava/lang/String;

    .line 125
    iput-object p7, p0, Lcom/google/android/speech/params/SessionParams;->mTriggerApplication:Ljava/lang/String;

    .line 126
    iput-object p8, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 127
    iput-object p9, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 128
    iput-boolean p10, p0, Lcom/google/android/speech/params/SessionParams;->mUseMusicHotworder:Z

    .line 129
    iput p11, p0, Lcom/google/android/speech/params/SessionParams;->mSpeakerMode:I

    .line 130
    iput-boolean p12, p0, Lcom/google/android/speech/params/SessionParams;->mNoSpeechDetectedEnabled:Z

    .line 131
    iput-boolean p13, p0, Lcom/google/android/speech/params/SessionParams;->mPartialResultsEnabled:Z

    .line 132
    iput-boolean p14, p0, Lcom/google/android/speech/params/SessionParams;->mProfanityFilterEnabled:Z

    .line 133
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mSuggestionsEnabled:Z

    .line 134
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/speech/params/SessionParams;->mMaxNbest:I

    .line 135
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mLocationOverride:Landroid/location/Location;

    .line 136
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 137
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mApplicationId:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRequestId:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mService:Ljava/lang/String;

    .line 140
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mSoundSearchTtsEnabled:Z

    .line 141
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mServerEndpointingEnabled:Z

    .line 142
    move/from16 v0, p24

    iput v0, p0, Lcom/google/android/speech/params/SessionParams;->mMinRecordedAudioBufferSizeMs:I

    .line 143
    move/from16 v0, p25

    iput v0, p0, Lcom/google/android/speech/params/SessionParams;->mMaxRecordedAudioBufferSizeMs:I

    .line 144
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mUseCircularBufferForRecordedAudio:Z

    .line 145
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mIsStreamParsingEnabled:Z

    .line 146
    return-void
.end method

.method public static isSoundSearch(I)Z
    .locals 4
    .param p0, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ltz p0, :cond_2

    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Unsupported mode"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method public static isVoiceDialerSearch(I)Z
    .locals 4
    .param p0, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ltz p0, :cond_2

    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Unsupported mode"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 66
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 65
    goto :goto_0
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    return-object v0
.end method

.method public getEmbeddedFallbackTimeout(Lcom/google/android/speech/SpeechSettings;)I
    .locals 2
    .param p1, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v0, v1, :cond_1

    .line 272
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v0

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEndpointerParams(Lcom/google/android/speech/SpeechSettings;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 2
    .param p1, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    iget v1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 297
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    iget-object v0, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 300
    .local v0, "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/speech/params/SessionParams;->mNoSpeechDetectedEnabled:Z

    if-nez v1, :cond_0

    .line 301
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setNoSpeechDetectedTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 303
    :cond_0
    return-object v0

    .line 282
    .end local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :pswitch_1
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    iget-object v0, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 283
    .restart local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    goto :goto_0

    .line 285
    .end local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :pswitch_2
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->intentApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    iget-object v0, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 286
    .restart local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    goto :goto_0

    .line 288
    .end local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :pswitch_3
    iget-boolean v1, p0, Lcom/google/android/speech/params/SessionParams;->mStopOnEndOfSpeech:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->serviceApi:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    iget-object v0, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 291
    .restart local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :goto_1
    goto :goto_0

    .line 288
    .end local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :cond_1
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->dictation:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    iget-object v0, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    goto :goto_1

    .line 294
    :pswitch_4
    invoke-interface {p1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->voiceSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    iget-object v0, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 295
    .restart local v0    # "endpointerParams":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getGreco3Grammar()Lcom/google/android/speech/embedded/Greco3Grammar;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    return-object v0
.end method

.method public getGreco3Mode()Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public getLocationOverride()Landroid/location/Location;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mLocationOverride:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/speech/params/SessionParams;->mMaxNbest:I

    return v0
.end method

.method public getMaxRecordedAudioBufferSizeMs()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/android/speech/params/SessionParams;->mMaxRecordedAudioBufferSizeMs:I

    return v0
.end method

.method public getMinRecordedAudioBufferSizeMs()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/google/android/speech/params/SessionParams;->mMinRecordedAudioBufferSizeMs:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/speech/params/SessionParams;->mMode:I

    return v0
.end method

.method public getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mService:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakerMode()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/google/android/speech/params/SessionParams;->mSpeakerMode:I

    return v0
.end method

.method public getSpokenBcp47Locale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mSpokenBcp47Locale:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/speech/params/SessionParams;->mTriggerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternatesEnabled()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mAlternatesEnabled:Z

    return v0
.end method

.method public isCombinedNbestEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 260
    iget v1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/speech/params/SessionParams;->mMode:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartialResultsEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mPartialResultsEnabled:Z

    return v0
.end method

.method public isProfanityFilterEnabled()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mProfanityFilterEnabled:Z

    return v0
.end method

.method public isResendingAudio()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mResendingAudio:Z

    return v0
.end method

.method public isServerEndpointingEnabled()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mServerEndpointingEnabled:Z

    return v0
.end method

.method public isSoundSearchTtsEnabled()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mSoundSearchTtsEnabled:Z

    return v0
.end method

.method public isStreamParsingEnabled()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mIsStreamParsingEnabled:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mSuggestionsEnabled:Z

    return v0
.end method

.method public shouldUseMusicHotworder()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mUseMusicHotworder:Z

    return v0
.end method

.method public stopOnEndOfSpeech()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mStopOnEndOfSpeech:Z

    return v0
.end method

.method public useCircularBufferForRecordedAudio()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/google/android/speech/params/SessionParams;->mUseCircularBufferForRecordedAudio:Z

    return v0
.end method
