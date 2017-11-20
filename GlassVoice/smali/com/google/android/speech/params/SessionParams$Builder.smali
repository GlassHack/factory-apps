.class public Lcom/google/android/speech/params/SessionParams$Builder;
.super Ljava/lang/Object;
.source "SessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/SessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_MAX_NBEST:I = 0x5

.field private static final MAX_RECORDING_BUFFER_MS:I = 0xea60

.field private static final MIN_RECORDING_BUFFER_MS:I = 0x2710

.field private static final SERVICE_CLOCKWORK:Ljava/lang/String; = "voicesearch-clockwork"

.field public static final SERVICE_HANDS_FREE_CONTACTS:Ljava/lang/String; = "voicesearch"

.field private static final SERVICE_RECOGNIZER:Ljava/lang/String; = "recognizer"

.field private static final SERVICE_SOUND_SEARCH_MUSIC:Ljava/lang/String; = "sound-search"

.field private static final SERVICE_SOUND_SEARCH_TV:Ljava/lang/String; = "sound-search-tv"

.field private static final SERVICE_VOICE_ACTIONS:Ljava/lang/String; = "voicesearch-web"


# instance fields
.field private mAlternatesEnabled:Z

.field private mApplicationId:Ljava/lang/String;

.field private mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

.field private mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

.field private mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

.field private mIsStreamParsingEnabled:Z

.field private mLocationOverride:Landroid/location/Location;

.field private mMaxNbest:I

.field private mMaxRecordingBufferSizeMs:I

.field private mMinRecordingBufferSizeMs:I

.field private mMode:I

.field private mNoSpeechDetectedEnabled:Z

.field private mPartialResultsEnabled:Z

.field private mProfanityFilterEnabled:Z

.field private mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

.field private mRequestId:Ljava/lang/String;

.field private mResendingAudio:Z

.field private mServerEndpointingEnabled:Z

.field private mService:Ljava/lang/String;

.field private mSoundSearchTtsEnabled:Z

.field private mSpeakerMode:I

.field private mSpokenBcp47Locale:Ljava/lang/String;

.field private mStopOnEndOfSpeech:Z

.field private mSuggestionsEnabled:Z

.field private mTriggerApplication:Ljava/lang/String;

.field private mUseCircularBuffer:Z

.field private mUseMusicHotworder:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:I

    .line 331
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mAlternatesEnabled:Z

    .line 332
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mResendingAudio:Z

    .line 333
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mStopOnEndOfSpeech:Z

    .line 334
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpokenBcp47Locale:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Grammar;->CONTACT_DIALING:Lcom/google/android/speech/embedded/Greco3Grammar;

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 338
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    iput-object v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 339
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mUseMusicHotworder:Z

    .line 340
    iput v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpeakerMode:I

    .line 342
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mNoSpeechDetectedEnabled:Z

    .line 343
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mPartialResultsEnabled:Z

    .line 344
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mProfanityFilterEnabled:Z

    .line 345
    iput-boolean v2, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSuggestionsEnabled:Z

    .line 346
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxNbest:I

    .line 354
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSoundSearchTtsEnabled:Z

    .line 357
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMinRecordingBufferSizeMs:I

    .line 358
    const v0, 0xea60

    iput v0, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxRecordingBufferSizeMs:I

    .line 359
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mUseCircularBuffer:Z

    .line 361
    iput-boolean v1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mIsStreamParsingEnabled:Z

    .line 365
    return-void
.end method

.method private createNewRequestId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    sget-object v0, Lcom/google/android/shared/util/IdGenerator;->INSTANCE:Lcom/google/android/shared/util/IdGenerator;

    invoke-virtual {v0}, Lcom/google/android/shared/util/IdGenerator;->getRandomId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/shared/util/IdGenerator;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultApplicationId(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 537
    packed-switch p0, :pswitch_data_0

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :pswitch_0
    const-string v0, "intent-api"

    .line 553
    :goto_0
    return-object v0

    .line 541
    :pswitch_1
    const-string v0, "service-api"

    goto :goto_0

    .line 546
    :pswitch_2
    const-string/jumbo v0, "voice-search"

    goto :goto_0

    .line 548
    :pswitch_3
    const-string/jumbo v0, "voice-ime"

    goto :goto_0

    .line 551
    :pswitch_4
    const-string v0, "hands-free"

    goto :goto_0

    .line 553
    :pswitch_5
    const-string v0, "now-tv"

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static getDefaultService(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 560
    packed-switch p0, :pswitch_data_0

    .line 579
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :pswitch_0
    const-string v0, "recognizer"

    .line 577
    :goto_0
    return-object v0

    .line 565
    :pswitch_1
    const-string/jumbo v0, "voicesearch"

    goto :goto_0

    .line 567
    :pswitch_2
    const-string/jumbo v0, "voicesearch-web"

    goto :goto_0

    .line 571
    :pswitch_3
    const-string v0, "recognizer"

    goto :goto_0

    .line 573
    :pswitch_4
    const-string v0, "sound-search"

    goto :goto_0

    .line 575
    :pswitch_5
    const-string v0, "sound-search-tv"

    goto :goto_0

    .line 577
    :pswitch_6
    const-string/jumbo v0, "voicesearch-clockwork"

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/speech/params/SessionParams;
    .locals 29

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    if-nez v1, :cond_0

    .line 369
    new-instance v1, Lcom/google/android/speech/params/AudioInputParams$Builder;

    invoke-direct {v1}, Lcom/google/android/speech/params/AudioInputParams$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/speech/params/AudioInputParams$Builder;->build()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    .line 371
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mApplicationId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:I

    invoke-static {v1}, Lcom/google/android/speech/params/SessionParams$Builder;->getDefaultApplicationId(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mApplicationId:Ljava/lang/String;

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:I

    invoke-static {v1}, Lcom/google/android/speech/params/SessionParams$Builder;->getDefaultService(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    .line 377
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mRequestId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/google/android/speech/params/SessionParams$Builder;->createNewRequestId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mRequestId:Ljava/lang/String;

    .line 380
    :cond_3
    new-instance v1, Lcom/google/android/speech/params/SessionParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mAlternatesEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mResendingAudio:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mStopOnEndOfSpeech:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpokenBcp47Locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mTriggerApplication:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mUseMusicHotworder:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpeakerMode:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mNoSpeechDetectedEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mPartialResultsEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mProfanityFilterEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mSuggestionsEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxNbest:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mLocationOverride:Landroid/location/Location;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mApplicationId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mRequestId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mSoundSearchTtsEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mServerEndpointingEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMinRecordingBufferSizeMs:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxRecordingBufferSizeMs:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mUseCircularBuffer:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/speech/params/SessionParams$Builder;->mIsStreamParsingEnabled:Z

    move/from16 v28, v0

    invoke-direct/range {v1 .. v28}, Lcom/google/android/speech/params/SessionParams;-><init>(ILcom/google/android/speech/params/AudioInputParams;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;ZIZZZZILandroid/location/Location;Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIZZ)V

    return-object v1
.end method

.method public setAlternatesEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "alternatesEnabled"    # Z

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mAlternatesEnabled:Z

    .line 408
    return-object p0
.end method

.method public setApplicationIdOverride(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
    .end annotation

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mApplicationId:Ljava/lang/String;

    .line 494
    return-object p0
.end method

.method public setAudioInputParams(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "audioInputParams"    # Lcom/google/android/speech/params/AudioInputParams;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mAudioInputParams:Lcom/google/android/speech/params/AudioInputParams;

    .line 403
    return-object p0
.end method

.method public setGreco3Grammar(Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "greco3Grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 433
    return-object p0
.end method

.method public setGreco3Mode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "greco3Mode"    # Lcom/google/android/speech/embedded/Greco3Mode;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mGreco3Mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 438
    return-object p0
.end method

.method public setIsStreamParsingEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "isStreamParsingEnabled"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mIsStreamParsingEnabled:Z

    .line 529
    return-object p0
.end method

.method public setLocationOverride(Landroid/location/Location;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "locationOverride"    # Landroid/location/Location;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mLocationOverride:Landroid/location/Location;

    .line 478
    return-object p0
.end method

.method public setMaxNbest(I)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "maxNbest"    # I

    .prologue
    .line 472
    iput p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxNbest:I

    .line 473
    return-object p0
.end method

.method public setMaxRecordedAudioBufferSizeMs(I)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "maxRecordingBuferSizeMs"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMaxRecordingBufferSizeMs:I

    .line 519
    return-object p0
.end method

.method public setMinRecordedAudioBufferSizeMs(I)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "minRecordingBuferSizeMs"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMinRecordingBufferSizeMs:I

    .line 514
    return-object p0
.end method

.method public setMode(I)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 396
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Unsupported mode"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 397
    iput p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mMode:I

    .line 398
    return-object p0

    .line 396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNoSpeechDetectedEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "noSpeechDetectedEnabled"    # Z

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mNoSpeechDetectedEnabled:Z

    .line 453
    return-object p0
.end method

.method public setPartialResultsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "partialResultsEnabled"    # Z

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mPartialResultsEnabled:Z

    .line 458
    return-object p0
.end method

.method public setProfanityFilterEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "profanityFilterEnabled"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mProfanityFilterEnabled:Z

    .line 463
    return-object p0
.end method

.method public setRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "recognitionContext"    # Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mRecognitionContext:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 483
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mRequestId:Ljava/lang/String;

    .line 488
    return-object p0
.end method

.method public setResendingAudio(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "resendingAudio"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mResendingAudio:Z

    .line 413
    return-object p0
.end method

.method public setServerEndpointingEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "serverEndpointingEnabled"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mServerEndpointingEnabled:Z

    .line 509
    return-object p0
.end method

.method public setServiceOverride(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mService:Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public setSoundSearchTtsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "soundSearchTtsEnabled"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSoundSearchTtsEnabled:Z

    .line 504
    return-object p0
.end method

.method public setSpeakerMode(I)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "speakerMode"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpeakerMode:I

    .line 448
    return-object p0
.end method

.method public setSpokenBcp47Locale(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "spokenBcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSpokenBcp47Locale:Ljava/lang/String;

    .line 423
    return-object p0
.end method

.method public setStopOnEndOfSpeech(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "stopOnEndOfSpeech"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mStopOnEndOfSpeech:Z

    .line 418
    return-object p0
.end method

.method public setSuggestionsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "suggestionsEnabled"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mSuggestionsEnabled:Z

    .line 468
    return-object p0
.end method

.method public setTriggerApplication(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "triggerApplication"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mTriggerApplication:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public setUseCircularBufferForRecordedAudio(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "useCircularBuffer"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mUseCircularBuffer:Z

    .line 524
    return-object p0
.end method

.method public setUseMusicHotworder(Z)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 0
    .param p1, "useMusicHotworder"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/google/android/speech/params/SessionParams$Builder;->mUseMusicHotworder:Z

    .line 443
    return-object p0
.end method
